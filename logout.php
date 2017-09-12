<?php
	session_start();

	include "mysql_connect.php";

	$user_id = $_SESSION['user_id'];
	$username = $_SESSION['username'];
	$action = $username . " LOGGED OUT.";
	$audit_query = $link->prepare("INSERT INTO audit_trail (user_id, action) VALUES (?,?)");
    $audit_query->bind_param("is", $user_id, $action);
    $audit_query->execute();

	//$audit = "INSERT INTO audit_trail(user_id, datetime, action) VALUES ('$id', now(), '$action')";

	header("location:index.php");
	unset($_SESSION['name']);
	session_destroy();
	$audit_query->close();
	$link->close();

?>