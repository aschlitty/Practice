<?php $this->inc('includes/header.php'); ?>

<div class="container-fluid">
			
	<div class="panel panel-default">
		<div id="kmfArticle" class="panel-header"><h2>Contact:</h2></div>
		<div class="panel-body">
			<div class="row">
			
				<div class="col-md-4">
					<?php
	        $a = new Area('Left Content');
	        $a->display($c);
          ?>
				</div>
				
				<div class="col-md-4">
					<?php
	        $a = new Area('Middle Content');
	        $a->display($c);
          ?>
				</div>
				
				<div class="col-md-4 form">
					<?php
	        $a = new Area('Right Content');
	        $a->display($c);
          ?>
				</div>
			</div>
		</div>
	</div>
			
</div> <!-- Fluid container -->

<?php $this->inc('includes/footer.php'); ?>