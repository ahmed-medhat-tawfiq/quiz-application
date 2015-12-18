<?php 
	
	define("DB_SERVER", "localhost");
	define("DB_USER","root");
	define("DB_PASS","");
	define("DB_NAME","quiz");
	$connection=mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
	// Test connectivity
	if(mysqli_connect_errno()){
		die("Database connection faild".
			mysqli_connect_error().
				"(".mysqli_connect_errno().")"
	);
}
?>
