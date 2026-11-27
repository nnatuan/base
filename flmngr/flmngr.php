<?php

require __DIR__ . '/vendor/autoload.php';

use EdSDK\FlmngrServer\FlmngrServer;

$uploadDir = __DIR__ . '/../fileman/Uploads';
if (!is_dir($uploadDir)) {
    @mkdir($uploadDir, 0777, true);
}

FlmngrServer::flmngrRequest(
    array(
        'dirFiles' => $uploadDir
    )
);