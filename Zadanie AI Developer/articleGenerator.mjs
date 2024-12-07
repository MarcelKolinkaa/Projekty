import OpenAI from "openai"; // Importujemy bibliotekę OpenAI do komunikacji z API
import fs from "node:fs"; // Importujemy moduł do pracy z systemem plików
import path from "node:path"; // Importujemy moduł do pracy z ścieżkami plików


// Ładujemy klucz API z zmiennych środowiskowych
const yourApiKey = process.env.OPENAI_API_KEY;

// Definiujemy maksymalny rozmiar pliku wejściowego (10 MB)
const MAX_FILE_SIZE = 10 * 1024 * 1024; // 10 MB

// Funkcja do walidacji pliku wejściowego
function validateFile(filePath) {
  // Sprawdzamy, czy plik istnieje
  if (!fs.existsSync(filePath)) {
    console.error(`Error: The input file at ${filePath} does not exist.`);
    process.exit(1); // Zatrzymujemy program w przypadku błędu
  }

  // Pobieramy informacje o pliku
  const stats = fs.statSync(filePath);

  // Sprawdzamy, czy plik jest pusty
  if (stats.size === 0) {
    console.error(`Error: The input file at ${filePath} is empty.`);
    process.exit(1);
  }

  // Sprawdzamy, czy plik nie jest za duży
  if (stats.size > MAX_FILE_SIZE) {
    console.error(
      `Error: The input file at ${filePath} is too large. Maximum allowed size is ${MAX_FILE_SIZE / (1024 * 1024)} MB.`
    );
    process.exit(1);
  }

  // Wczytujemy zawartość pliku i sprawdzamy, czy jest poprawnie zakodowana w UTF-8
  const content = fs.readFileSync(filePath, "utf8");

  try {
    Buffer.from(content, "utf8").toString("utf8"); // Sprawdzamy poprawność kodowania UTF-8
  } catch (error) {
    console.error(`Error: The input file at ${filePath} is not UTF-8 encoded.`);
    process.exit(1);
  }

  return content; // Zwracamy zawartość pliku
}

// Funkcja do walidacji odpowiedzi API przed zapisaniem do pliku
function validateApiResponse(response) {
  // Sprawdzamy, czy odpowiedź API zawiera wymagane dane
  if (!response || !response.choices || !response.choices[0].message || !response.choices[0].message.content) {
    console.error("Error: Invalid API response format.");
    process.exit(1);
  }

  const content = response.choices[0].message.content.trim();

  // Sprawdzamy, czy odpowiedź nie jest pusta
  if (content.length === 0) {
    console.error("Error: The API response is empty.");
    process.exit(1);
  }

  // Dodatkowa walidacja treści odpowiedzi (np. na obecność nieodpowiednich słów)
  if (content.includes("some inappropriate content")) {
    console.error("Error: The API response contains inappropriate content.");
    process.exit(1);
  }

  return content; // Zwracamy zwalidowaną treść odpowiedzi
}

