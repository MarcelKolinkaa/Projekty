<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    <?php

    if (isset($_POST['nip'])) {

        $NIP = $_POST['nip'];
        $REGON = $_POST['regon'];
        $nazwa = $_POST['nazwa'];
        $checkbox = $_POST['checkbox'];
        $ulica = $_POST['ulica'];
        $numer_domu = $_POST['numer_domu'];
        $numer_mieszkania = $_POST['numer_mieszkania'];
        $baza = new mysqli("127.0.0.1", "root", "", "marcelkolinka");
        $zapytanie = "INSERT INTO `dane_kontrahentow` (`NIP`, `REGON`, `NAZWA`, `CZY_PŁATNIK_VAT?`, `ULICA`, `NUMER_DOMU`, `NUMER_MIESZKANIA`) values ('$NIP', '$REGON','$nazwa','$checkbox','$ulica','$numer_domu','$numer_mieszkania')";
        $wynik = $baza->query($zapytanie);
        $baza->close();

        echo "<h2>Rekrody dodane do bazy danych</h2>";
    } else {
        echo "dane zle wprowadzone";
    }







    ?>

    <a href="glowna.php">Powrot do glownej strony</a>
</body>

</html>