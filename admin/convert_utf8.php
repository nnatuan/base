<?php
$files = [
    __DIR__ . '/application/controllers/Do_banner_images.php',
    __DIR__ . '/application/helpers/ap_db_helper.php'
];
foreach ($files as $f) {
    if (file_exists($f)) {
        $content = file_get_contents($f);
        $content = str_replace("\0", "", $content);
        $encoding = mb_detect_encoding($content, 'UTF-8, Windows-1258, Windows-1252, ISO-8859-1', true);
        if ($encoding && $encoding !== 'UTF-8') {
            $content = mb_convert_encoding($content, 'UTF-8', $encoding);
        }
        file_put_contents($f, $content);
        echo "Converted " . basename($f) . " (detected: " . ($encoding ? $encoding : 'none') . ")<br>";
    }
}
