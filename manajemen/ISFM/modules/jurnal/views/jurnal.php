<?php
/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 13/01/2017
 * Time: 14:48
 */
?>
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css"
      href="assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
<link rel="stylesheet" type="text/css"
      href="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<!-- END PAGE LEVEL STYLES -->

<?php $user = $this->ion_auth->user()->row();
$superadmin = $this->ion_auth->is_superadmin();
$admin = $this->ion_auth->is_admin();
$userId = $user->id; ?>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Jurnal Information
                    <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <?php echo lang('home'); ?>
                    </li>
                    <li>
                        Academic
                    </li>
                    <li>
                        Jurnal
                    </li>
                    <li>
                        View Jurnal
                    </li>
                    <li id="result" class="pull-right topClock"></li>

                </ul>
                <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
        </div>
        <!-- END PAGE HEADER-->


        <div class="row">
            <?=$this->session->flashdata('pesan')?>
            <div class="col-md-12">
                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                <div class="portlet box green">
                    <div class="portlet-title">
                        <div class="caption">
                            View Jurnal
                        </div>
                        <div class="tools">
                        </div>
                    </div>
                    <div class="portlet-body">
                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                            <thead>
                            <tr>
                                <th>
                                    Id
                                </th>
                                <th>
                                    Class
                                </th>
                                <th>
                                    Teacher
                                </th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Materi</th>
                                <th>Situasi</th>
                                <th>Catatan</th>
                                <th>Approval</th>
                                <th>
                                    Actions
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($jurnal as $row) { ?>
                                <tr>
                                    <td>
                                        <?php echo $row['id']; ?>
                                    </td>
                                    <td>
                                        <?php echo $row['class_id']; ?>
                                    </td>
                                    <td>
                                        <?php echo $row['user']; ?>
                                    </td>
                                    <td>
                                        <?php echo date('d/m/Y',$row['date']); ?>
                                    </td>
                                    <td>
                                        <?php echo $row['time']; ?>
                                    </td>
                                    <td><?=$row['task']?></td>
                                    <td><?=$row['situasi_kelas']?></td>
                                    <td><?=$row['catatan']?></td>
                                    <td><?=$row['approval']?'Setuju':'Tidak'?></td>
                                    <td>
                                        <a class="btn btn-xs default"
                                           href="index.php/jurnal/jurnalDetail/<?php echo $row['id']; ?>"> <i
                                                class="fa fa-pencil-square"></i> <?php echo lang('edit'); ?> </a>
                                        <a class="btn btn-xs red"
                                           href="index.php/jurnal/delete/<?php echo $row['id']; ?>"
                                           onClick="javascript:return confirm('Are you sure you want to delete this cabang?')"> <i
                                                class="fa fa-trash-o"></i> <?php echo lang('delete'); ?> </a>
                                    </td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- END EXAMPLE TABLE PORTLET-->
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>
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

</script>