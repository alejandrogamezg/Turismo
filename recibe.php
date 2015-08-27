<?php




$hostname_localhost ="localhost";
$database_localhost ="turismo";
$username_localhost ="root";
$password_localhost ="";
$IdImagen = $_POST['id_imagen'];
$localhost = mysql_connect($hostname_localhost,$username_localhost,$password_localhost)
or
trigger_error(mysql_error(),E_USER_ERROR);

mysql_select_db($database_localhost, $localhost);
$query_search = "select * from lugares where id = '$IdImagen'";

$query_exec = mysql_query($query_search) or die(mysql_error());

while($row = mysql_fetch_array($query_exec)){
	echo $row['id']."<br>".utf8_encode($row['nombre'])."<br>".utf8_encode($row['ubicacion'])."<br>".utf8_encode($row['inagurado'])."<br>".utf8_encode($row['gobernador'])."<br>".utf8_encode($row['descripcion'])."<br>".utf8_encode($row['escultor']);

   
	}

?>