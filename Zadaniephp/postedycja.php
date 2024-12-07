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

    $baza = new mysqli("127.0.0.1", "root", "", "marcelkolinka");
    $NIPE = $_POST['nip_edit'];
    $REGONE = $_POST['regon_edit'];
    $nazwa = $_POST['nazwa_edit'];
    $checkbox = $_POST['checkbox_edit'];
    $ulica = $_POST['ulica_edit'];
    $numer_domu = $_POST['numer_domu_edit'];
    $numer_mieszkania = $_POST['numer_mieszkania_edit'];
    $nip_to_update = $_POST['nip_przeslanie'];



    if (isset($_POST['edits'])) {
        $update_query = "UPDATE `dane_kontrahentow` set `NIP` = '$NIPE', `REGON` = '$REGONE', `NAZWA`='$nazwa',`CZY_PŁATNIK_VAT?` = '$checkbox', `ULICA`='$ulica', `NUMER_DOMU`='$numer_domu',`NUMER_MIESZKANIA`='$numer_mieszkania' WHERE `NIP` = '$nip_to_update';";
        if ($baza->query($update_query) === TRUE) {
            echo "Dane poprawnie zedytowane";
        } else {
            echo "Błąd podczas edytowania rekordu: " . $baza->error;
        }
    }


    $baza->close();
    ?>

    <a href="glowna.php">Powrot do glownej strony</a>


</body>

</html>