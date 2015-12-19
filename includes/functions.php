<?php
include("db_connection.php");
/* here we will write all funtions and sql quires */


?>

<?php
  $connection=0; 
  function dbconnect($dbhost, $dbuser, $dbpass, $dbname)
	{ global $connection;
	  $connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
	  if(mysqli_connect_errno()){
		  die("Database connection failed:".mysqli_connect_error()."(".mysqli_connect_errno().")");
	}}
  function closeconnect()
	{global $connection;
	 mysqli_close($connection);}
	
?>
