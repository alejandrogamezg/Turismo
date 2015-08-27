<?PHP
$hostname_localhost ="localhost";
$database_localhost ="turismo";
$username_localhost ="root";
$password_localhost ="";
$localhost = mysql_connect($hostname_localhost,$username_localhost,$password_localhost)
or
trigger_error(mysql_error(),E_USER_ERROR);
 
mysql_select_db($database_localhost, $localhost);
$query_search = "select * from personas order by dni";
$query_exec = mysql_query($query_search) or die(mysql_error());
while($row = mysql_fetch_array($query_exec)){
	echo $row['nombre']." <br>".$row['dni']." <br>".$row['telefono']." <br>".$row['email']."/";
	}
?>