<?php
$panel = "";
$icon = "";
$value = "";
$link = "";

$view_type = "patient_dashboard";
if ($this->login_user->user_type == "staff") {
    $view_type = "";
}

if (!is_object($patient_info)) {
    $patient_info = new stdClass();
}


if ($tab == "projects") {
    $panel = "panel-sky";
    $icon = "fa-th-large";
    if (property_exists($patient_info, "total_projects")) {
        $value = to_decimal_format($patient_info->total_projects);
    }
    if ($view_type == "patient_dashboard") {
        $link = get_uri('projects/index');
    } else {
        $link = get_uri('patients/view/' . $patient_info->id . '/projects');
    }
} else if ($tab == "invoice_value") {
    $panel = "panel-primary";
    $icon = "fa-file-text";
    if (property_exists($patient_info, "invoice_value")) {
        $value = to_currency($patient_info->invoice_value, $patient_info->currency_symbol);
    }
    if ($view_type == "patient_dashboard") {
        $link = get_uri('invoices/index');
    } else {
        $link = get_uri('patients/view/' . $patient_info->id . '/invoices');
    }
} else if ($tab == "payments") {
    $panel = "panel-success";
    $icon = "fa-check-square";
    if (property_exists($patient_info, "payment_received")) {
        $value = to_currency($patient_info->payment_received, $patient_info->currency_symbol);
    }
    if ($view_type == "patient_dashboard") {
        $link = get_uri('invoice_payments/index');
    } else {
        $link = get_uri('patients/view/' . $patient_info->id . '/payments');
    }
} else if ($tab == "due") {
    $panel = "panel-coral";
    $icon = "fa-money";
    if (property_exists($patient_info, "invoice_value")) {
        $value = to_currency(ignor_minor_value($patient_info->invoice_value - $patient_info->payment_received), $patient_info->currency_symbol);
    }
    if ($view_type == "patient_dashboard") {
        $link = get_uri('invoices/index');
    } else {
        $link = get_uri('patients/view/' . $patient_info->id . '/invoices');
    }
}
?>

<div class="panel <?php echo $panel ?>">
    <a href="<?php echo $link; ?>" class="white-link">
        <div class="panel-body ">
            <div class="widget-icon">
                <i class="fa <?php echo $icon; ?>"></i>
            </div>
            <div class="widget-details">
                <h1><?php echo $value; ?></h1>
                <?php echo lang($tab); ?>
            </div>
        </div>
    </a>
</div>