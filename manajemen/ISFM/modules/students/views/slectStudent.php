<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    <?php echo lang('stu_sel_cla_page_title'); ?> <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <?php echo lang('home'); ?>
                        
                    </li>
                    <li>
                        <?php echo lang('header_stu_paren'); ?>
                        
                    </li>
                    <li>
                        <?php echo lang('header_stude'); ?>
                        
                    </li>
                    <li>
                        <?php echo lang('header_stu_info'); ?>
                        
                    </li>
                    <li id="result" class="pull-right topClock"></li>
                </ul>
                <!-- END PAGE TITLE & BREADCRUMB-->
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
                                    <?php echo lang('stu_sel_cla_table_heading'); ?>
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
                                <?php
                                $form_attributs = array('class' => 'form-horizontal', 'role' => 'form');
                                echo form_open('students/allStudent', $form_attributs);
                                ?>
                                    <div class="form-body">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label"> Cabang </label>
                                            <div class="col-md-4">
                                                <select onchange="viewClass(this.value)" class="form-control" name="cabang"
                                                        data-validation="required"
                                                        data-validation-error-msg="This field is required field.">
                                                    <option value="0">Select one</option>
                                                    <?php foreach ($cabang as $row) { ?>
                                                        <option
                                                            value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div id="ajaxClass">
                                        </div>
                                        <div id="ajaxResult">
                                        </div>
                                    </div>
                                    <div class="form-actions bottom fluid ">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button class="btn green" name="submit" type="submit" value="Submit"><?php echo lang('stu_sel_cla_view_student'); ?></button>
                                            <button class="btn default" type="reset"><?php echo lang('refresh'); ?></button>
                                        </div>
                                    </div>
                                <?php echo form_close(); ?>
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

<input type="hidden" id="urlclass" value="<?=site_url('students/getClassByCabang/')?>">
<!-- END CONTENT -->
<script src="assets/global/plugins/jquery.form-validator.min.js" type="text/javascript"></script>
<script> $.validate(); </script>
<script>
    jQuery(document).ready(function() {
//here is auto reload after 1 second for time and date in the top
        jQuery(setInterval(function() {
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

    function classSection(str) {
        var xmlhttp;
        if (str.length == 0) {
            document.getElementById("ajaxResult").innerHTML = "";
            return;
        }
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("ajaxResult").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "index.php/students/ajaxClassSection?classTitle=" + str, true);
        xmlhttp.send();
    }
</script>
