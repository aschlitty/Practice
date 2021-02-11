<?php $this->inc('includes/header.php'); ?>


<div class="container-fluid">
  
    <?php
          $a = new Area('Top Content');
          $a->display($c);
        ?>
		
	<div class="panel panel-default">
	  
	   <?php
          $a = new Area('Panel Content');
          $a->display($c);
        ?>
		
	</div>
</div> <!-- Fluid container -->

<?php $this->inc('includes/footer.php'); ?>