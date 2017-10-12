<?php

namespace Project\Controller;

use Silex\Application;
use Project\Model\ExperienceModel;
use Project\Model\FormationModel;


class HomeController{
  public function indexAction(Application $app){
      $eModel = new ExperienceModel($app['db']);
      $e = $eModel->findAll();

      $formModel = new FormationModel($app['db']);
      $forms = $formModel->findAll();


      return $app['twig']->render('home.html.twig', [
          'experience' => $e,
          'forms' => $forms
      ]);
  }
}

 ?>
