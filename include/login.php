<?php

require_once "connection.php";
//
// if (isset($_POST['submit'])) {
//   $u = $_POST['username'];
//   $p = $_POST['password'];
//
//   $sql = mysqli_query("Select password from user where username ='$u'");
//   if ($row = mysqli_fetch_array($sql)) {
//     if ($p == $row['password']) {
//       header("location: ./supervisor/homepage.php");
//       exit();
//     }else {
//         echo "<script>alert('Invalid password')</script>";
//     }
//   }else {
//     echo "<script>alert('Invalid username')</script>";
//   }
// }

// require_once "../connection.php";

if (isset($_POST["submit"])) {
  $u = $_POST['username'];
  $p = $_POST['password'];

  $query = "SELECT * FROM supervisor WHERE sv_username = '$u'";

  $result = mysqli_query($conn, $query);

  if (mysqli_num_rows($result) > 0) {

    $row = mysqli_fetch_array($result);

    if ($p == $row['sv_password']) {
      // setcookie('username', $row["username"], time() + (86400 * 1), "/");
      // session_start();
      // $_SESSION['LoginUser'] = $row["Cust_Fname"];
      // $_SESSION['Cust_ID'] = $row["Cust_ID"];
      header('Location: ./supervisor/homepage.php');
    }else {
      echo "<script>alert('Invalid password')</script>";
    }
  }else {
    echo "<script>alert('Invalid username')</script>";
  }
}

?>
