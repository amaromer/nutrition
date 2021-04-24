<style>
    .modal-dialog {
        width: 800px;
    }
</style>
<?php echo form_open(get_uri("patient_assessment/add_patient_assessment"), array("id" => "patient_assessment-form", "class" => "general-form", "role" => "form")); ?>
<div class="modal-body clearfix">

    <div class="form-widget">
        <div class="widget-title clearfix">
            <div id="step1-label" class="col-sm-3"><i class="fa fa-circle-o"></i><strong> <?php echo "Step 1"; ?></strong></div>
            <div id="step2-label" class="col-sm-3"><i class="fa fa-circle-o"></i><strong>  <?php echo "Step 2"; ?></strong></div>
            <div id="step3-label" class="col-sm-3"><i class="fa fa-circle-o"></i><strong>  <?php echo "Step 3"; ?></strong></div>
            <div id="step4-label" class="col-sm-3"><i class="fa fa-circle-o"></i><strong>  <?php echo "Step 4"; ?></strong></div> 
        </div>

        <div class="progress ml15 mr15">
            <div id="form-progress-bar" class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
            </div>
        </div>
    </div>

    <div class="tab-content mt15">
        <div role="tabpanel" class="tab-pane active" id="step1-tab">
            <?php $this->load->view("patient_assessment/assessment_forms/general"); ?>
        </div>
        <div role="tabpanel" class="tab-pane" id="step2-tab">
            <?php $this->load->view("patient_assessment/assessment_forms/step2"); ?>
        </div>
        <div role="tabpanel" class="tab-pane" id="step3-tab">
            <?php $this->load->view("patient_assessment/assessment_forms/step3"); ?>
        </div>
        <div role="tabpanel" class="tab-pane" id="step4-tab">
           <?php $this->load->view("patient_assessment/assessment_forms/step4"); ?>
        </div>
    </div>

</div>


<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
    <button id="form-previous" type="button" class="btn btn-default hide"><span class="fa fa-arrow-circle-left"></span> <?php echo lang('previous'); ?></button>
    <button id="form-next" type="button" class="btn btn-info"><span class="fa  fa-arrow-circle-right"></span> <?php echo lang('next'); ?></button>
    <button id="form-submit" type="button" class="btn btn-primary hide"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $("#patient_assessment-form").appForm({
            onSuccess: function (result) {
                if (result.success) {
                    $("#patient_assessment-table").appTable({newData: result.data, dataId: result.id});
                }
            },
            onSubmit: function () {
                $("#form-previous").attr('disabled', 'disabled');
            },
            onAjaxSuccess: function () {
                $("#form-previous").removeAttr('disabled');
            }
        });
        
        
        $("#patient_assessment-form .select2").select2();        

        $("#form-previous").click(function () {
            var $step1 = $("#step1-tab"),
                   $step2 = $("#step2-tab"),
                   $step3 = $("#step3-tab"),
                   $step4 = $("#step4-tab"),
                    $previousButton = $("#form-previous"),
                    $nextButton = $("#form-next"),
                    $submitButton = $("#form-submit");

            if ($step4.hasClass("active")) {
                $step4.removeClass("active");
                $step3.addClass("active");
                $nextButton.removeClass("hide");
                $submitButton.addClass("hide");
            } else if ($step3.hasClass("active")) {
                $step3.removeClass("active");
                $step2.addClass("active");                         
            } else if ($step2.hasClass("active")) {
                $step2.removeClass("active");
                $step1.addClass("active");
                $previousButton.addClass("hide");
            }
        });

        $("#form-next").click(function () {
            var $step1 = $("#step1-tab"),
                   $step2 = $("#step2-tab"),
                   $step3 = $("#step3-tab"),
                   $step4 = $("#step4-tab"),
                    $previousButton = $("#form-previous"),
                    $nextButton = $("#form-next"),
                    $submitButton = $("#form-submit");
            if (!$("#patient_assessment-form").valid()) {
                return false;
            }
            if ($step1.hasClass("active")) {
                $step1.removeClass("active");
                $step2.addClass("active");
                $previousButton.removeClass("hide");
                $("#form-progress-bar").width("25%");
                $("#step1-label").find("i").removeClass("fa-circle-o").addClass("fa-check-circle");                
            } else if ($step2.hasClass("active")) {
                $step2.removeClass("active");
                $step3.addClass("active");                       
                $("#form-progress-bar").width("50%");
                $("#step2-label").find("i").removeClass("fa-circle-o").addClass("fa-check-circle");               
            } else if ($step3.hasClass("active")) {
                $step3.removeClass("active");
                $step4.addClass("active");               
                $nextButton.addClass("hide");
                $submitButton.removeClass("hide");
                $("#form-progress-bar").width("75%");
                $("#step3-label").find("i").removeClass("fa-circle-o").addClass("fa-check-circle");               
            }
        });

        $("#form-submit").click(function () {
            $("#patient_assessment-form").trigger('submit');
        });
        
    });
</script>