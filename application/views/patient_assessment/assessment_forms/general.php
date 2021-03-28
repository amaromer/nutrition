<div class="form-group">
    <label for="martial_status" class=" col-md-3">
        <h5><?php echo "Martial Status"; ?></h5>
    </label>
    <div class=" col-md-9">
        <div>
            <?php
            echo form_radio(array(
                "id" => "single",
                "name" => "martial_status",
                    ), "single", true);
            ?>
            <label for="single" class="mr15"><?php echo "Single"; ?></label>
        </div>
        <div>
            <?php
            echo form_radio(array(
                "id" => "married",
                "name" => "martial_status",
                    ), "married", false);
            ?>
            <label for="married" class="mr15"><?php echo "Married"; ?></label>
        </div>
        <div>
            <?php
            echo form_radio(array(
                "id" => "divorced",
                "name" => "martial_status",
                    ), "divorced", false);
            ?>
            <label for="divorced" class=""><?php echo "Divorced / Widowed"; ?></label>
        </div>
    </div>
</div>

<div class="form-group">
    <label for="education_status" class=" col-md-3"><h5><?php echo "
    Educational Status"; ?></h5></label>
    <div class=" col-md-9">
        <div>
            <?php
            echo form_radio(array(
                "id" => "illitrate",
                "name" => "education_status",
                    ), "illitrate", true);
            ?>
            <label for="illitrate"><?php echo "illitrate"; ?></label>
        </div>
        <div>
            <?php
            echo form_radio(array(
                "id" => "school",
                "name" => "education_status",
                    ), "school", false);
            ?>
            <label for="school"><?php echo "Primary / Intermediate / Secondary"; ?></label>
        </div>
        <div>
            <?php
            echo form_radio(array(
                "id" => "university",
                "name" => "education_status",
                    ), "university", false);
            ?>
            <label for="university" class=""><?php echo "University"; ?></label>
        </div>
    </div>
</div>

<div class="form-group">
    <label for="recent_change_status" class=" col-md-12"><h5><?php echo "History of Recent Change in body weight over the last few months"; ?></h5></label>
    <div class=" col-md-12">
        <div>
            <?php
            echo form_radio(array(
                "id" => "none",
                "name" => "recent_change_status",
                    ), "none", true);
            ?>
            <label for="none" class="mr15"><?php echo "No Recent Change"; ?></label>
        </div>
        <div>
            <?php
            echo form_radio(array(
                "id" => "increased",
                "name" => "recent_change_status",
                    ), "increased", false);
            ?>
            <label for="increased" style="margin-right: 30px"><?php echo "Increased"; ?></label>
        </div>
        <div>
            <?php
            echo form_radio(array(
                "id" => "decreased",
                "name" => "recent_change_status",
                    ), "decreased", false);
            ?>
            <label for="decreased" class=""><?php echo "Decreased"; ?></label>  
        </div>      
    </div>
</div>

<div class="form-group">
    <label for="title" class=" col-md-1"><?php echo "Weight"; ?></label>
    <div class=" col-md-3" style="margin-right: 30px">
        <?php
        echo form_input(array(
            "id" => "recent_change_weight",
            "name" => "recent_change_weight",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "KG"            
        ));
        ?> 
    </div>
    <label for="title" class=" col-md-1"><?php echo "Over"; ?></label>
    <div class=" col-md-3">
        <?php
        echo form_input(array(
            "id" => "recent_change_duration",
            "name" => "recent_change_duration",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Month"            
        ))
        ?>
    </div>

</div>