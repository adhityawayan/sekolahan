<?php
/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 19/01/2017
 * Time: 11:18
 */
?>
<div class="form-group">
    <label class="col-md-3 control-label"><?php echo lang('att_class'); ?></label>
    <div class="col-md-4">
        <select name="class_id" class="form-control">
            <option value=""> <?php echo lang('select'); ?> </option>
            <?php foreach ($s_class as $row) { ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['class_title']; ?></option>
            <?php } ?>
        </select>
    </div>
</div>
