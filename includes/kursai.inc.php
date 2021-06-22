<?php

include_once 'includes/dbh.inc.php';
include_once 'includes/functions.inc.php';

$kursaiquery = "SELECT * from kursai ORDER by ID ASC;";
$kursairesult = mysqli_query($conn, $kursaiquery);
$autoriusquery = "SELECT * from autoriai ORDER by ID ASC;";
$autoriusresult = mysqli_query($conn, $autoriusquery);
$komentaraiquery = "SELECT * from komentarai ORDER by ID ASC;";
$komentarairesult = mysqli_query($conn, $komentaraiquery);
$reitingaiquery = "SELECT * from reitingai ORDER by ID ASC;";
$reitingairesult = mysqli_query($conn, $reitingaiquery);

kursaiLoader($kursairesult, $autoriusresult, $komentarairesult, $reitingairesult);

// echo $autoriusresult;