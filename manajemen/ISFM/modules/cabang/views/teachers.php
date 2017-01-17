<form method="post" action="<?= site_url('cabang/doTeacherSchool') ?>">
    <input type="hidden" name="cabang_id" value="<?=$cabang_id?>">
    <table class="table table-striped table-bordered table-hover" id="sample_1">
        <thead>
        <tr>
            <th style="width: 5px;">
                <input onchange="checkall()" id="checkAll" type="checkbox">
            </th>
            <th>
                <?php echo lang('tea_idno'); ?>
            </th>
            <th>
                <?php echo lang('tea_photo'); ?>
            </th>
            <th>
                <?php echo lang('tea_tn'); ?>
            </th>
            <th>
                <?php echo lang('tea_add'); ?>
            </th>
            <th>
                <?php echo lang('tea_stat'); ?>
            </th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($teacher as $row) { ?>
            <tr>
                <td>
                    <input type="checkbox" name="teachers[]" value="<?= $row['id'] ?>">
                </td>
                <td>
                    <?php echo $row['id']; ?>
                </td>
                <td>
                    <div class="tableImage">
                        <img src="assets/uploads/<?php echo $row['teachers_photo']; ?>" alt="">
                    </div>
                </td>
                <td>
                    <?php echo $row['fullname']; ?>
                </td>
                <td>
                    <?php echo $row['present_address']; ?>
                </td>
                <td>
                    <span class="label label-sm label-success"><?php echo $row['position']; ?></span>

                </td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</form>