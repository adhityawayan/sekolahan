
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    <?php echo lang('sub_asfc'); ?> <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i><?php echo lang('home'); ?>
                    </li>
                    <li>
                        Cabang
                    </li>
                    <li>
                        Edit Cabang
                    </li>
                    <li id="result" class="pull-right topClock"></li>
                </ul>
                <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12 ">
                <?php if (!empty($success)) {
                    echo $success;
                } ?>
                <!-- BEGIN SAMPLE FORM PORTLET-->
                <div class="portlet box green ">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="fa fa-book"></i> Add Cabang
                        </div>
                        <div class="tools">
                            <a href="" class="collapse">
                            </a>
                            <a href="" class="reload">
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <?php $form_attributs = array('class' => 'form-horizontal', 'role' => 'form');
                        echo form_open('cabang/editCabang', $form_attributs);
                        ?>
                            <div class="form-body">
                                <input type="hidden" name="id" value="<?=$cabang['id']?>">
                                <div class="form-group">
                                    <label class="col-md-3 control-label"> Code Yayasan <span class="requiredStar"> </span></label>
                                    <div class="col-md-6">
                                        <input type="text" name="name" class="form-control" placeholder="Code Yayasan" value="<?=$cabang['code']?>" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label"> Nama Yayasan <span class="requiredStar"> </span></label>
                                    <div class="col-md-6">
                                        <input type="text" name="name" class="form-control" placeholder="Nama Yayasan" data-validation="required" data-validation-error-msg="" value="<?=$cabang['name']?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label"> No Telp <span class="requiredStar">  </span></label>
                                    <div class="col-md-6">
                                        <input type="text" name="phone" class="form-control" placeholder="No Telepon" data-validation="required" data-validation-error-msg="" value="<?=$cabang['phone']?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label"> Alamat <span class="requiredStar">  </span></label>
                                    <div class="col-md-6">
                                        <textarea rows="3" class="form-control" name="address" data-validation="required" data-validation-error-msg="" placeholder="Alamat Yayasan"><?=$cabang['address']?></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                        <label class="col-md-3 control-label"> Non-Aktif </label>
                                        <div class="radio-list">
                                                <label class="radio-inline">
                                                <input type="radio" name="nonaktif" id="optionsRadios4" value="1" <?=$cabang['nonaktif']==1?'checked':''?>> Yes </label>
                                                <label class="radio-inline">
                                                <input type="radio" name="nonaktif" id="optionsRadios5" value="0" <?=$cabang['nonaktif']==0?'checked':''?> > No </label>
                                        </div>
                                </div>
                            </div>
                            <div class="form-actions fluid">
                                <div class="col-md-offset-3 col-md-6">
                                    <button type="submit" name="submit" class="btn green" value="Update Subject"> Update Cabang </button>
                                    <button type="button" onclick="location.href = 'javascript:history.back()'" class="btn default"> <?php echo lang('cancel'); ?> </button>
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
<script>
    jQuery(document).ready(function() {
//here is auto reload after 1 second for time and date in the top
        jQuery(setInterval(function() {
            jQuery("#result").load("index.php/home/iceTime");
        }, 1000));
    });
</script>
<script src="assets/global/plugins/jquery.form-validator.min.js" type="text/javascript"></script>
<script> $.validate(); </script>
