<?php

namespace Project\Model;

class FormationModel
{

    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function findAll()
    {
        $forms = $this->db->fetchAll('SELECT Id, SchoolName, DateGraduate, Geo, FormName FROM Formation');
        return $forms;
    }
}

?>
