<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
    <fieldset>
      <legend><?php echo $text_contact; ?></legend>
      <div class="form-group required">
        <label class="col-sm-2 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
        <div class="col-sm-10">
          <input type="text" name="firstname" value="<?php echo $firstname; ?>" id="input-firstname" class="form-control" />
          <?php if ($error_firstname) { ?>
          <div class="text-danger"><?php echo $error_firstname; ?></div>
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
      <input type="hidden" name="lastname" value="" id="input-lastname" class="form-control" />
      <input type="hidden" name="telephone" value="" id="input-telephone" class="form-control" />
      <input type="hidden" name="fax" value="" id="input-fax" class="form-control" />
      <input type="hidden" name="password" value="" id="input-password" class="form-control" />
      <input type="hidden" name="company" value="" id="input-company" class="form-control" />
      <input type="hidden" name="address_1" value="" id="input-address_1" class="form-control" />
      <input type="hidden" name="address_2" value="" id="input-address_2" class="form-control" />
      <input type="hidden" name="city" value="" id="input-city" class="form-control" />
      <input type="hidden" name="postcode" value="" id="input-postcode" class="form-control" />
      <input type="hidden" name="country_id" value="" id="input-country_id" class="form-control" />
      <input type="hidden" name="zone_id" value="" id="input-zone_id" class="form-control" />
      <?php echo $captcha; ?>
    </fieldset>
    <div class="buttons">
      <div class="pull-right">
        <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
      </div>
    </div>
</form>