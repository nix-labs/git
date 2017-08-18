  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
    <fieldset>
      <h3><?php echo $text_contact; ?></h3>
      <div class="form-group required">
        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
        <div class="col-sm-10">
          <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
          <?php if ($error_name) { ?>
          <div class="text-danger"><?php echo $error_name; ?></div>
          <?php } ?>
        </div>
      </div>
      <div class="form-group required">
        <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
        <div class="col-sm-10">
          <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
          <?php if ($error_email) { ?>
          <div class="text-danger"><?php echo $error_email; ?></div>
          <?php } ?>
        </div>
      </div>
      <div class="form-group required">
        <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
        <div class="col-sm-10">
          <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
          <?php if ($error_enquiry) { ?>
          <div class="text-danger"><?php echo $error_enquiry; ?></div>
          <?php } ?>
        </div>
      </div>
      <?php if ($site_key) { ?>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
            <?php if ($error_captcha) { ?>
              <div class="text-danger"><?php echo $error_captcha; ?></div>
            <?php } ?>
          </div>
        </div>
      <?php } ?>
    </fieldset>
    <div class="buttons">
      <div class="pull-right">
        <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
      </div>
    </div>
  </form>
      