// Funkcja do wywołania API OpenAI
async function callOpenAI(apiKey, inputText) {
  try {
    // Tworzymy instancję klienta OpenAI z kluczem API
    const openai = new OpenAI({ apiKey });
    const userPrompt = `Format the following text into well-structured, semantic HTML, using the appropriate tags such as <header>, <main>, <article>, <section>, <h1>, <h2>, <p>, <i>, <footer>, and ensure accessibility and readability throughout.
    For each article section:
    1. Wrap each section's content with the <section> tag to ensure proper semantic structure.
    2. Each section should have its own heading using the <h2> tag.
    3. At the bottom of each section, add an <img> tag with a placeholder src (image_placeholder.jpg).
    4. Provide a descriptive alt attribute for each image, ensuring the description is detailed and contextually relevant to the content of the section. Include the background, setting, and atmosphere of the scene. For example, if the section is about AI in healthcare, the alt attribute could be: "A doctor using an AI-powered diagnostic tool to analyze medical scans in a hospital setting, showing the interaction between human and machine."
    5. Add a brief <p> tag directly below each image to describe what the image represents. The description should not just describe the image but also explain its relevance to the section's content.
    
    Ensure that:
    1. The entire content is wrapped in an <article> tag, as it represents the full article.
    2. The <header> tag should contain the main title of the article using an <h1> tag, providing a clear introduction to the content.
    3. Each section is clearly defined with proper <h2> headings.
    4. Include a <footer> tag at the bottom with the copyright notice or any additional relevant information.
    
    Under the <header> tag: 
    1. Generate a horizontal breadcrumb navigation menu with the following structure and characteristics:
    2. HTML Structure: Use <nav> for the container with a class "breadcrumbs".
    3. Links: Include three links labeled "Home", "AI", and "Wpływ i wyzwania".
    4. Separators: Use a <span> element with the text / as a separator between each link.
    Functionality: Ensure each breadcrumb link leads to a dummy # URL for now.
    
    Additional notes:
    - Be specific about the context of each image and ensure it aligns with the section's topic. Use the alt text to describe not only what is visible but also its relevance to the article.
    - Ensure that the <main> content is well-structured, easy to follow, and maintains a logical separation between sections.
    - Avoid hardcoding any content, and focus on creating clean, readable HTML that accurately reflects the article's themes and structure.
    - Maintain proper accessibility standards throughout, ensuring all content is usable and understandable, especially for screen readers.
    
    Here is the text to format:
    
    ${inputText}`;
    // Wysyłamy zapytanie do API
    const completion = await openai.chat.completions.create({
      model: "gpt-4",
      messages: [
        { role: "system", content: "Generate an HTML article Include only <body> and </body> content,do not include <head> and </head> content, do not cut any of the given text." },
        {
          role: "user",
          content: userPrompt,
        },
      ],
    });

    // Walidujemy odpowiedź z API przed jej zwróceniem
    const validContent = validateApiResponse(completion);

    return validContent; // Zwracamy przetworzoną treść HTML
  } catch (error) {
    console.error("Error while calling OpenAI API:", error.message);

    // Obsługa specyficznych błędów API
    if (error.response) {
      // Jeśli odpowiedź zawiera szczegóły błędu API
      console.error(`API Error: ${error.response.status} - ${error.response.data}`);
    }
    process.exit(1); // Zatrzymujemy program w przypadku błędu
  }
}

// Funkcja do zapisywania wygenerowanego HTML do pliku
function writeToFile(outputPath, content) {
  try {
    fs.writeFileSync(outputPath, content, "utf8");
    console.log(`Output successfully written to: ${outputPath}`);
  } catch (error) {
    console.error("Error while writing output file:", error.message);
    process.exit(1);
  }
}

// Funkcja do przetwarzania wielu plików wejściowych jednocześnie
async function processMultipleFiles(inputFolderPath, outputFolderPath) {
  // Pobieramy listę plików wejściowych z folderu
  const inputFiles = fs.readdirSync(inputFolderPath).filter(file => file.endsWith('.txt')); // Filtrujemy pliki .txt

  // Tworzymy tablicę z obietnicami dla każdego pliku, które będą przetwarzane równolegle
  const tasks = inputFiles.map(async (file) => {
    const inputFilePath = path.join(inputFolderPath, file);
    const outputFilePath = path.join(outputFolderPath, file.replace('.txt', '.html'));

    console.log(`Processing file: ${file}`);
    const inputText = validateFile(inputFilePath); // Walidujemy plik wejściowy

    console.log(`Generating HTML content for: ${file}`);
    const htmlContent = await callOpenAI(yourApiKey, inputText); // Generujemy HTML przez OpenAI

    console.log(`Writing HTML content for: ${file}`);
    writeToFile(outputFilePath, htmlContent); // Zapisujemy wynik do pliku
  });

  // Uruchamiamy wszystkie zadania równolegle
  await Promise.all(tasks);
}

// Funkcja główna
(async function main() {
  const inputFolderPath = path.resolve("input"); // Folder z plikami wejściowymi
  const outputFolderPath = path.resolve("artykul"); // Folder na wygenerowane pliki HTML

     // Sprawdzamy, czy folder wyjściowy istnieje, jeśli nie, tworzymy go
     if (!fs.existsSync(outputFolderPath)) {
      fs.mkdirSync(outputFolderPath, { recursive: true });
    }
  
  console.log("Processing multiple files...");
  await processMultipleFiles(inputFolderPath, outputFolderPath); // Rozpoczynamy równoczesne przetwarzanie plików
})();
