<?php
if (isset($_FILES['image'])) {
    $errors = array();
    $file_name = $_FILES['image']['name'];
    $file_size = $_FILES['image']['size'];
    $file_tmp = $_FILES['image']['tmp_name'];
    $file_type = $_FILES['image']['type'];
    $file_ext = strtolower(end(explode('.', $_FILES['image']['name'])));
    $total_count = count($_FILES['upload']['name']);

    $extensions = array("jpeg", "jpg", "png", "webp", "gif");

    if (in_array($file_ext, $extensions) === false) {
        $errors[] = "extension not allowed, please choose a JPEG or PNG file.";
    }

    if ($file_size > 2097152) {
        $errors[] = 'File size must be excately 2 MB';
    }

    if (empty($errors) == true) {
        move_uploaded_file($file_tmp, "img/" . $file_name);
        echo "Success";
    } else {
        print_r($errors);
    }
}
?>
<html>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" />
    <style>
        .preview-img {
            max-width: 150px;
            margin: 0 1em 1em 0;
            padding: 0.5em;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
    </style>
</head>

<body>

    <form action="" method="POST" enctype="multipart/form-data" id="yourregularuploadformId">
        <input name="upload[]" type="file" name="image" multiple class="form-control mb-4" />
        <div class="preview"></div>
        <input type="submit" />
    </form>
</body>

</html>