<?php echo ajax_anchor(get_uri("patients/add_remove_star/" . $patient_id . "/remove"), "<i class='fa fa-star star-btn'></i>", array("data-real-target" => "#star-mark"));