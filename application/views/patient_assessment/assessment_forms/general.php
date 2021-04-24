<h5>Martial Status</h5>
<div class="form-group">
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "single",
            "name" => "martial_status",
                ), "single", true);
        ?>
        <label for="single" class="mr15"><?php echo "Single"; ?></label>
    </div>
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "married",
            "name" => "martial_status",
                ), "married", false);
        ?>
        <label for="married" class="mr15"><?php echo "Married"; ?></label>
    </div>
    <div class="col-md-4">
        <?php
        echo form_radio(array(
            "id" => "divorced",
            "name" => "martial_status",
                ), "divorced", false);
        ?>
        <label for="divorced" class=""><?php echo "Divorced / Widowed"; ?></label>
    </div>    
</div>

<h5>Educational Status</h5>
<div class="form-group">
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "illitrate",
            "name" => "education_status",
                ), "illitrate", true);
        ?>
        <label for="illitrate"><?php echo "illitrate"; ?></label>
    </div>
    <div class="col-md-5">
        <?php
        echo form_radio(array(
            "id" => "school",
            "name" => "education_status",
                ), "school", false);
        ?>
        <label for="school"><?php echo "Primary / Intermediate / Secondary"; ?></label>
    </div>
    <div class="col-md-4">
        <?php
        echo form_radio(array(
            "id" => "university",
            "name" => "education_status",
                ), "university", false);
        ?>
        <label for="university" class=""><?php echo "University"; ?></label>
    </div>
</div>

<h5>History of Recent Change in body weight over the last few months
</h5>
<div class="form-group">
    <div class="col-md-4"> 
        <?php
        echo form_radio(array(
            "id" => "none",
            "name" => "recent_change_status",
                ), "none", true);
        ?>
        <label for="none" class="mr15"><?php echo "No Recent Change"; ?></label>
    </div>
    <div class="col-md-4">
        <?php
        echo form_radio(array(
            "id" => "increased",
            "name" => "recent_change_status",
                ), "increased", false);
        ?>
        <label for="increased" style="margin-right: 30px"><?php echo "Increased"; ?></label>
    </div>
    <div class="col-md-4">
        <?php
        echo form_radio(array(
            "id" => "decreased",
            "name" => "recent_change_status",
                ), "decreased", false);
        ?>
        <label for="decreased" class=""><?php echo "Decreased"; ?></label>  
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

