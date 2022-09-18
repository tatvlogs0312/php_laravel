<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $result = "";
    if(isset($_POST["a"]) && isset($_POST["b"])){
        if($_POST["a"] == 0 && $_POST["b"] == 0){
            $result = "Phương trình vô số nghiệm";
        }
        else if($_POST["a"] == 0 && $_POST["b"] != 0){
            $result = "Phương trình vô nghiệm";
        }
        else{
            $result = - ($_POST["b"]) / ($_POST["a"]);
        }
    }
    ?>
    <h2>Html form</h2>

    <form action="" method="post">
        <label for="a">a : </label>
        <input type="text" id="a" name="a" value="">
        <br>
        <br>
        <label for="b">b : </label>
        <input type="text" id="b" name="b" value="">
        <br>
        <br>
        <input type="submit">
    </form>

    <div>
        <?= $result?>
    </div>
</body>
</html>