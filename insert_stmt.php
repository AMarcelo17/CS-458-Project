<?php
    /*---
        by: Jesse Garcia
        last modified: 11/4/20
        Team 4
    ---*/

    function insert_stmt()
    {
        if ( (! array_key_exists("cust_fname", $_POST)) or
             ($_POST["cust_fname"] == "") or
             (! isset($_POST["cust_fname"])) )
        {
            destroy_and_exit("must insert a First Name!");
        }
        elseif ( (! array_key_exists("cust_lname", $_POST)) or
             ($_POST["cust_lname"] == "") or
             (! isset($_POST["cust_lname"])) )
        {
            destroy_and_exit("must insert a Last Name!");
        }
        elseif ( (! array_key_exists("cust_phone", $_POST)) or
             ($_POST["cust_phone"] == "") or
             (! isset($_POST["cust_phone"])) )
        {
            destroy_and_exit("must insert a phone number!");
        }
        elseif ( (! array_key_exists("cust_email", $_POST)) or
             ($_POST["cust_email"] == "") or
             (! isset($_POST["cust_email"])) )
        {
            destroy_and_exit("must insert a Customer Email!");
        }
        
        $username = $_SESSION["username"];
        $password = $_SESSION["password"];
            
        $conn = hsu_conn_sess($username, $password);

        $cus_fname = trim(htmlspecialchars($_POST['cust_fname']));
        $cus_lname = trim(htmlspecialchars($_POST['cust_lname']));
        $cus_pho = trim(htmlspecialchars($_POST['cust_phone']));
        $cus_email = trim(htmlspecialchars($_POST['cust_email']));

        ?>
        
        <p> [<?= $cus_fname ?>] </p>
        <p> [<?= $cus_lname ?>] </p>
        <p> [<?= $cus_pho ?>] </p>
        <p> [<?= $cus_email ?>] </p>
        <?php
        
        $adding_cus = "begin project_insert(:cust_fname, :cust_lname, :cust_phone, :cust_email); end; ";
            
        $somethingcool = oci_parse($conn, $adding_cus);
        
        oci_bind_by_name($somethingcool, ":cust_fname", $cus_fname);
        oci_bind_by_name($somethingcool, ":cust_lname", $cus_lname);
        oci_bind_by_name($somethingcool, ":cust_phone", $cus_pho);
        oci_bind_by_name($somethingcool, ":cust_email", $cus_email);
        
        oci_execute($somethingcool, OCI_DEFAULT);
            
        oci_commit($conn);
        
        oci_free_statement($somethingcool);
        
        $outputting_stmt = "select *
                            from Customer";
        
        $somethingcoolpart2 = oci_parse($conn, $outputting_stmt);
        
        oci_execute($somethingcoolpart2, OCI_DEFAULT);
        
        ?>        
        <p> <a href="<?= htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES) ?>">
            Start Over </a> </p>
        <?php
        
        
        oci_free_statement($somethingcoolpart2);
        
        oci_close($conn);
    }
?>
        