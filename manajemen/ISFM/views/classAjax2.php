<div class="form-group">
    <label class="col-md-3 control-label"> <?php echo lang('par_cla_tit'); ?> </label>
    <div class="col-md-4">
        <select onchange="classSection(this.value)"  class="form-control" name="class_id">
            <option value=""><?php echo lang('select'); ?></option>
            <?php foreach ($s_class as $row) { ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['class_title']; ?></option>
            <?php } ?>
        </select>
        <span class="help-block"><?php echo lang('At first select any class and click the "view Parents" button.'); ?> </span>
    </div>
</div>