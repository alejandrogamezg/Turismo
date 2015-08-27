<?PHP
$hostname_localhost ="localhost";  //nuestro servidor
$database_localhost ="turismo";//Nombre de nuestra base de datos
$username_localhost ="root";//Nombre de usuario de nuestra base de datos (yo utilizo el valor por defecto)
$password_localhost ="";//Contraseña de nuestra base de datos (yo utilizo por defecto)
$localhost = mysql_connect($hostname_localhost,$username_localhost,$password_localhost)//Conexión a nuestro servidor mysql
or
trigger_error(mysql_error(),E_USER_ERROR); //mensaaje de error si no se puede conectar
mysql_select_db($database_localhost, $localhost);//seleccion de la base de datos con la qu se desea trabajar

//variables que almacenan los valores que enviamos por nuestra app, (observar que se llaman igual en nuestra app y aqui)
$id=$_POST['id'];
$nombre=$_POST['nombre'];
$ubicacion=$_POST['ubicacion'];
$inagurado=$_POST['inagurado'];
$gobernador=$_POST['goberbador'];
$descripcion=$_POST['descripcion'];
$escultor=$_POST['escultor'];

$query_search = "insert into lugares(id,nombre,ubicacion,inagurado,goberbador,descripcion,escultor) 
values ('".$id."','".$nombre."','".$ubicacion."','".$inagurado."','".$goberbador."',
'".$descripcion."','".$escultor."')";//Sentencia sql a realizar
$query_exec = mysql_query($query_search) or die(mysql_error());//Ejecuta la sentencia sql.
?>
