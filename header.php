<?php
  //echo "<h1>" .  . "</h1>";
  include "config.php";
  $page = basename($_SERVER['PHP_SELF']);
  switch($page) {
    case "single.php":
      if(isset($_GET['id'])){
        $sql_title = "SELECT * FROM post WHERE post_id = {$_GET['id']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['title'];
      }else{
        $page_title = "No Post Found";
      }
      break;
    case "category.php":
      if(isset($_GET['cid'])){
        $sql_title = "SELECT * FROM category WHERE category_id = {$_GET['cid']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['category_name'] . " News";
      }else{
        $page_title = "No Post Found";
      }
      break;
    case "author.php":
      if(isset($_GET['aid'])){
        $sql_title = "SELECT * FROM user WHERE user_id = {$_GET['aid']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = "News By " .$row_title['first_name'] . " " . $row_title['last_name'];
      }else{
        $page_title = "No Post Found ";
      }
      break;
    case "search.php":
      if(isset($_GET['search'])){

        $page_title = $_GET['search'];
      }else{
        $page_title = "No Search Result Found";
      }
      break;
    default :
      $sql_title = "SELECT websitename FROM settings";
      $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
      $row_title = mysqli_fetch_assoc($result_title);
      $page_title = $row_title['websitename'];
      break;
  }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $page_title; ?></title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="/css/font-awesome.css"> 
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/style.css">
     <!-- link of quick section -->
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  
      
      <style> 
.loader {
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #333333;
    transition: opacity 3.75s, visibility 0.75s;
  }
  
  .loader--hidden {
    opacity: 0;
    visibility: hidden;
  }
  
  .loader::after {
    content: "";
    width: 75px;
    height: 75px;
    border: 15px solid #dddddd;
    border-top-color: #009578;
    border-radius: 50%;
    animation: loading 0.75s ease infinite;
  }
  
  @keyframes loading {
    from {
      transform: rotate(0turn);
    }
    to {
      transform: rotate(1turn);
    }
  }
</style>
<script>
window.addEventListener("load", () => {
  const loader = document.querySelector(".loader");

  loader.classList.add("loader--hidden");

  loader.addEventListener("transitionend", () => {
    document.body.removeChild(loader);
  });
});
</script>
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>




</head>
<body>

<!-- HEADER -->
<div id="header">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- LOGO -->
            <div class=" col-md-offset-4 col-md-4">
              <?php
                include "config.php";

                $sql = "SELECT * FROM settings";

                $result = mysqli_query($conn, $sql) or die("Query Failed.");
                if(mysqli_num_rows($result) > 0){
                  while($row = mysqli_fetch_assoc($result)) {
                    if($row['logo'] == ""){
                      echo '<a href="index.php"><h1>'.$row['websitename'].'</h1></a>';
                    }else{
                      echo '<a href="index.php" id="logo"><img src="admin/images/'. $row['logo'] .'"></a>';
                    }

                  }
                }
                ?>
            </div>
            <!-- /LOGO -->
        </div>
    </div>
</div>

  
<!-- /HEADER -->
<!-- menubar-->

<div class="topnav" id="myTopnav">
  <a href="http://localhost/NewMithlaExpress/index.php" class="click">Home</a>
  <a href="http://localhost/NewMithlaExpress/category.php?cid=34">Crime</a>
  <a href="http://localhost/NewMithlaExpress/category.php?cid=31">Entertainment</a>
  <a href="http://localhost/newmithlaexpress/category.php?cid=40">Technology</a>
  <a href="http://localhost/NewMithlaExpress/category.php?cid=36">Crime</a>
  <a href="http://localhost/NewMithlaExpress/category.php?cid=33">Health</a>
  <a href="http://localhost/NewMithlaExpress/category.php?cid=32">Political</a>
  <a href="http://localhost/newmithlaexpress/admin/">Login</a>
   <!--animation login -->

 <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
 <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" href="http://localhost/newmithlaexpress/admin/"></button>
</div>
<nav>
<div id="id01" class="modal">

  <form class="modal-content animate" action="/action_page.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
<!-- /animation login -->
<!-- /menubar-->
<!-- Ticker -->                     
<!-- /menubar-->
<!-- Ticker -->
<div>
<h3> Breaking News </h3>
<div class="vwrap"><div class="vmove">
<div class="recent-post-container">
        <?php
        include "config.php";
        /* Calculate Offset Code */
        $limit = 10;

        $sql = "SELECT post.post_id, post.title, post.post_date,
        category.category_name,post.category,post.post_img FROM post
        LEFT JOIN category ON post.category = category.category_id
        ORDER BY post.post_id DESC LIMIT {$limit}";

        $result = mysqli_query($conn, $sql) or die("Query Failed. : Recent Post");
        if(mysqli_num_rows($result) > 0){
          while($row = mysqli_fetch_assoc($result)) {
      ?>
        <div class="recent-post">
            <div class="post-content">
              <div class="vitem">
                <h5><a href="single.php?id=<?php echo $row['post_id']; ?>"><?php echo $row['title']; ?></a></h5>
          </div>
            </div>
        </div>
    <?php
      }
    }
    ?>
   
</div>
  </div>
  </div>
  </div>
  <?php include 'calender.php'; ?>