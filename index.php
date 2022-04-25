<?php

include './include/login.php';

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./assets/css/loginstyle.css">

    <title>LOGIN</title>
  </head>
  <body>
    <center>
      <div id="main">
        <h1>SIMPLE LOGIN</h1>
        <form class="" action="" method="post">
          <input type="text" name="username" class="text" autocomplete="off" placeholder="username" required><br><hr><br>
          <input type="password" name="password" class="text" placeholder="password" required><br><hr><br>
          <input type="Submit" name="submit" id="sub">
        </form>
      </div>
    </center>
  </body>
</html>
