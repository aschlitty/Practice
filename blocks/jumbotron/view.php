<?php  defined('C5_EXECUTE') or die("Access Denied.");
?>

<?php  if (!empty($field_3_link_url)):
	$link_url = $this->controller->valid_url($field_3_link_url);
	$link_text = empty($field_3_link_text) ? $field_3_link_url : htmlentities($field_3_link_text, ENT_QUOTES, APP_CHARSET);
	?>
	
<?php  endif; ?>


<div style="background-image: url(<?php  echo $field_4_image->src; ?>);" class="jumbotron">
    <div class="row">
      <div class="col-md-9">
        <h1 class="mainTitle shadow"><b><?php  if (!empty($field_1_textbox_text)): ?>
  <?php  echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
<?php  endif; ?></b></h1>
        <p class="shadow"><b><?php  if (!empty($field_2_textbox_text)): ?>
  <?php  echo htmlentities($field_2_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
<?php  endif; ?></b></p>
        <a href="<?php  echo $link_url; ?>" class="btn btn-info btn-lg jumboBtn"><span class="glyphicon glyphicon-download"></span> Read Now</a>
      </div>
      <div class="col-md-3">
      <p></p>
      </div>
    </div>
  </div> <!-- End Jumbotron -->