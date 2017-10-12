<?php

namespace Project\Model;

class ExperienceModel{

    private $db;

    public function __construct($db){
        $this->db = $db;
    }

    public function findAll(){
        $e = $this->db->fetchAll('SELECT Id, CompanyName, DateIn, Descrip, GeoExp FROM Experience');
        return $e;
    }
}

?>
