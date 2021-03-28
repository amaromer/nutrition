<div class="page-title clearfix no-border bg-off-white">
    <h1>
        <?php echo lang('patient_details') . " - " . $patient_info->company_name ?>
        <span id="star-mark">
            <?php
            if ($is_starred) {
                $this->load->view('patients/star/starred', array("patient_id" => $patient_info->id));
            } else {
                $this->load->view('patients/star/not_starred', array("patient_id" => $patient_info->id));
            }
            ?>
        </span>
    </h1>
</div>

<div id="page-content" class="clearfix">

    <?php
    if ($patient_info->lead_status_id) {
        $this->load->view("patients/lead_information");
    }
    ?>

    <div class="mt15">
        <?php $this->load->view("patients/info_widgets/index"); ?>
    </div>

    <ul id="patient-tabs" data-toggle="ajax-tab" class="nav nav-tabs" role="tablist">
        <li><a  role="presentation" href="<?php echo_uri("patients/company_info_tab/" . $patient_info->id); ?>" data-target="#patient-info"> <?php echo lang('patient_info'); ?></a></li>
        <!-- <li><a  role="presentation" href="<?php echo_uri("patients/projects/" . $patient_info->id); ?>" data-target="#patient-projects"><?php echo lang('projects'); ?></a></li> -->

        <?php if ($show_invoice_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/invoices/" . $patient_info->id); ?>" data-target="#patient-invoices"> <?php echo lang('invoices'); ?></a></li>
            <li><a  role="presentation" href="<?php echo_uri("patients/payments/" . $patient_info->id); ?>" data-target="#patient-payments"> <?php echo lang('payments'); ?></a></li>
        <?php } ?>
        <?php if ($show_estimate_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/estimates/" . $patient_info->id); ?>" data-target="#patient-estimates"> <?php echo lang('estimates'); ?></a></li>
        <?php } ?>
        <?php if ($show_order_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/orders/" . $patient_info->id); ?>" data-target="#patient-orders"> <?php echo lang('orders'); ?></a></li>
        <?php } ?>
        <?php if ($show_estimate_request_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/estimate_requests/" . $patient_info->id); ?>" data-target="#patient-estimate-requests"> <?php echo lang('estimate_requests'); ?></a></li>
        <?php } ?>
        <?php if ($show_ticket_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/tickets/" . $patient_info->id); ?>" data-target="#patient-tickets"> <?php echo lang('tickets'); ?></a></li>
        <?php } ?>
        <?php if ($show_note_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/notes/" . $patient_info->id); ?>" data-target="#patient-notes"> <?php echo lang('notes'); ?></a></li>
        <?php } ?>
        <li><a  role="presentation" href="<?php echo_uri("patients/files/" . $patient_info->id); ?>" data-target="#patient-files"><?php echo lang('files'); ?></a></li>

        <?php if ($show_event_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/events/" . $patient_info->id); ?>" data-target="#patient-events"> <?php echo lang('events'); ?></a></li>
        <?php } ?>

        <?php if ($show_expense_info) { ?>
            <li><a  role="presentation" href="<?php echo_uri("patients/expenses/" . $patient_info->id); ?>" data-target="#patient-expenses"> <?php echo lang('expenses'); ?></a></li>
        <?php } ?>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade" id="patient-projects"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-files"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-info"></div>        
        <div role="tabpanel" class="tab-pane fade" id="patient-invoices"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-payments"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-estimates"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-orders"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-estimate-requests"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-tickets"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-notes"></div>
        <div role="tabpanel" class="tab-pane" id="patient-events" style="min-height: 300px"></div>
        <div role="tabpanel" class="tab-pane fade" id="patient-expenses"></div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {

        setTimeout(function () {
            var tab = "<?php echo $tab; ?>";
            if (tab === "info") {
                $("[data-target=#patient-info]").trigger("click");
            } else if (tab === "projects") {
                $("[data-target=#patient-projects]").trigger("click");
            } else if (tab === "invoices") {
                $("[data-target=#patient-invoices]").trigger("click");
            } else if (tab === "payments") {
                $("[data-target=#patient-payments]").trigger("click");
            }
        }, 210);

    });
</script>
