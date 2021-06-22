<?php

include_once './dbh.inc.php';
include_once './functions.inc.php';


createRating($conn, $_POST['pasirinkimas'], $_POST['vertinimas']);