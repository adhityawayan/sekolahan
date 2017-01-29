<!--Start page level style-->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<!--Start page level style-->

<?php $user = $this->ion_auth->user()->row(); $userId = $user->id;?>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    <?php echo lang('clas_info'); ?> <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <?php echo lang('clas_info'); ?>
                        
                    </li>
                    <li>
                        <?php echo lang('header_cor_clas'); ?>
                        
                    </li>
                    <li>
                        <?php echo lang('header_class_info'); ?>
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
            <div class="col-md-12">
                <div class="portlet box green">
                    <div class="portlet-title">
                        <div class="caption">
                            Pilih Cabang
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="form-group">
                            <select id="selectcabang" class="form-control">
                                <option value="0">Pilih Cabang</option>
                                <?php foreach($cabang as $row): ?>
                                    <option value="<?=$row['id']?>"><?=$row['name']?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <?php
                if (!empty($success)) {
                    echo $success;
                }
                ?>
                <?php if($detailcabang): ?>
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption">
                                Class Information Cabang <?=$detailcabang['name']?>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <table class="table table-striped table-bordered table-hover" id="sample_1">
                                <thead>
                                <tr>
                                    <th>
                                        <?php echo lang('clas_title'); ?>
                                    </th>
                                    <th>
                                        <?php echo lang('clas_code'); ?>
                                    </th>
                                    <th>
                                        <?php echo lang('clas_stu_amount'); ?>
                                    </th>
                                    <th>
                                        <?php echo lang('clas_atten'); ?>
                                    </th>
                                    <th>
                                        &nbsp;
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($classInfo as $row) { ?>
                                    <tr>
                                        <td>
                                            <?php echo $row['class_title']; ?>
                                        </td>
                                        <td>
                                            <?php echo $row['classCode']; ?>
                                        </td>
                                        <td>
                                            <?php echo $row['student_amount']; ?>
                                        </td>
                                        <td>
                                            <?php echo $row['attendance_percentices_daily'] . ' %'; ?>
                                        </td>
                                        <td>
                                            <a class="btn btn-xs green" href="index.php/sclass/classDetails?c_id=<?php echo $row['id']; ?>"> <i class="fa fa-send-o"></i> <?php echo lang('details'); ?> </a>
                                            <?php if($this->common->user_access('class_delete',$userId)){ ?>
                                                <a class="btn btn-xs red" href="index.php/sclass/deleteClass?id=<?php echo $row['id']; ?>" onClick="javascript:return confirm('Are you sure you want to delete this Class?')"> <i class="fa fa-trash-o"></i> <?php echo lang('delete'); ?> </a>
                                            <?php }?>
                                        </td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
                <?php endif; ?>
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>
<!-- END CONTENT -->

<input type="hidden" id="url" value="<?=site_url('sclass/allClass')?>">

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script src="assets/admin/pages/scripts/table-advanced.js"></script>
<script>
    jQuery(document).ready(function() {
//here is auto reload after 1 second for time and date in the top
        jQuery(setInterval(function() {
            jQuery("#result").load("index.php/home/iceTime");
        }, 1000));
        $('#selectcabang').change(function(){
            var url = $('#url').val();
            window.location.href = url+'/'+this.value;
        });
    });
</script>
