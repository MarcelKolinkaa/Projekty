Strona internetowa zawiera dwie tabele połączone z bazą danych. Pierwsza tabela wyciaga dane z bazy danych druga wyciaga dane z bazy danych i umożliwia wyszukiwanie danych oraz dodawanie, edytowanie i usuwanie rekordów. Na stronie znajduje się również interaktywna tabela z podstawową funkcjonalnością JavaScript, która dynamicznie zmienia kolor tła wierszy oraz umożliwia modyfikację wartości procentowych VAT.


1.Zainstaluj aplikację XAMPP
Pobierz i zainstaluj aplikację XAMPP. Następnie uruchom w niej moduły Apache oraz MySQL.

2.Importuj bazę danych
a. Otwórz przeglądarkę i przejdź do adresu: http://localhost/phpmyadmin/.
b. W panelu phpMyAdmin utwórz nową bazę danych o nazwie marcelkolinka.
c. Zaimportuj plik marcelkolinka.sql, który powinien zawierać dwie tabele:
delegacje_bd
dane_kontrahentow

3.Przygotuj plik projektu
a. Utwórz folder z projektem w katalogu htdocs w katalogu instalacyjnym XAMPP (np. C:/xampp/htdocs/).
b. Umieść pliki projektu w utworzonym folderze.

4.Uruchom stronę
a. Otwórz przeglądarkę i przejdź pod adres: http://localhost/.
b. Dodaj do adresu nazwę swojego folderu z projektem, np.: http://localhost/nazwa_twojego_folderu/.

Strona powinna teraz być dostępna. Jeśli wystąpią problemy, upewnij się, że Apache i MySQL są uruchomione w panelu XAMPP, a struktura bazy danych zgadza się z wymaganą.






