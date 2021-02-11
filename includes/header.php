<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php Loader::element('header_required'); ?>
  <link rel="stylesheet" type="text/css" href="<?php echo '/themes/calling_chaos/assets/css/bootstrap.css'; ?>" /> 
  <link rel="icon" href="img/faviconNew.ico" type="image/ico" />
  <link href='http://fonts.googleapis.com/css?family=Special+Elite' rel='stylesheet' type='text/css'>
  <script src="js.js"></script>
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<img class="jumboImg" src="/themes/calling_chaos/assets/img/CCnew.jpg" />

<nav class="navbar navbar-inverse">
  <div id="fullNavbar" class="container-fluid">
    <div class="navbar-header">
    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
    		<span class="icon-bar"></span>
    		<span class="icon-bar"></span>
    		<span class="icon-bar"></span>
    	</button>
      <img class="navLogo" src="/themes/calling_chaos/assets/img/CC.jpg">
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    	
    	<?php
                $nav = BlockType::getByHandle('autonav');
                $nav->controller->orderBy = 'display_asc';
                $nav->controller->displayPages = 'top';
                $nav->controller->displaySubPages = 'all';
                $nav->controller->displaySubPageLevels = 'all';
                $nav->render("templates/main_nav");
              ?>
    </div>
  </div>
</nav> <!-- End Nav -->