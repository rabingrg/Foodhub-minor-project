<?php  
include("../../config/config.php");
include("../classes/User.php");
include("../classes/Post.php");

$limit = 4; //Number of posts to be loaded per call
$temp = $_REQUEST['userLoggedIn'];

//$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$temp'");
//$user_to_send = mysqli_fetch_array($user_details_query);

$posts = new User($con, $temp);
$posts->loadSuggestedFriends();
?>