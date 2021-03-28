<div class="form-group">

    <h5><?php echo "Diseases and chronical condition"; ?>:</h5>
    <div>
        <?php

        $Diseases = array("hypertension", "cardiac", "triglycreide", "highcholesterol", "colitis", "hepatitisA", "hepatitisB", "hepatitisC", "hypotension", "anemia", "pregnant_first","pregnant_second","pregnant_third","lactaiting","kidneystonesO","kidneystonesC","liverfat", "breastcancer","obecity_first","obecity_second","morbiditobecity","ulcer","complementaryfeed","overweight","underweight","severunder","gout","medical_supplement_feeds", "diab_type1", "diab_type2","gdm","ngt","nutrition_assessment","other");

        foreach ($Diseases as $disease) { ?>
        <div class="col-md-5">
            <?php
                echo form_checkbox("chronic_condition[]", $disease, false, "id='$disease'");
            ?>
            <label for="<?php echo $disease ?>"><?php echo lang($disease); ?></label>
        </div>
        <?php } ?>

        <div>
            <?php
                echo form_input(array(
                    "id" => "other",
                    "name" => "chronic_condition",
                    "value" => "", //$model_info->recent_change_weight,
                    "class" => "form-control",
                    "placeholder" => "Other"            
                ));
            ?> 
        </div>

    </div>

</div>
<div class="form-group">
    <h5><?php echo "Women History"; ?>:</h5>
    <div class="col-md-6">
        <?php
            echo form_checkbox("women_history", "amenorrhea", false, "id='amenorrhea'");
        ?>
        <label for="<?php echo 'amenorrhea' ?>"><?php echo "Amenorrhea"; ?></label>
    </div>

    <div class="col-md-6">
        <?php
            echo form_checkbox("women_history", "menopause", false, "id='menopause'");
        ?>
        <label for="<?php echo 'menopause' ?>"><?php echo "Menopause"; ?></label>
    </div>

    <div class="col-md-6">
        <?php
            echo form_checkbox("women_history", "irrgular_mens", false, "id='irrgular_mens'");
        ?>
        <label for="<?php echo 'irrgular_mens' ?>"><?php echo "Irregular menstaration"; ?></label>
    </div>

    <div class="col-md-6">
        <?php
            echo form_checkbox("women_history", "excess_bleed", false, "id='excess_bleed'");
        ?>
        <label for="<?php echo 'excess_bleed' ?>"><?php echo "Excessive Bleeding"; ?></label>
    </div>

    <div class="col-md-6">
        <?php
            echo form_checkbox("women_history", "infertility", false, "id='infertility'");
        ?>
        <label for="<?php echo 'infertility' ?>"><?php echo "Infertility"; ?></label>
    </div>

    <div class="col-md-6">
        <?php
            echo form_checkbox("women_history", "others", false, "id='others'");
        ?>
        <label for="<?php echo 'others' ?>"><?php echo "Others"; ?></label>       

    </div>
    <?php
        echo form_input(array(
            "id" => "other",
            "name" => "women_history",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "others"            
        ));
    ?> 

</div>
