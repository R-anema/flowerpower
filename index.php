<?php

include 'login.php';



?>

<!DOCTYPE html>
<html>
<form action="index.php" method="POST">

		<label> Username </label>
			<input id="username" value="" name="username" type="text" required="required"><br>

		<label> Password </label>
			<input id="password" value="" name="password" type="text" required="required"><br>

<input type="sumbit" name="login" value="login"><span>Login</span></button>
<a href="lostpsw.php"> Watchwoord veloren?</a>
<a href="signup.php"> Ik heb nog geen account.</a>

</form>
</html>
