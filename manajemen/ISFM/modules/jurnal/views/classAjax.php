<?php
/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 20/01/2017
 * Time: 11:15
 */
?>
<div class="form-group">
    <label class="col-md-3 control-label"> <?php echo lang('exa_class'); ?> <span class="requiredStar"> * </span></label>
    <div class="col-md-4">
        <select onchange="" class="form-control" name="class_id" data-validation="required" data-validation-error-msg="">
            <option value=""><?php echo lang('select'); ?></option>
            <?php foreach ($s_class as $row) { ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['class_title']; ?></option>
            <?php } ?>
        </select>
    </div>
</div>
