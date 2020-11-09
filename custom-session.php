<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<!--
    
    by: Jesse Garcia
    last modified: 11/4/2020

    can run using the URL:
    https://nrs-projects.humboldt.edu/~jg3491/projectSql/custom-session.php
-->

<head>
    <title> testing </title>
    <meta charset="utf-8" />

    <?php
        require_once("login_page.php");
        require_once("hsu_conn_sess.php");
        require_once("insert_customer.php");
        require_once("insert_stmt.php");
        require_once("destroy_and_exit.php");

    ?>

    <link href="458Project.css"
          type="text/css" rel="stylesheet" />
</head>

<body>
    <h1> Testing Project </h1>
    <h2> Lets goooooo </h2>
    
    <?php
    if (! array_key_exists('next-stage', $_SESSION))
    {
        login_page();
        $_SESSION['next-stage'] = "insert_customer";
    }

    elseif ($_SESSION['next-stage'] == "insert_customer")
    {
        $username = strip_tags($_POST["username"]);

        $password = $_POST["password"];
    
        $_SESSION["username"] = $username;
        $_SESSION["password"] = $password;
        insert_customer();
        $_SESSION['next-stage'] = "insert_stmt";
    }

    elseif ($_SESSION['next-stage'] == "insert_stmt")
    {
        insert_stmt();
        session_destroy();
    }

    else
    {
        ?>
        <p> <strong> YIKES! I am not a code php code maker! </strong> </p>
        <?php

        session_destroy();
        session_regenerate_id(TRUE);
        session_start();
     
        create_login();
        $_SESSION['next-stage'] = "insert_customer";
    }

    require_once("328footer.html");
?>


</body>
</html>

