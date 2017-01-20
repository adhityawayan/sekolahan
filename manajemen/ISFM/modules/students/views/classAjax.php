<?php
/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 19/01/2017
 * Time: 10:01
 */
?>
<div class="form-group">
    <label class="col-md-3 control-label"> <?php echo lang('stu_sel_cla_Class'); ?> </label>
    <div class="col-md-4">
        <select onchange="classSection(this.value)"  class="form-control" name="class" data-validation="required" data-validation-error-msg="">
            <option value=""><?php echo lang('stu_sel_cla_select'); ?></option>
            <?php foreach ($s_class as $row) { ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['class_title']; ?></option>
            <?php } ?>
        </select>
        <span class="help-block"><?php echo lang('stu_sel_cla_demo_text'); ?></span>
    </div>
</div>
