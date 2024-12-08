<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadanie php</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Roboto', Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #f9f9f9;
        }

        header {
            background-color: #222;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-weight: 700;
            letter-spacing: 1px;
        }

        footer {
            background-color: #222;
            color: #ccc;
            text-align: center;
            padding: 10px;
            font-size: 0.9rem;
            margin-top: auto;
        }

        /* Layout wrapper to hold sidebar and main content */
        .container {
            display: flex;
            flex: 1;
        }
        
        #Lewy {
            width: 250px;
            background-color: #2c2c2c;
            padding: 20px;
        }

        #Lewy ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        #Lewy li {
            margin-bottom: 15px;
        }

        #Lewy a {
            text-decoration: none;
            color: #bbb;
            font-weight: 400;
            transition: color 0.3s ease;
        }

        #Lewy a:hover {
            color: #007bff;
        }

        #Prawy {
            flex: 1;
            padding: 20px;
            background: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 6px;
            margin: 20px;
        }

        h2 {
            margin-top: 0;
            font-weight: 700;
            color: #333;
            border-bottom: 2px solid #007bff;
            padding-bottom: 5px;
        }

        label {
            display: inline-block;
            width: 170px;
            margin-bottom: 10px;
            font-weight: 400;
        }

        input, select, textarea {
            display: inline-block;
            max-width: 300px;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-family: 'Roboto', Arial, sans-serif;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:hover, select:hover, textarea:hover {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.2);
        }

        button {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            margin-top: 10px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-top: 20px;
            border-radius: 6px;
            overflow: hidden;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }

        table thead {
            background-color: #007bff;
            color: #fff;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
        }

        table tbody tr:nth-child(even) {
            background-color: lightgrey ;
        }

        table tbody tr:hover {
            background-color: wheat;
        }

        table tr {
            transition: background-color 0.3s ease;
        }

        table, th, td {
            border: none;
        }

        /* Add a subtle highlight for bigMoney rows */
        .bigMoney {
            background-color: #ffe9e9;
        }

        #color1, #color2 {
            width: 50px;
            height: 40px;
            cursor: pointer;
        }

        /* Additional spacing and structure for form elements in #kontrolki */
        #kontrolki p {
            margin-bottom: 20px;
        }

        #kontrolki textarea {
            width: calc(100% - 180px);
            max-width: 300px;
            height: 80px;
            resize: vertical;
        }

        ol {
            margin-left: 20px;
        }

        /* Smooth transitions for hover states */
        a, input, select, textarea, button, table tr {
            transition:  0.3s ease, color 0.3s ease,  0.3s ease,  0.3s ease;
        }
        
        .wyszukiwarka{
            text-align: center;
        }
    </style>
