<?php

error_reporting(E_ALL); 
$include_dir = "./include"; 
include ("$include_dir/commonfuncs.php");

	
$include_dir = "./include"; 
$template_dir = "./templates"; 
$settings_dir = "./settings"; 


include "$settings_dir/conf.php";

require_once("$settings_dir/database.php");
require_once("$include_dir/searchfuncs.php");
require_once("$include_dir/categoryfuncs.php");



?>


<?php
if(($_REQUEST['do'] == "main") || ($_REQUEST['do']==""))
{
include ("$include_dir/sites_main.inc.php");
include ("$include_dir/news_main.inc.php");
include ("$include_dir/zapros_main.inc.php");

// шаблонизатор
$file = file_get_contents("$template_dir/$template/main.tpl");
include ("$include_dir/shablon.php");
print $file;

} ?>

