<?php 
	
	define("DB_SERVER", "localhost");
	define("DB_USER","widget_cms");
	define("DB_PASS","secretpassword");
	define("DB_NAME","widget_crop");
	$connection=mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
	// Test connectivity
	if(mysqli_connect_errno()){
		die("Database connection faild".
			mysqli_connect_error().
				"(".mysqli_connect_errno().")"
	);
}
?>