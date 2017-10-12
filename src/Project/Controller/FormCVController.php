<?php

namespace Project\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;
use Project\Model\FormCVModel;

class FormCVController{
    public function indexAction(Application $app){

        return $app['twig']->render('formCV.html.twig');

    }

    public function postAction(Application $app, Request $request){
        $name = $request->request->get('name');
        $firstName = $request->request->get('$firstName');
        $mail = $request->request->get('mail');
        $phone = $request->request->get('phone');
        $subject = $request->request->get('subject');
        $message = $request->request->get('message');

        $cvModel = new FormCVModel($app['db']);
        $cvModel->insertIntoAction($name, $firstName, $mail, $phone, $subject, $message);

        return $app->redirect($app["url_generator"]->generate("home"));
    }
}

?>
