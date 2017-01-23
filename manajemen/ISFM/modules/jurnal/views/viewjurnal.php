<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Select Class For Jurnal <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li id="result" class="pull-right topClock"></li>
                </ul>
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12">
                <div class="tab-content">
                    <div id="tab_0" class="tab-pane active">
                        <div class="portlet box green">
                            <div class="portlet-title">
                                <div class="caption">
                                    Select Class And Section For Jurnal
                                </div>
                                <div class="tools">
                                    <a class="collapse" href="javascript:;">
                                    </a>
                                    <a class="reload" href="javascript:;">
                                    </a>
                                </div>
                            </div>
                            <div class="portlet-body form">
                                <!-- BEGIN FORM-->
                                <form class="form-horizontal" method="get" action="<?=site_url('jurnal/filterJurnal')?>">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="control-label col-md-3"><?php echo lang('date'); ?></label>
                                        <div class="col-md-3">
                                            <input class="form-control form-control-inline input-medium date-picker" size="16" type="text" name="date" value=""/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Cabang</label>
                                        <div class="col-md-4">
                                            <select name="cabang_id" onchange="viewClass(this.value)" class="form-control">
                                                <option value="0"> <?php echo lang('select'); ?> </option>
                                                <?php foreach ($cabang as $row): ?>
                                                    <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div id="ajaxClass">
                                    </div>
                                    <div id="ajaxResult">
                                    </div>
                                    <div class="form-actions bottom fluid ">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button type="submit" class="btn btn-success">Submit</button>
                                        </div>
                                    </div>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PAGE CONTENT-->
        </div>
    </div>
    <!-- END CONTENT -->
    <input type="hidden" id="urlclass" value="<?=site_url('jurnal/getClassByCabang/')?>">

    <script type="text/javascript" src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script>
        jQuery(document).ready(function () {
            if (jQuery().datepicker) {
                $('.date-picker').datepicker({
                    rtl: Metronic.isRTL(),
                    orientation: "left",
                    autoclose: true
                });
                //$('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
            }

            //here is auto reload after 1 second for time and date in the top
            jQuery(setInterval(function () {
                jQuery("#result").load("index.php/home/iceTime");
            }, 1000));
        });

        function attendanceClassSection(str) {
            var xmlhttp;
            if (str.length == 0) {
                document.getElementById("ajaxResult").innerHTML = "";
                return;
            }
            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            } else {
                // code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                    document.getElementById("ajaxResult").innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("GET", "index.php/jurnal/ajaxAttendencePreview?q=" + str, true);
            xmlhttp.send();
        }

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