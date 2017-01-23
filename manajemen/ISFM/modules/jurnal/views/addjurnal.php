<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Add Jurnal Class<small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <?php echo lang('home'); ?>
                    </li>
                    <li>
                        <?php echo lang('header_academic'); ?>
                    </li>
                    <li>
                        Jurnal
                    </li>
                    <li>
                        Add Jurnal
                    </li>
                    <li id="result" class="pull-right topClock"></li>
                </ul>
                <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <?=$this->session->flashdata('pesan')?>
            <div class="col-md-12 ">
                <!-- BEGIN SAMPLE FORM PORTLET-->
                <div class="portlet box green ">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="fa fa-bars"></i> Add Jurnal
                        </div>
                        <div class="tools">
                            <a href="" class="collapse">
                            </a>
                            <a href="" class="reload">
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <?php
                        $form_attributs = array('class' => 'form-horizontal', 'role' => 'form');
                        echo form_open('jurnal/do_addjurnal', $form_attributs);
                        ?>
                        <div class="form-body">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Cabang <span class="requiredStar"> * </span></label>
                                <div class="col-md-6">
                                    <select onchange="viewClass(this.value)" class="form-control" name="cabang_id" data-validation="required" data-validation-error-msg="">
                                        <option value="0"><?php echo lang('select'); ?></option>
                                        <?php foreach ($cabang as $row) { ?>
                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div  id="ajaxClass">
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Materi <span class="requiredStar"> * </span></label>
                                <div class="col-md-6">
                                    <textarea name="task" class="form-control" data-validation="required" data-validation-error-msg=""></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Keadaan Kelas <span class="requiredStar"> * </span></label>
                                <div class="col-md-6">
                                    <textarea name="situasi_kelas" class="form-control" data-validation="required" data-validation-error-msg=""></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Catatan <span class="requiredStar"> * </span></label>
                                <div class="col-md-6">
                                    <textarea name="catatan" class="form-control" data-validation="required" data-validation-error-msg=""></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions fluid">
                            <div class="col-md-offset-3 col-md-9">
                                <button class="btn blue" type="submit">Add Jurnal</button>
                                <button class="btn default" type="reset"><?php echo lang('refresh'); ?></button>
                            </div>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
                <!-- END SAMPLE FORM PORTLET-->
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>
<!-- END CONTENT -->
<input type="hidden" id="urlclass" value="<?=site_url('jurnal/getClassByCabang/')?>">
<script src="assets/global/plugins/jquery.form-validator.min.js" type="text/javascript"></script>
<script> $.validate();</script>

<script>
    jQuery(document).ready(function () {
//here is auto reload after 1 second for time and date in the top
        jQuery(setInterval(function () {
            jQuery("#result").load("index.php/home/iceTime");
        }, 1000));
    });

    function viewClass(id)
    {

        var url = $('#urlclass').val();
        $.ajax({
            url : url+'/'+id,
            type : 'GET',
            cache : false,
            dataType: "html"
        })
            .success(function(data){
                $('#ajaxClass').html(data);
            });
    }
</script>