</head>
<body>
    <?php
    ini_set('log_errors', 'On');
    ini_set('display_errors', 'Off');
    ini_set('error_reporting', E_ALL);
    define('WP_DEBUG', false);
    define('WP_DEBUG_LOG', true);
    define('WP_DEBUG_DISPLAY', false);
    ?>

    <header>
        <h1>Business Application</h1>
    </header>
    <div class="container">
        <div id="Lewy">
            <ul>
                <li><a href="#kontrolki">Różne kontrolki HTML</a></li>
                <li><a href="#pracownicy">Tabela Pracowników</a></li>
                <li><a href="#faktury">Tabela Faktur VAT</a></li>
                <li><a href="#delegacje">Tabela Delegacji BD</a></li>
                <li><a href="#kontrahenci">Dane Kontrahentów</a></li>
            </ul>
        </div>

        <div id="Prawy">
            <div id="kontrolki">
                <h2>Różne kontrolki HTML</h2>
                <p>
                    <label for="nip">NIP: </label>
                    <input type="text" id="nip" name="nip"><br>
                    <label for="regon">REGON: </label>
                    <input type="number" id="regon" name="regon"><br>
                    <label for="nazwa">NAZWA: </label>
                    <input type="text" id="nazwa" name="nazwa"><br>
                    <label for="data">DATA POWSTANIA: </label>
                    <input type="date" id="data" name="data"><br>
                    <label for="ulica">ULICA: </label>
                    <input type="text" id="ulica" name="ulica"><br>
                    <label for="dom">NUMER DOMU: </label>
                    <input type="text" id="dom" name="dom"><br>
                    <label for="mieszkanie">NUMER MIESZKANIA: </label>
                    <input type="text" id="mieszkanie" name="mieszkanie"><br>
                    <label for="uwagi">UWAGI: </label>
                    <textarea id="uwagi" name="uwagi"></textarea><br>
                </p>
                <label for="kolory">Kolory: </label>
                <select id="kolory" name="kolory">
                    <option>zielony</option>
                    <option>niebieski</option>
                    <option>szary</option>
                    <option>turkusowy</option>
                    <option>granatowy</option>
                    <option>czerwony</option>
                    <option>biały</option>
                </select><br><br>
           
                <ol>
                    <li>Element</li>
                    <li>Element</li>
                    <li>Element</li>
                </ol>
            </div>

            <div id="pracownicy">
                <h2>TABELA PRACOWNIKÓW</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Lp</th>
                            <th>Imię</th>
                            <th>Nazwisko</th>
                            <th>Stanowisko</th>
                            <th>Data zatrudnienia</th>
                            <th>Ilość dni urlopowych</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Marcel</td>
                            <td>Kolinka</td>
                            <td>Programista</td>
                            <td>1.08.2024</td>
                            <td>20</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Tadeusz</td>
                            <td>Kowalski</td>
                            <td>Informatyk</td>
                            <td>12.03.2021</td>
                            <td>20</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Dariusz</td>
                            <td>Nowak</td>
                            <td>Sprzątacz</td>
                            <td>26.04.2018</td>
                            <td>20</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Dawid</td>
                            <td>Andrzejak</td>
                            <td>Tester</td>
                            <td>15.12.2020</td>
                            <td>20</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Marlena</td>
                            <td>Juszczak</td>
                            <td>Analityk</td>
                            <td>23.06.2016</td>
                            <td>20</td>
                        </tr>
                    </tbody>
                </table>
                <label for="color1">Wybierz kolor 1:</label>
                <input type="color" id="color1" name="color1" value="">
                <label for="color2">Wybierz kolor 2:</label>
                <input type="color" id="color2" name="color2" value="">
                <button onclick="applyColors()">Zastosuj kolory</button>
            
                <script>
                    function applyColors() {
                        var color1 = document.getElementById('color1').value;
                        var color2 = document.getElementById('color2').value;
                        var rows = document.querySelectorAll('#pracownicy tbody tr');
                        for (var i = 0; i < rows.length; i++) {
                            if (i % 2 === 0) {
                                rows[i].style.backgroundColor = color1;
                            } else {
                                rows[i].style.backgroundColor = color2;
                            }
                        }
                    }
                </script>
            </div>

            <div id="faktury">
                <h2>TABELA Faktur VAT</h2>
                <table id="faktura"></table>
                <button onclick="applyGreen()">Zmień kolor wartosci netto powyżej 1000zł</button>
                <label for="vat">VAT: </label>
                <select id="vat" name="vat">
                    <option value="1">ZW</option>
                    <option value="1">NP.</option>
                    <option value="1">0%</option>
                    <option value="1.03">3%</option>
                    <option value="1.08">8%</option>
                    <option value="1.23" selected>23%</option>
                </select>
                <button onclick="applyvat()">Zastosuj VAT</button>

                <script>
                    var clickCounter = true;
                    function applyGreen() {
                        var greencolor = document.getElementsByClassName('bigMoney');
                        if (clickCounter) {
                            for (const element of greencolor) {
                                element.style.backgroundColor = "green";
                            }
                        } else {
                            for (const element of greencolor) {
                                element.style.backgroundColor = "";
                            }
                        }
                        clickCounter = !clickCounter;
                    }
                </script>
                <script>
                    var vat = document.getElementById("vat");
                    console.log(vat);
                </script>
            </div>

            <div id="delegacje">
                <h2>Tabela Delegacji BD</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Lp</th>
                            <th>Imię i Nazwisko</th>
                            <th>Data od</th>
                            <th>Data do</th>
                            <th>Miejsce wyjazdu</th>
                            <th>Miejsce przyjazdu</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $conn = mysqli_connect("127.0.0.1", "root", "", "marcelkolinka");
                        $zapytanie = "SELECT * from delegacje_bd";
                        $wynik = mysqli_query($conn, $zapytanie);

                        while ($row = mysqli_fetch_array($wynik)) {
                            echo <<<end
                            <tr>
                                <td>$row[0]</td>
                                <td>$row[1]</td>
                                <td>$row[2]</td>
                                <td>$row[3]</td>
                                <td>$row[4]</td>
                                <td>$row[5]</td>
                            </tr>
                            end;
                        }
                        ?>
                    </tbody>
                </table>
            </div>

            <div id="kontrahenci">
                <h2>Dane Kontrahentów</h2>
                <table>
                    <thead>
                        <tr>
                            <th>NIP</th>
                            <th>REGON</th>
                            <th>NAZWA</th>
                            <th>CZY_PŁATNIK_VAT?</th>
                            <th>ULICA</th>
                            <th>NUMER_DOMU</th>
                            <th>NUMER_MIESZKANIA</th>
                            <th>Akcja</th>
                        </tr>
                    </thead>
                    <tr>
                        <form action="add.php" method="post">
                            <td><input type="number" name="nip"></td>
                            <td><input type="number" name="regon"></td>
                            <td><input type="text" name="nazwa"></td>
                            <td><input type="checkbox" name="checkbox" value="1"></td>
                            <td><input type="text" name="ulica"></td>
                            <td><input type="number" name="numer_domu"> </td>
                            <td><input type="number" name="numer_mieszkania"></td>
                            <td><button>Dodaj Kontrahenta</button></td>
                        </form>
                    </tr>
                    <?php
                    $baza = new mysqli("127.0.0.1", "root", "", "marcelkolinka");
                    $search = isset($_GET['search']) ? $_GET['search'] : '';
                    $zapytanie = "SELECT `NIP`, `REGON`, `NAZWA`, `CZY_PŁATNIK_VAT?`, `ULICA`, `NUMER_DOMU`, `NUMER_MIESZKANIA` from `dane_kontrahentow` where `NIP` LIKE '%$search%' OR `REGON`LIKE '%$search%' OR `NAZWA`LIKE '%$search%' OR `CZY_PŁATNIK_VAT?`LIKE '%$search%' OR `ULICA` LIKE '%$search%' OR`NUMER_DOMU` LIKE '%$search%' OR  `NUMER_MIESZKANIA` LIKE '%$search%'";
                    $wynik = mysqli_query($conn, $zapytanie);

                    while ($row = mysqli_fetch_array($wynik)) {
                        echo "<tr>";
                        echo "<td>" . $row['NIP'] . "</td>";
                        echo "<td>" . $row['REGON'] . "</td>";
                        echo "<td>" . $row['NAZWA'] . "</td>";
                        if ($row['CZY_PŁATNIK_VAT?'] == 1) {
                            echo "<td>tak</td>";
                        } elseif ($row['CZY_PŁATNIK_VAT?'] == 0) {
                            echo "<td>Nie</td>";
                        } else {
                            echo "<td>błąd</td>";
                        }
                        echo "<td>" . $row['ULICA'] . "</td>";
                        echo "<td>" . $row['NUMER_DOMU'] . "</td>";
                        echo "<td>" . $row['NUMER_MIESZKANIA'] . "</td>";
                        echo "<td><form method='POST'>";
                        echo "<input type='hidden' name='NIP_DELETE' value='" . $row['NIP'] . "'>";
                        echo "<input type='submit' name='delete' value='Usuń'>";
                        echo "</form>";
                        echo "<form action='edycja.php' method='POST'>";
                        echo "<input type='hidden' name='NIP_edit' value='" . $row['NIP'] . "'>";
                        echo "<input type='submit' name='edit' value='Edytuj'>";
                        echo "</form></td>";
                        echo "</tr>";
                    }

                    if (isset($_POST['delete'])) {
                        $nip_to_delete = $_POST['NIP_DELETE'];
                        $delete_query = "DELETE FROM dane_kontrahentow WHERE NIP = $nip_to_delete";
                        if ($baza->query($delete_query) === TRUE) {
                            echo "<meta http-equiv='refresh' content='0'>";
                        } else {
                            echo "Błąd podczas usuwania rekordu: " . $baza->error;
                        }
                    }


                    $conn->close();
                    ?>
                </table>
                <div class="wyszukiwarka">
                <form method="GET">
                        <label>Wyszukaj Kontrahenta:</label>
                        <br>
                        <input type="text" name="search">
                        <br>
                        <input type="submit" value="Szukaj">
                    </form>
            </div>
            </div>
        </div>
    </div>

    <footer>
       zadaniephp
    </footer>

    <script>
        const faktury = [
            {
                opis: "Usługa IT",
                mpk: "123",
                kwotaNetto: 1500.00,
                ilosc: 1
            },
            {
                opis: "Sprzedaż oprogramowania",
                mpk: "450",
                kwotaNetto: 400.00,
                ilosc: 10
            },
            {
                opis: "Naprawa sprzętu",
                mpk: "720",
                kwotaNetto: 1100.00,
                ilosc: 2
            },
            {
                opis: "Serwis",
                mpk: "101",
                kwotaNetto: 300.00,
                ilosc: 3
            },
            {
                opis: "Konsultacja",
                mpk: "202",
                kwotaNetto: 300.00,
                ilosc: 1
            }
        ];

        var vat = 1.23;

        function applyvat() {
            vat = document.getElementById('vat').value;
            drawtable();
        }

        var vatArr = document.getElementById('vat');

        function drawtable() {
            let faktura = document.getElementById("faktura");
            faktura.innerHTML = "";
            let thead = document.createElement('thead');
            thead.innerHTML = `
                <tr>
                    <th>Lp</th>
                    <th>Opis</th>
                    <th>MPK</th>
                    <th>Kwota Netto</th>
                    <th>Ilość</th>
                    <th>VAT</th>
                    <th>Kwota Brutto</th>
                    <th>Wartość Netto</th>
                    <th>Wartość Brutto</th>
                </tr>`;
            faktura.appendChild(thead);
            let tbody = document.createElement('tbody');
            let index = 1;
            faktury.forEach(element => {
                let vatMath = element.kwotaNetto * vat;
                let isBigMoney = (element.kwotaNetto * element.ilosc) > 1000;
                let bigMoney = isBigMoney ? "class='bigMoney'" : "";
                tbody.innerHTML += `<tr ${bigMoney}>
                                        <td>${index}</td>
                                        <td>${element.opis}</td>
                                        <td>${element.mpk}</td>
                                        <td>${element.kwotaNetto}</td>
                                        <td>${element.ilosc}</td>
                                        <td>${vatArr.options[vatArr.selectedIndex].textContent}</td>
                                        <td>${vatMath.toFixed(2)}</td>
                                        <td>${(element.kwotaNetto * element.ilosc).toFixed(2)}</td>
                                        <td>${(vatMath * element.ilosc).toFixed(2)}</td>
                                    </tr>`;
                index++;
            });
            faktura.appendChild(tbody);
        }

        drawtable();
    </script>
</body>
</html>
