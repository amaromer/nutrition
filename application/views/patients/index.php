<div id="page-content" class="p20 clearfix">
    <div class="panel panel-default">
        <div class="page-title clearfix">
            <h1><?php echo lang('patients'); ?></h1>           
            <div class="title-button-group">
                <?php if ($can_edit_patients) { ?>
                    <?php echo modal_anchor(get_uri("patients/modal_form"), "<i class='fa fa-plus-circle'></i> " . lang('add_patient'), array("class" => "btn btn-default", "title" => lang('add_patient'))); ?>
                <?php } ?>
            </div>
        </div>
    
        
        <div class="table-responsive">
            <table id="patient-table" class="display" cellspacing="0" width="100%">            
            </table>
        </div>          
            
    
    </div>
</div>

<script type="text/javascript">
    loadClientsTable = function (selector) {
        var showInvoiceInfo = true;
        if (!"<?php echo $show_invoice_info; ?>") {
            showInvoiceInfo = false;
        }
        
        var showOptions = true;
        if (!"<?php echo $can_edit_patients; ?>") {
            showOptions = false;
        }

        $(selector).appTable({
            source: '<?php echo_uri("patients/list_data") ?>',
            filterDropdown: [
                {name: "group_id", class: "w200", options: <?php echo $groups_dropdown; ?>},
                {name: "quick_filter", class: "w200", options: <?php $this->load->view("patients/quick_filters_dropdown"); ?>},
                <?php if($this->login_user->is_admin || get_array_value($this->login_user->permissions, "patient") === "all"){ ?>
                    {name: "created_by", class: "w200", options: <?php echo $team_members_dropdown; ?>}
                <?php } ?>
            ],
            columns: [
                {title: "<?php echo lang("id") ?>", "class": "text-center w50"},
                {title: "<?php echo lang("patient_name") ?>"},
                //{title: "<?php echo lang("primary_contact") ?>"},
                {title: "<?php echo lang("patient_groups") ?>"},
                //{title: "<?php echo lang("projects") ?>"},
                {visible: showInvoiceInfo, searchable: showInvoiceInfo, title: "<?php echo lang("invoice_value") ?>"},
                {visible: showInvoiceInfo, searchable: showInvoiceInfo, title: "<?php echo lang("payment_received") ?>"},
                {visible: showInvoiceInfo, searchable: showInvoiceInfo, title: "<?php echo lang("due") ?>"}
                <?php echo $custom_field_headers; ?>,
                {title: '<i class="fa fa-bars"></i>', "class": "text-center option w100", visible: showOptions}
            ],
            printColumns: combineCustomFieldsColumns([0, 1, 2, 3, 4, 5, 6], '<?php echo $custom_field_headers; ?>'),
            xlsColumns: combineCustomFieldsColumns([0, 1, 2, 3, 4, 5, 6], '<?php echo $custom_field_headers; ?>')
        });
    };

    $(document).ready(function () {
        loadClientsTable("#patient-table");

        
    });
</script>