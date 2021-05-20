<?php

class Food_item_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'food_comp';
        parent::__construct($this->table);
    }

    function get_details($options = array()) {
        

        $sql = "SELECT * from food_comp";
        return $this->db->query($sql);
    }

    function get_item_suggestion($item_name = "") {

        $item_name = $this->db->escape_str($item_name);

        $sql = "SELECT food_comp.english
        FROM food_comp
        WHERE food_comp.english LIKE '%$item_name%'
        ORDER BY id DESC LIMIT 10
        ";

        return $this->db->query($sql)->result();
    }

    function get_item_info_suggestion($item_name = "") {

        
        $item_name = $this->db->escape_str($item_name);

        $sql = "SELECT food_comp.*, food_cat.cat_name as cat_name
        FROM food_comp
        left join food_cat on (food_comp.cat = food_cat.id)
        WHERE food_comp.english LIKE '%$item_name%'
        ORDER BY id DESC LIMIT 1
        ";

        $result = $this->db->query($sql);

        if ($result->num_rows()) {
            return $result->row();
        }
    }

}
