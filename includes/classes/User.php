<?php
class User {
	private $user;
	private $con;

	public function __construct($con, $user){
		$this->con = $con;
		$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$user'");
		$this->user = mysqli_fetch_array($user_details_query);
	}

	public function getUsername() {
		return $this->user['username'];
	}

	public function getNumberOfFriendRequests() {
		$username = $this->user['username'];
		$query = mysqli_query($this->con, "SELECT * FROM friend_requests WHERE user_to='$username'");
		return mysqli_num_rows($query);
	}

	public function getNumPosts() {
		$username = $this->user['username'];
		$query = mysqli_query($this->con, "SELECT num_posts FROM users WHERE username='$username'");
		$row = mysqli_fetch_array($query);
		return $row['num_posts'];
	}

	public function getFirstAndLastName() {
		$username = $this->user['username'];
		$query = mysqli_query($this->con, "SELECT first_name, last_name FROM users WHERE username='$username'");
		$row = mysqli_fetch_array($query);
		return $row['first_name'] . " " . $row['last_name'];
	}

	public function getProfilePic() {
		$username = $this->user['username'];
		$query = mysqli_query($this->con, "SELECT profile_pic FROM users WHERE username='$username'");
		$row = mysqli_fetch_array($query);
		return $row['profile_pic'];
	}

	public function getFriendArray() {
		$username = $this->user['username'];
		$query = mysqli_query($this->con, "SELECT friend_array FROM users WHERE username='$username'");
		$row = mysqli_fetch_array($query);
		return $row['friend_array'];
	}

	public function isClosed() {
		$username = $this->user['username'];
		$query = mysqli_query($this->con, "SELECT user_closed FROM users WHERE username='$username'");
		$row = mysqli_fetch_array($query);

		if($row['user_closed'] == 'yes')
			return true;
		else 
			return false;
	}

	public function isFriend($username_to_check) {
		$usernameComma = "," . $username_to_check . ",";

		if((strstr($this->user['friend_array'], $usernameComma) || $username_to_check == $this->user['username'])) {
			return true;
		}
		else {
			return false;
		}
	}

	public function didReceiveRequest($user_from) {
		$user_to = $this->user['username'];
		$check_request_query = mysqli_query($this->con, "SELECT * FROM friend_requests WHERE user_to='$user_to' AND user_from='$user_from'");
		if(mysqli_num_rows($check_request_query) > 0) {
			return true;
		}
		else {
			return false;
		}
	}

	public function didSendRequest($user_to) {
		$user_from = $this->user['username'];
		$check_request_query = mysqli_query($this->con, "SELECT * FROM friend_requests WHERE user_to='$user_to' AND user_from='$user_from'");
		if(mysqli_num_rows($check_request_query) > 0) {
			return true;
		}
		else {
			return false;
		}
	}

	public function removeFriend($user_to_remove) {
		$logged_in_user = $this->user['username'];

		$query = mysqli_query($this->con, "SELECT friend_array FROM users WHERE username='$user_to_remove'");
		$row = mysqli_fetch_array($query);
		$friend_array_username = $row['friend_array'];

		$new_friend_array = str_replace($user_to_remove . ",", "", $this->user['friend_array']);
		$remove_friend = mysqli_query($this->con, "UPDATE users SET friend_array='$new_friend_array' WHERE username='$logged_in_user'");

		$new_friend_array = str_replace($this->user['username'] . ",", "", $friend_array_username);
		$remove_friend = mysqli_query($this->con, "UPDATE users SET friend_array='$new_friend_array' WHERE username='$user_to_remove'");
	}

	public function sendRequest($user_to) {
		$user_from = $this->user['username'];
		$query = mysqli_query($this->con, "INSERT INTO friend_requests VALUES('', '$user_to', '$user_from')");
	}

	public function getMutualFriends($user_to_check) {
		$mutualFriends = 0;
		$user_array = $this->user['friend_array'];
		$user_array_explode = explode(",", $user_array);

		$query = mysqli_query($this->con, "SELECT friend_array FROM users WHERE username='$user_to_check'");
		$row = mysqli_fetch_array($query);
		$user_to_check_array = $row['friend_array'];
		$user_to_check_array_explode = explode(",", $user_to_check_array);

		foreach($user_array_explode as $i) {

			foreach($user_to_check_array_explode as $j) {

				if($i == $j && $i != "") {
					$mutualFriends++;
				}
			}
		}
		return $mutualFriends;
	}

	public function loadSuggestedFriends() {
		$userLoggedIn = $this->user;
		$arr_score= array(intval($userLoggedIn['id']) => '0');
		$str = "<h2>People like you</h2><div class ='friends_suggestions'>"; //String to return 
		$data_query = mysqli_query($this->con, "SELECT * FROM users ");
			$num_iterations = 0; //Number of results checked (not necasserily posted)
			$count = 1;

			while($row = mysqli_fetch_array($data_query)) {
				$id = $row['id'];
				$first_name = $row['first_name'];
				$last_name = $row['last_name'];
				$profile_pic = $row['profile_pic'];
				$imagePath = $row['profile_pic'];
				$userid = $row['username'];
				$district=$row['district'];
				$age= $row['Age'];
				$gender=$row['gender'];
				$fastfood=$row['fastfood'];
				$seafood=$row['seafood'];
				$desert=$row['desert'];
				$korean=$row['korean'];
				$Italian=$row['Italian'];
				//fastfood, seafood, desert, korean, italian
				$score=0;
				if($id == $userLoggedIn['id'] || $this->isFriend($userid)){
					$score=0;
				} else {
					if($district ==$userLoggedIn['district'] ) {
						$score+=5;
					}

					
					if($fastfood == $userLoggedIn['fastfood']){
						$score+=1;
					}
					if($seafood == $userLoggedIn['seafood']){
						$score+=1;
					}
					if($desert == $userLoggedIn['desert']){
						$score+=1;
					}
					if($korean == $userLoggedIn['korean']){
						$score+=1;
					}
					if($Italian == $userLoggedIn['Italian']){
						$score+=1;
					}
					if($gender == $userLoggedIn['gender']){
						$score+=3;
					}


				}
				$userid = intval($id);
				$userscore = intval($score);
				$arr_score[$userid] = $userscore;

			}   //End while loop

			    arsort($arr_score);
				
			//CONTINUE
				$count =0;
			foreach($arr_score as $key => $value) {

				if($count>3) {
					break;
					}
					$count++;

					$user_details_query = mysqli_query($this->con, "SELECT username, first_name, last_name, profile_pic FROM users WHERE id='$key'");
					$user_row = mysqli_fetch_array($user_details_query);
					$first_name = $user_row['first_name'];
					$last_name = $user_row['last_name'];
					$profile_pic = $user_row['profile_pic'];
					$user_name = $user_row['username'];


					if($imagePath != "") {
						$imageDiv = "<div class='postedImage'>
										<img src='$imagePath'>
									</div>";
					}
					else {
						$imageDiv = "";
					}
					$str .= "
					<div class='friend_rec_profile_pic'>
									<img src='$profile_pic' >
								</div><br><br><br><h3><a href='$user_name'>$user_name</a><h3>
								<h4> Match Score $value</h4>
								<div class='posted_by' style='color:#ACACAC;'>
								</a>
								</div>
							<hr>";
				}

				$str .="</div>";
		echo $str;
	}
}
?>


