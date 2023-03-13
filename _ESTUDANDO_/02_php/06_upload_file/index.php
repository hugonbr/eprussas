<!DOCTYPE html>
<html>
    <head>
        <title>TESTE</title>
        <style>
            * {
                font-size: 1.5rem;
                text-align: center;
            }
        </style>
    </head>
<body>

<form action="upload.php" method="post" enctype="multipart/form-data">
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload Image" name="submit">
</form>

</body>
</html>
