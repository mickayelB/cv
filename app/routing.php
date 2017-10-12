<?php

$app->get('/', 'Project\Controller\HomeController::indexAction')->bind('home');
$app->get('/formCV', 'Project\Controller\FormCVController::indexAction')->bind('formCV');
$app->post('/formCV', 'Project\Controller\FormCVController::postAction');



 ?>
