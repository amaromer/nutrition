<?php

class Patient_assessment_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'patient_assessment';
        parent::__construct($this->table);
    }
}