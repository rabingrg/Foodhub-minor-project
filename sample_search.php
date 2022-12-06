
<link rel="stylesheet" type="text/css" href="assets/css/style.css">

<?php
include("includes/header.php");
?>
<html>
<body>
<div class="ssearch">
<form action ="sample_search.php " method ="post">
<input type="text" class="search_id" name ="search_query" placeholder="search">
<input type="submit" name= "search" class="new_search">
</form>
</div>

</body>
</html>
<?php



$sql1="SELECT * FROM users";
$res1= mysqli_query($con,$sql1);
if(!$res1)
{
    echo"error".mysqli_error($con);
}

while($row=mysqli_fetch_assoc($res1))
{
$sound=" ";
if ($row['username']!=null)
{
$words=explode(" ",$row['username']);
foreach ($words as $word)
{
$sound.=metaphone($word)." ";
}
}
$id=$row['id'];
$sql2="UPDATE users set indexing='$sound' WHERE id=$id ";
$res2=mysqli_query($con,$sql2);
if (!$res2)
{
echo mysqli_error($con);
}
}


if(isset($_POST['search_query']))
{

$query=$_POST['search_query'];
$search=explode(" ",$query);
$search_string = "";
foreach($search as $word)
{
$search_string.=metaphone($word). " ";
}

$sql="SELECT * FROM users WHERE indexing like'%$search_string%'";
$res=mysqli_query($con,$sql);
if(!$res)
{
echo mysqli_error($con);
}


if(mysqli_num_rows($res)>0)
{
while($row=mysqli_fetch_assoc($res))
{
    ?>
    <div class='user_details column'>
    <img src=<?=$row['profile_pic']?>> </a>
    <a href=<?php echo $row['username'];?>><h2><?=$row['username']?></h2></a>
<br>
</div>
<?php
}
}




if(mysqli_num_rows($res)==0)
{
$count=0;
$words=explode(" ",$query);
foreach ($words as $word)
{
$mword=metaphone($word);
$sql="SELECT * FROM users WHERE indexing like'%$mword%'";
$res=mysqli_query($con,$sql);
if(!$res)
{
echo mysqli_error ($con);
}
if(mysqli_num_rows($res)>0)
{
while($row=mysqli_fetch_assoc($res))
{
$count++;
?>
<div class='user_details column'>
    <img src=<?=$row['profile_pic']?>> </a>
    <a href=<?=$row['username']?>><h2><?=$row['username']?></h2></a>
<br>
</div>

<?php
}
}
}

if($count==0)
{
    echo "no search results";
}
}
}







