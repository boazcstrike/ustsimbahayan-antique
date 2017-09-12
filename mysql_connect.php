<?php

	$db_host = "localhost"; 
	$db_username = "root"; 
	$db_password = ""; 
	$db_name = "ustiicss_simbahayanpts";
	
	$link = mysqli_connect($db_host,$db_username,$db_password,$db_name);
	
		if(!$link){
			die("ERROR : Could not connect." . mysqli_connect_error());
		}
		
	$db = mysqli_select_db($link,$db_name);
		
	if(!$db){
		die("Cannot select database!");
	}
					
	//echo "Successful Connection!";
	$db = mysqli_query($link, "USE ustiicss_simbahayanpts");

	if(!$db){
		die("Cannot select database!");
	}

?>