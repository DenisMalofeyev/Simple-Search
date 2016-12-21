<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Админцентр</title>
<link rel="stylesheet" type="text/css" href="/admin/templates/style.css">
<link rel="stylesheet" type="text/css" href="/admin/templates/paginator.css">
<script language="javascript" src="/admin/js/jquery.js"></script>
<script language="javascript" src="/admin/js/jquery.form.js"></script>
</head>

<script language="javascript">
function delImage(id) {
	$.get('imgadmin.php?ajaxdelimg&id='+id, function (data) {
		$('#img_'+id).html(data);
	});
	return false;
}
</script>

<div><strong>Просмотр картинок | <input name='back' style="border:1px #666666 solid;" type='button' value='Вернуться назад' onclick='javascript:self.back();'></strong></div>
<hr style="border:1px #999999 solid">

<div class="imageslist">
	<div class='pages'>
		 {pages}
	</div>
	<ul>
 {searchres}
	</ul>
	<div class='pages'>
		{pages}
	</div>
</div>

<body>
</body>
</html>
