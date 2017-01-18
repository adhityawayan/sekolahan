<?php
/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 18/01/2017
 * Time: 11:51
 */
?>
<div class="form-group">
    <label class="col-md-3 control-label">Class <span class="requiredStar"> * </span></label>
    <div class="col-md-6">
        <select onchange="viewStudents(this.value)" class="form-control" name="class" data-validation="required" data-validation-error-msg="This field is required field.">
            <option value="0">Select one</option>
            <?php
            if(count($classTile)):
            foreach ($classTile as $row) { ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['class_title']; ?></option>
            <?php }
            endif;
            ?>
        </select>
    </div>
</div>
