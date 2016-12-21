<?php 
/***********************
 Файл БД
***********************/
$database = 'saerch';
$mysql_user = 'saerch';
$mysql_password = 'saerch';
$mysql_host = 'localhost';
$mysql_table_prefix = '';

$success = mysql_connect ($mysql_host, $mysql_user, $mysql_password);
if (!$success)
die ("<b>Нет конекта с базой данных, проверьте правильность имени пользователя и пароля!</b>");
$success = mysql_select_db ($database);
if (!$success) {
print "<b>Нет конекта с базой данных.";
die();
}
mysql_query('set names "UTF8"');
 ?>