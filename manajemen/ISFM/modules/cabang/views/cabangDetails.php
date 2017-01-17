<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css"
      href="assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
<link rel="stylesheet" type="text/css"
      href="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Cabang
                    <small></small>
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
                <?=$this->session->flashdata('pesan')?>
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
                                            <a href="javascript:void(0);" onclick="formteacher(<?=$row['id']?>)" class="btn btn-xs btn-success pull-right">
                                                Add Teacher
                                            </a>
                                            <h2 class="marginTopNone"><?php echo $row['name']; ?></h2>
                                            <strong><?php echo $row['code']; ?></strong>&nbsp;&nbsp;&nbsp;&nbsp; No
                                            Telp <?php echo $row['phone']; ?> .
                                            <p><?= $row['address'] ?></p>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="portlet-body">
                                <table class="table table-striped table-bordered table-hover" id="sample_1">
                                    <thead>
                                    <tr>
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
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php if($tschool): foreach($tschool as $row): ?>
                                        <tr>
                                            <td>
                                                <?php echo $row['teacher']['id']; ?>
                                            </td>
                                            <td>
                                                <div class="tableImage">
                                                    <img src="assets/uploads/<?php echo $row['teacher']['teachers_photo']; ?>" alt="">
                                                </div>
                                            </td>
                                            <td>
                                                <?php echo $row['teacher']['fullname']; ?>
                                            </td>
                                            <td>
                                                <?php echo $row['teacher']['present_address']; ?>
                                            </td>
                                            <td>
                                                <span class="label label-sm label-success"><?php echo $row['teacher']['position']; ?></span>
                                            </td>
                                            <td>
                                                <a class="btn btn-xs red"
                                                   href="index.php/cabang/deleteTeacherSchool/<?php echo $row['id']; ?>/<?=$row['cabang_id']?>"
                                                   onClick="javascript:return confirm('Are you sure you want to delete this cabang?')"> <i
                                                        class="fa fa-trash-o"></i> <?php echo lang('delete'); ?> </a>
                                            </td>
                                        </tr>
                                    <?php endforeach; endif; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="form-actions fluid">
                            <div class="col-md-offset-3 col-md-9">
                                <button onclick="location.href = 'javascript:history.back()'"
                                        class="btn green classSubjectDetailsGoBack"
                                        type="button"> <?php echo lang('back'); ?> </button>
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

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">

            </div>
        </div>
    </div>
</div>

<input type="hidden" id="urlteachers" value="<?=site_url('cabang/listTeacher')?>">

<!-- END CONTENT -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
        src="assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
<script type="text/javascript"
        src="assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
<script type="text/javascript"
        src="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script src="assets/admin/pages/scripts/table-advanced.js"></script>

<script>
    jQuery(document).ready(function () {
//here is auto reload after 1 second for time and date in the top
        jQuery(setInterval(function () {
            jQuery("#result").load("index.php/home/iceTime");
        }, 1000));
    });

    function checkall(){
        var check = $('#checkAll').is(':checked');
        $('input:checkbox').prop('checked', check);
    }

    function formteacher(cabangid)
    {
        var url = $('#urlteachers').val();
        $.ajax({
            url : url+'/'+cabangid,
            type : 'GET',
            cache: false
        })
            .success(function(response){
                $('.modal-body').html(response);
                $('#myModal').modal('show');
            });
    }
</script>