<?php

namespace Project\Model;

class FromCVModel{

    private $db;

    public function __construct($db){
        $this->db = $db;
    }

    public function insertIntoAction($name, $firstName, $email, $tel, $sujet, $message){
        $this->db->updateExecute('INSERT INTO Contact (NameContact, FirstNameContact, EmailContact, TelContact, SubjectMessage, MessageContact, TimestampCreation) VALUES (?,?,?,?,?,?,NOW())', [$name, $firstName, $email, $tel, $sujet, $message]);
    }
}

?>
