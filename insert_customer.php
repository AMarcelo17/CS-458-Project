<?php

/*===
    by: Jesse Garcia
    last modified: 11/4/20
    Team 4
===*/


function insert_customer()
{
    if ( (! array_key_exists("username", $_POST)) or
         (! array_key_exists("password", $_POST)) or
         ($_POST["username"] == "") or
         ($_POST["password"] == "") or
         (! isset($_POST["username"])) or
         (! isset($_POST["password"])) )
    {
        destroy_and_exit("must enter a username and password!");
    }

    

    ?>
    <form method="post"
          action="<?= htmlentities($_SERVER['PHP_SELF'], 
                                   ENT_QUOTES) ?>" id="valueForm">
            <fieldset>
                <legend> Enter the following for Loyalty Sign up </legend>
                <label for="value1">
                        Enter your first name: </label>
                <input type="text" name="cust_fname"
                       id="value1" required="required" /> <br />

                <label for="value2">
                        Enter your last name: </label>
                <input type="text" name="cust_lname"
                       id="value2" required="required" /> <br />

                <label for="value3">
                        Enter your Phone Number: </label>
                <input type="number" name="cust_phone"
                       id="value3" required="required" /> <br />

                <label for="value4">
                        Insert your email: </label>
                <input type="text" name="cust_email"
                       id="value4" required="required" /> <br />
            </fieldset>
            <div class="sub_button">
                    <input type="submit" value="submit values" />
            </div>
        </form>
    <?php
}
?>

