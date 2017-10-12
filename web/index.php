<?php

include __DIR__ . '/../vendor/autoload.php';

use Silex\Application;

$app = new Application();

$app['debug'] = true;

include('../app/routing.php');

$app->register(new Silex\Provider\TwigServiceProvider(), [
  'twig.path' => __DIR__ . '/View'
]);
$app->register(new Silex\Provider\AssetServiceProvider(), [
  'assets.version' => 'v1',
  'assets.version_format' => '%s?version=%s',
  'assets.named_packages' => [
    'css' => ['base_path' => '/css'],
    'js' => ['base_path' => '/js'],
    'img' => ['base_path' => '/img']
  ]
]);
$app->register(new Silex\Provider\DoctrineServiceProvider(), [
  'db.options' => [
    'driver'    => 'pdo_mysql',
    'host'      => 'localhost',
    'dbname'    => 'CV',
    'user'      => 'root',
    'password'  => 'root',
    'charset'   => 'utf8mb4'
  ]
]);

$app->run();

 ?>
