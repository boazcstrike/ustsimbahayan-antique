<?php			
	include "mysql_connect.php";
	if(isset($_POST['login_user']) && isset($_POST['username']) && isset($_POST['password']))
	{
		// removed because of new mysqli_connect and prepare statements
		// $username = mysqli_real_escape_string($link,stripslashes($_POST['username']));
		// $password = mysqli_real_escape_string($link,stripslashes($_POST['password']));
		//old
		// $sqlquery = mysqli_query($link,"SELECT * FROM login_user WHERE username ='$username' AND password = md5('$password')");	
		// $exists = mysqli_num_rows($sqlquery);
		
		$select_query = $link->prepare("SELECT * FROM login_user WHERE username = ? AND password = ?");
		$select_query->bind_param("ss",$check_username,$crypted);

		$audit_query = $link->prepare("INSERT INTO audit_trail (user_id, action) VALUES (?,?)");
    	$audit_query->bind_param("is", $tempo_id, $action);

		//user_id, username, name, email, account_type, college, profile, reference 
		// shortcut for password = shift 12345 Simbahayan shift 67890
		$check_username = $_POST['username'];
		$check_password = $_POST['password'];
		$crypted = crypt($check_password, "!@#$%Simbahayan^&*()");

		$tempo_id = 0;
		$action = $check_username . " ATTEMPTED A LOGIN.";
    	$audit_query->execute();
    			
		$select_query->execute();
		$select_query->store_result();
		$if_exists = $select_query->num_rows;

		echo "debug text<br>Count: " . $if_exists . "<br>";
		
		if($if_exists!=0)
		{
			// echo "pasok sa checking";
			$select_query->execute();
			$select_query->bind_result($user_id, $username, $password, $name, $email, $account_type, $college, $profile, $reference, $date_created);

			$audit_query->bind_param("is", $user_id, $action);
			$audit_query->execute();

			while($row = $select_query->fetch())
			{
				/* 	DEBUG HERE, CHECK IF IT CAN GET THE USERNAME AND CREDENTIALS
			dont need this cuz of binded results,
			wasted a 2 hrs through this.

				$user_id = $row['user_id'];
			// 	$username = $row['username'];
			// 	$password = $row['password'];
			// 	$name = $row['name'];
			// 	$email = $row['email'];
			// 	$account_type = $row['account_type'];
			// 	$college = $row['college'];
			// 	$profile = $row['profile'];
			// 	$reference = $row['reference'];
			// 	$date_created = $row['reference'];
				*/

				echo mysqli_error($link);

				echo $user_id . "<br>";
				echo $username . "<br>";
				echo $password . "<br>";
				echo $check_username . "<br>";
				echo $crypted . "<br>";
				echo $name . "<br>";
				echo $email . "<br>";
				echo $account_type . "<br>";
				echo $college . "<br>";
				echo $profile . "<br>";
				echo $reference . "<br>";
				echo $date_created . "<br>";
			}

			session_start();
			$_SESSION['name']=$name;
			$_SESSION['username'] = $username;
			$_SESSION['user_id']=$user_id;
			$_SESSION['college'] = $college;
			$_SESSION['account_type'] = $account_type;

			// $audit = "INSERT INTO audit_trail(user_id, datetime, action) VALUES ('$id', now(), '$action')";

			$action = $username . " SUCCESSFULY LOGGED IN.";
			$audit_query->execute();
			
			
			if($account_type == 'organization' || $account_type == "facilitator"){
				header("location: org.php");					
			}
			else if($account_type == 'signatory' || $account_type == "moderator"){
				header("location: signatory.php");
			}
			else if($account_type == 'administrator'){
				header("location: admin.php");
			}
			else{
				// echo '<script>alert("Please contact your moderator for setting up your account type.");</script>';
				// echo "<script>location.assign('index.php')</script>";
			}
		}else {
			echo '<script>alert("Check username or password.");</script>';
			echo "<script>location.assign('index.php')</script>";
			// header('Location: index.php');
		}

		$select_query->close();
		$audit_query->close();
		$link->close();
				
	}
				
?>