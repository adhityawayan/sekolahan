<?php
/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 19/01/2017
 * Time: 10:43
 */
?>
<div class="form-group">
    <label class="col-md-3 control-label"><?php echo lang('admi_Class'); ?> <span class="requiredStar"> * </span></label>
    <div class="col-md-6">
        <select name="class" onchange="classInfo(this.value)" class="form-control" data-validation="required" data-validation-error-msg="<?php echo lang('admi_Class_error_msg');?>">
            <option value=""><?php echo lang('admi_select_class');?></option>
            <?php foreach ($s_class as $row) { ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['class_title']; ?></option>
            <?php } ?>
        </select>
    </div>
</div>
