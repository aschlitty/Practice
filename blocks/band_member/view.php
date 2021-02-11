<?php  defined('C5_EXECUTE') or die("Access Denied.");
?>

<div class="col-md-4">
			<?php  if (!empty($field_2_image)): ?>
				<img src="<?php  echo $field_2_image->src; ?>" alt="<?php  echo $field_2_image_altText; ?>" id="big-img" class="img-responsive" />
			<?php  endif; ?>
		<p class="names">
			<?php  if (!empty($field_1_textbox_text)): ?>
				<?php  echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
			<?php  endif; ?>
		</p>
</div>