<h5>Diseases and chronical condition:</h5>
<div class="form-group">
    <div>
        <?php

        $Diseases = array("hypertension", "cardiac", "triglycreide", "highcholesterol", "colitis", "hepatitisA", "hepatitisB", "hepatitisC", "hypotension", "anemia", "pregnant_first","pregnant_second","pregnant_third","lactaiting","kidneystonesO","kidneystonesC","liverfat", "breastcancer","obecity_first","obecity_second","morbiditobecity","ulcer","complementaryfeed","overweight","underweight","severunder","gout","medical_supplement_feeds", "diab_type1", "diab_type2","gdm","ngt","nutrition_assessment","other");

        foreach ($Diseases as $disease) { ?>
        <div class="col-md-4">
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

<h5>Women History:</h5>
<div class="form-group">
   
    <div>
        <?php
            $women_history = array("amenorrhea", "menopause", "irrgular_mens", "excess_bleed", "infertility","other");

            foreach ($women_history as $item) { ?>
            <div class="col-md-4">
            <?php
                echo form_checkbox("women_history[]", $item, false, "id='$item'");
            ?>
            <label for="<?php echo '$item' ?>">
                <?php echo lang($item); ?>            
            </label>
            </div>

        <?php } ?>

        <div>
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
    </div>

</div>

<h5> Symptoms Suggestive of mood or eating Disordres:</h5>
<div class="form-group">
    
    <div>
        <?php
            $mood = array("depression", "anxiety", "bulimia", "binge", "other_psyc");

            foreach ($mood as $item) { ?>
            <div class="col-md-6">
            <?php
                echo form_checkbox("mood[]", $item, false, "id='$item'");
            ?>
            <label for="<?php echo '$item' ?>">
                <?php echo lang($item); ?>            
            </label>
            </div>

        <?php } ?>
  
        <div>
            <?php
                echo form_input(array(
                    "id" => "other",
                    "name" => "mood",
                    "value" => "", //$model_info->recent_change_weight,
                    "class" => "form-control",
                    "placeholder" => "others"            
                ));
            ?> 
        </div>
    </div>
</div>

<h5> Medication / Hrebs use:</h5>
<h5>History of Smoking and Alcohol Drinking</h5>
<h5>If somker, What type of smoking and how frequent perday</h5>
<div class="form-group">
    <label for="title" class=" col-md-2">
        <?php echo "Type"; ?>            
    </label>
    <div class=" col-md-4" style="margin-right: 30px">
        <?php
        echo form_input(array(
            "id" => "smoke_type",
            "name" => "smoke_type",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Smoke Type"            
        ));
        ?> 
    </div>
    <label for="title" class=" col-md-2">
        <?php echo "Frequancy"; ?>
    </label>
    <div class=" col-md-3">
        <?php
        echo form_input(array(
            "id" => "smoke_frequent",
            "name" => "smoke_frequent",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Frequancy"            
        ))
        ?>
    </div>
</div>

<h5>If Alcohol drinker, What type and how frequent per day/week</h5>
<div class="form-group">
    <label for="title" class=" col-md-2">
        <?php echo "Type"; ?>            
    </label>
    <div class=" col-md-4" style="margin-right: 30px">
        <?php
        echo form_input(array(
            "id" => "alcohol_type",
            "name" => "alcoho_type",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Alcohol Type"            
        ));
        ?> 
    </div>
    <label for="title" class=" col-md-2">
        <?php echo "Frequancy"; ?>
    </label>
    <div class=" col-md-3">
        <?php
        echo form_input(array(
            "id" => "alcohol_frequent",
            "name" => "alcohol_frequent",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Frequancy"            
        ))
        ?>
    </div>
</div>

<h5> Family History:</h5>
<div class="form-group">
    
    <div>
        <?php
            $history = array("obesity", "DM", "hypertension", "hypercholostrol", "coronry", "stoke", "other");

            foreach ($history as $item) { ?>
            <div class="col-md-4">
            <?php
                echo form_checkbox("family_history[]", $item, false, "id='$item'");
            ?>
            <label for="<?php echo '$item' ?>">
                <?php echo lang($item); ?>            
            </label>
            </div>

        <?php } ?>
  
        <div>
            <?php
                echo form_input(array(
                    "id" => "other",
                    "name" => "family_history",
                    "value" => "", //$model_info->recent_change_weight,
                    "class" => "form-control",
                    "placeholder" => "others"            
                ));
            ?> 
        </div>
    </div>
</div>

<h5> Whose Idea was it to lose weight:</h5>
<div class="form-group">
    
    <div>
        <?php
            $idea = array("patient", "family", "health", "other");

            foreach ($idea as $item) { ?>
            <div class="col-md-3">
            <?php
                echo form_checkbox("idea[]", $item, false, "id='$item'");
            ?>
            <label for="<?php echo '$item' ?>">
                <?php echo lang($item); ?>            
            </label>
            </div>

        <?php } ?>
  
        <div>
            <?php
                echo form_input(array(
                    "id" => "other",
                    "name" => "idea",
                    "value" => "", //$model_info->recent_change_weight,
                    "class" => "form-control",
                    "placeholder" => "others"            
                ));
            ?> 
        </div>
    </div>
</div>

<h5> Indicate the patient's main resons to lose weight now?</h5>
<div class="form-group">
    
    <div>
        <?php
            $reason = array("health_benefits", "cosmetic", "social", "other");

            foreach ($reason as $item) { ?>
            <div class="col-md-3">
            <?php
                echo form_checkbox("reason[]", $item, false, "id='$item'");
            ?>
            <label for="<?php echo '$item' ?>">
                <?php echo lang($item); ?>            
            </label>
            </div>

        <?php } ?>
  
        <div>
            <?php
                echo form_input(array(
                    "id" => "other",
                    "name" => "reason",
                    "value" => "", //$model_info->recent_change_weight,
                    "class" => "form-control",
                    "placeholder" => "others"            
                ));
            ?> 
        </div>
    </div>
</div>


<h5>
    Did the Patient try any weight loss regime before?
</h5>
<div class="form-group">    
        <div class="col-md-3">
            <?php
            echo form_radio(array(
                "id" => "yes_regime",
                "name" => "regime",
                    ), "yes", true);
            ?>
            <label for="yes_regime" class="mr15"><?php echo "Yes"; ?></label>
        </div>
        <div class="col-md-3">
            <?php
            echo form_radio(array(
                "id" => "no_regime",
                "name" => "regime",
                    ), "no", false);
            ?>
            <label for="no_regime"><?php echo "No"; ?></label>
        </div>       
    
</div>
<h5>If Yes discuss the details:</h5>
<div class="form-group">
    <label for="title" class=" col-md-1"><?php echo "Type"; ?></label>
    <div class=" col-md-6">
        <?php
        echo form_input(array(
            "id" => "regime_type",
            "name" => "regime_type",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Type"            
        ));
        ?> 
    </div>
    <label for="title" class=" col-md-1"><?php echo "Duratoin"; ?></label>
    <div class=" col-md-3">
        <?php
        echo form_input(array(
            "id" => "regime_duration",
            "name" => "regime_duration",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Month"            
        ))
        ?>
    </div>
</div>

<div class="form-group">
    <label for="title" class="col-md-2"><?php echo "Result"; ?></label>
    <div class=" col-md-10" style="margin-bottom: 10px">
        <?php
        echo form_input(array(
            "id" => "regime_result",
            "name" => "regime_result",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Result"            
        ));
        ?> 
    </div>
    <label for="title" class=" col-md-2"><?php echo "Complicatoins"; ?></label>
    <div class=" col-md-10">
        <?php
        echo form_input(array(
            "id" => "regime_complication",
            "name" => "regime_complication",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Complications"            
        ))
        ?>
    </div>
    <label for="title" class=" col-md-12"><?php echo "Reason of Failure"; ?></label>
    <div class=" col-md-12">
        <?php
        echo form_input(array(
            "id" => "regime_failure",
            "name" => "regime_failure",
            "value" => "", //$model_info->recent_change_weight,
            "class" => "form-control",
            "placeholder" => "Reason of Failure"            
        ))
        ?>
    </div>
</div>


<h5>
    Did the Patient expect support from family/friends ?"
</h5>
<div class="form-group">
        <div class="col-md-3">
            <?php
            echo form_radio(array(
                "id" => "yes_support",
                "name" => "support",
                    ), "yes", true);
            ?>
            <label for="yes_support" class="mr15"><?php echo "Yes"; ?></label>
        </div>
        <div class="col-md-3">
            <?php
            echo form_radio(array(
                "id" => "no_support",
                "name" => "support",
                    ), "no", false);
            ?>
            <label for="no_support"><?php echo "No"; ?></label>
        </div>        
</div>

<h5>
    Life Style Assement (most of the time)
</h5>
<h5>Please tick if frequently:</h5>
<div class="form-group">
    <div>
        <?php
            $life_style = array("meals", "snack", "tv_eat", "fast_food", "high_energy", "stress_eat", "machinary");

            foreach ($life_style as $item) { ?>
            <div class="col-md-12">
            <?php
                echo form_checkbox("life_style[]", $item, false, "id='$item'");
            ?>
            <label for="<?php echo '$item' ?>">
                <?php echo lang($item); ?>            
            </label>
            </div>

        <?php } ?>
    </div>
</div>

<h5>Meals are prepared by:</h5>
<div class="form-group">
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "patient",
            "name" => "meal_prepare",
                ), "patient", true);
        ?>
        <label for="patient" class="mr15"><?php echo "Patient"; ?></label>
    </div>
    <div class="col-md-3">
        <?php
        echo form_radio(array(
            "id" => "parents",
            "name" => "meal_prepare",
                ), "parents", false);
        ?>
        <label for="parents" class="mr15"><?php echo "Parents / Partners"; ?></label>
    </div>
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "cook",
            "name" => "meal_prepare",
                ), "divorced", false);
        ?>
        <label for="cook" class=""><?php echo "cook"; ?></label>
    </div>
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "resturants",
            "name" => "meal_prepare",
                ), "resturants", false);
        ?>
        <label for="resturants" class=""><?php echo "Resturants"; ?></label>
    </div> 
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "other",
            "name" => "meal_prepare",
                ), "other", false);
        ?>
        <label for="other" class=""><?php echo "Other"; ?></label>
    </div> 

</div>


<h5>Physical Activity:</h5>
<div class="form-group">
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "patient",
            "name" => "meal_prepare",
                ), "patient", true);
        ?>
        <label for="patient" class="mr15"><?php echo "Patient"; ?></label>
    </div>
    <div class="col-md-3">
        <?php
        echo form_radio(array(
            "id" => "parents",
            "name" => "meal_prepare",
                ), "parents", false);
        ?>
        <label for="parents" class="mr15"><?php echo "Parents / Partners"; ?></label>
    </div>
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "cook",
            "name" => "meal_prepare",
                ), "divorced", false);
        ?>
        <label for="cook" class=""><?php echo "cook"; ?></label>
    </div>
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "resturants",
            "name" => "meal_prepare",
                ), "resturants", false);
        ?>
        <label for="resturants" class=""><?php echo "Resturants"; ?></label>
    </div> 
    <div class="col-md-2">
        <?php
        echo form_radio(array(
            "id" => "other",
            "name" => "meal_prepare",
                ), "other", false);
        ?>
        <label for="other" class=""><?php echo "Other"; ?></label>
    </div> 

</div>
