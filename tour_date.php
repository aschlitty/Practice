<?php $this->inc('includes/header.php'); ?>
  
    <div class="container-fluid"> 
    <div class="panel panel-default">
      <div id="kmfArticle" class="panel-header"><h2><?php echo $c->getCollectionName(); ?></h2></div>
      
      <div class="panel-body">
        <?php
          $a = new Area('Main About');
          $a->display($c);
        ?>
      </div>      
      
    </div>

</div> <!-- Fluid container -->

<?php $this->inc('includes/footer.php'); ?>
