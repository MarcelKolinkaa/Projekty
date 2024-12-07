<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    $nip_send = $_POST['NIP_edit'];
    $baza = mysqli_connect("127.0.0.1", "root", "", "marcelkolinka");
    if (isset($_POST['edit'])) {
        $nipedit = "SELECT * from `dane_kontrahentow` where `NIP` = '$nip_send'";
        $wynik = mysqli_query($baza, $nipedit);
        while ($row = mysqli_fetch_array($wynik)) {

            $check = $row[3] == 0 ? "" : "checked";
            echo <<<end
        <Form action="postedycja.php" method="POST">
        <label for='nip_edit'>NIP</label>
        <input required type="number" id="nip_edit" name="nip_edit" value="$row[0]">
        <label for='regon_edit'>REGON</label>
        <input required type="number" id="regon_edit" name="regon_edit" value="$row[1]">
        <label for='nazwa_edit'>NAZWA</label>
        <input required type="text" id="nazwa_edit" name="nazwa_edit" value="$row[2]">
        <label for='checkbox_edit'>CZY_PŁATNIK_VAT?</label>
        <input type="checkbox" id="checkbox_edit" name="checkbox_edit" value="1" $check>
        <label for='ulica_edit'>ULICA</label>
        <input required type="text" id="ulica_edit" name="ulica_edit" value="$row[4]">
        <label for='numer_domu_edit'>NUMER_DOMU</label>
        <input required type="number" id="numer_domu_edit" name="numer_domu_edit" value="$row[5]">
        <label for='numer_mieszkania_edit'>NUMER_MIESZKANIA</label>
        <input required type="number" id="numer_mieszkania_edit" name=numer_mieszkania_edit value="$row[6]">
        <input type="hidden" name="nip_przeslanie" value='$nip_send'>
        <input type='submit' name='edits' value='edytuj'>
        </Form>
        end;
        }
    }


    ?>





</body>

</html>