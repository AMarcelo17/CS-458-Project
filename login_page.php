<?php

function login_page()
{
    // create the desired Oracle log-in form
    ?>
    <div class="center">
        <h1 id="login_header">Login</h1> 

        <form method="post"
              action="<?= htmlentities($_SERVER['PHP_SELF'], 
                                       ENT_QUOTES) ?>">      
            <div class="text_field">
                <input type="text" name="username" required="required" />
                <span></span>
                <label> Username </label>
            </div>                      

            <div class="text_field">
                <input type="password" name="password" required="required" />
                <label> Password </label>
            </div>            

            <input type="submit" value="Submit" name="submitbutton" id="first_login" />
        </form>
    </div>
        <?php
}

?>