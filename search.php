<?php

error_reporting(E_ALL);
$include_dir = "./include";
$template_dir = "./templates";
$settings_dir = "./settings";

################Made by VarriableID (forcdding@gmail.com)###################################
include "$include_dir/ez_sql_core.php"; # включаем абстрактный класс запросов
include "$include_dir/ez_sql_mysql.php";# он же именно для версии mysql

function searchdb ($query){ #открываем функцию поиска
$db = new ezSQL_mysql('superuser','superuser', 'aliba156_kottok', 'localhost');#  коннект к бд каталога
$text = ''; # переменная вывода поиска
$query = trim($query);# Обрезаем пробелы и спецсимволы
$query = strip_tags($query); # Удаляем HTML и PHP теги
$query = mysql_real_escape_string($query); # Экранируем специальные символы
if(empty($query)){$text = '<p>Введите поисковый запрос.</p>';} # если запрос пуст
else if(!empty($query)){ # если запрос НЕ ПУСТ то
    if(strlen($query) < 4){ # если длинна запроса меньше 4 то
    $text = '<p>короткий поисковый запрос.</p>';} 
  else if(strlen($query) > 128){ # также Если более 128 символов то
    $text = '<p>длинный поисковый запрос.</p>';} 
  else{ # в оставшихся случаях
#запрос-конвертация в переменную имя - заголовок	
$name = $db->get_var("SELECT name FROM `catalog_goods` WHERE `name` LIKE '%$query%'|| NULL OR `description` LIKE '%$query%' || NULL OR `keywords` LIKE '%$query%'|| NULL  OR `tags` LIKE '%$query%' || NULL");	
#запрос-конвертация в переменную описание 
$description =$db->get_var("SELECT description FROM `catalog_goods` WHERE `name` LIKE '%$query%'|| NULL OR `description` LIKE '%$query%' || NULL OR `keywords` LIKE '%$query%'|| NULL  OR `tags` LIKE '%$query%' || NULL");	
$text .= '<H1 style="text-align:center;">По вашему запросу  '.$query.' найдено: </H1></br> <h2 style="text-align:center;"  >'.$name.'</h2></br> <p>'.$description.'</p>
';

}
      }
return $text; } 
###################################################
require_once("$settings_dir/database.php");
require_once("$include_dir/searchfuncs.php");

require_once("$include_dir/categoryfuncs.php");

include "$settings_dir/conf.php";


include "$include_dir/zapret.inc.php";





include ("$include_dir/commonfuncs.php");
if (isset($_GET['searchdb']))
        $search = $_GET['searchdb'];
if (isset($_GET['query']))
        $query = $_GET['query'];
if (isset($_GET['search']))
        $search = $_GET['search'];
if (isset($_GET['domain']))
        $domain = $_GET['domain'];
if (isset($_GET['type']))
        $type = $_GET['type'];
if (isset($_GET['catid']))
        $catid = $_GET['catid'];
if (isset($_GET['category']))
        $category = $_GET['category'];
if (isset($_GET['results']))
        $results = $_GET['results'];
if (isset($_GET['start']))
        $start = $_GET['start'];
if (isset($_GET['adv']))
        $adv = $_GET['adv'];


if ($type != "or" && $type != "and" && $type != "phrase") {
        $type = "and";
}

if (preg_match("/[^a-z0-9-.]+/", $domain)) {
        $domain="";
}


if ($results != "") {
        $results_per_page = $results;
}

if (get_magic_quotes_gpc()==1) {
        $query = stripslashes($query);
}

if (!is_numeric($catid)) {
        $catid = "";
}

if (!is_numeric($category)) {
        $category = "";
}



if ($catid && is_numeric($catid)) {

        $tpl_['category'] = sql_fetch_all('SELECT category FROM '.$mysql_table_prefix.'categories WHERE category_id='.(int)$_REQUEST['catid']);
}

$count_level0 = sql_fetch_all('SELECT count(*) FROM '.$mysql_table_prefix.'categories WHERE parent_num=0');
$has_categories = 0;

if ($count_level0) {
        $has_categories = $count_level0[0][0];
}



$file = file_get_contents("$template_dir/$template/search_form.tpl");
include ("$include_dir/shablon.php");
print  $file;


function getmicrotime(){
    list($usec, $sec) = explode(" ",microtime());
    return ((float)$usec + (float)$sec);
    }






    <?php
}


function saveToLog ($query, $elapsed, $results) {
        global $mysql_table_prefix;
    if ($results =="") {
        $results = 0;
    }

    //mysql_query("SET NAMES `utf8`");

    $query =  "insert into ".$mysql_table_prefix."query_log (query, time, elapsed, results) values ('".mysql_real_escape_string($query)."', now(), '".mysql_real_escape_string($elapsed)."', '".mysql_real_escape_string($results)."')";
        mysql_query($query);

        echo mysql_error();

}

switch ($search) {
        case 1:

                if (!isset($results)) {
                        $results = "";
                }
                $search_results = get_search_results($query, $start, $category, $type, $results, $domain);
                require("$template_dir/$template/search_results.tpl");
        break;
        default:
                if ($show_categories) {
                        if ($_REQUEST['catid']  && is_numeric($catid)) {
                                $cat_info = get_category_info($catid);
                        } else {
                                $cat_info = get_categories_view();
                        }
                        require("$template_dir/$template/categories.tpl");
                }
        break;
        }


//require("$template_dir/$template/footer.tpl");
$file1 = file_get_contents("$template_dir/$template/footer.tpl");
$file1 = preg_replace("/\{([a-z0-9_]+)}/ie", "\$sph_messages['$1']",$file1);
print $file1;
?>