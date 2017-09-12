<?php
	//boaz_debug
	include "mysql_connect.php";

	$insert_user = $link->prepare("INSERT INTO login_user (username, password, name, email, account_type, college, profile, reference) VALUES (?,?,?,?,?,?,?,?)");
	$insert_user->bind_param("ssssssii",$username, $crypted, $name, $email, $account_type, $college, $profile, $reference);
	$select_query = $link->prepare("SELECT * FROM login_user WHERE username = ? AND password = ?");
	$select_query->bind_param("ss",$username,$crypted);

	$audit_query = $link->prepare("INSERT INTO audit_trail (user_id, action) VALUES (?,?)");
    $audit_query->bind_param("is", $tempo_id, $action);

	$username = "simbahayan_admin";
	$password = "admin";
	$crypted = crypt($password,"!@#$%Simbayahan^&*()");

	$name = "Ramen Nagi";
	$email = "sample@ust-iics.mygbiz.com";
	$account_type = "administrator";
	$college = "iics";
	$profile = 1;
	$reference = 0;
	
	$tempo_id = 0;
	$action = "boaz_debug file loaded.";

	$insert_user->execute();
	$select_query->execute();
	$audit_query->execute();
	$select_query->store_result();
	$if_exists = $select_query->num_rows;

	echo "if_exists count num row = " . $if_exists . "<br><br>";

	echo "mysqli error: (if blank then none)" . mysqli_error($link) . "<br>";

	if(!$link){
		echo "<center>Connection not established, please check your code.<br>";
		// echo "<a href='http://ustcodec.com/survey.php'> Go back <br>";
		echo "<br>Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    	echo "<br>Debugging error: " . mysqli_connect_error() . PHP_EOL;
  
	 }else{
	// 	echo "Connected to " . $url . " " . $db_user . " " . $db . " " ;
	 	echo "Inserted the user";
	}

	?>