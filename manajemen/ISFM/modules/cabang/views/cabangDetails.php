
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Cabang <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i><?php echo lang('home'); ?>
                        
                    </li>
                    <li>
                        Cabang
                        
                    </li>
                    <li>
                        Detail Cabang
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
                <?php
                if (!empty($success)) {
                    echo $success;
                }
                ?>
                <!-- BEGIN SAMPLE FORM PORTLET-->
                <div class="portlet box green ">
                    <div class="portlet-title">
                        <div class="caption">
                            Detail Cabang
                        </div>
                        <div class="tools">
                            <a href="" class="collapse">
                            </a>
                            <a href="" class="reload">
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body form subjectDetailsPadintTop">
                        <div class="col-sm-6 col-sm-offset-3">

                            <div class="row">
                                <div class="col-sm-12">
<?php foreach ($cabang as $row) { ?>
                                        <div class="alert alert-info">
                                            <h2 class="marginTopNone"><?php echo $row['name']; ?></h2>
                                            <strong><?php echo $row['code']; ?></strong>&nbsp;&nbsp;&nbsp;&nbsp; No Telp <?php echo $row['phone']; ?> .
                                            <p><?=$row['address']?></p>
                                        </div>
<?php } ?>
                                </div>
                            </div>

                        </div><div class="clearfix"> </div>
                        <div class="form-actions fluid">
                            <div class="col-md-offset-3 col-md-9">
                                <button onclick="location.href = 'javascript:history.back()'" class="btn green classSubjectDetailsGoBack" type="button"> <?php echo lang('back'); ?> </button>
                            </div>
                        </div>
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