<?php if (!@include_once('../vendor/autoload.php')) echo "You must install package to start app.";

$templateName = '';
if (!empty($_GET['page'])) {
    $templateName = trim($_GET['page']);
}
else {
    $templateName = 'presentation';
}

require __DIR__.'/../src/templates/header.tpl.php';
require __DIR__.'/../src/templates/'.$templateName.'.tpl.php';
require __DIR__.'/../src/templates/footer.tpl.php';