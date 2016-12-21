<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{searchphrase}</title>
<link rel="stylesheet" type="text/css" href="/admin/templates/style.css">
<link rel="stylesheet" type="text/css" href="/admin/templates/paginator.css">
<link rel="stylesheet" type="text/css" href="/templates/default/reset.css" />
<link rel="stylesheet" type="text/css" href="/templates/default/style.css" />
<script language="javascript" src="/admin/js/jquery.js"></script>
<script language="javascript" src="/admin/js/jquery.form.js"></script>
</head>

<script language="javascript">

$(document).ready( function () {
	$('.filter').change(function () {
		submit(1);
	});
	$('.pagesls').click( function(){
		submit($(this).attr('start'));
		return false;
	});
});

function submit(page) {
	var options = {
		target: '#searchresult',
		type: 'GET',
		data: { start: page , ajaxsearch: true},
//		success: function () { alert('asas'); },
		beforeSubmit: function(arr, $form, options) { 

		}
	};
	$('#search_form').ajaxSubmit(options);
	return false;
}

function showSearchResult(responseText, statusText, xhr, $form) {

	return false;
}
</script>

<div id="main">

	<div id="head_1">
		<div id="head_1_1">
			<a id="home_link" href="start" title="{text_start}"><img src="/templates/default/images/home.png" alt="" />&#160;&#160;{text_start}</a>
		</div>
		<div id="head_1_2">
			<a id="mail_link" href="/feedback" title="{text_feedback}">{text_feedback}&#160;&#160;<img src="/templates/default/images/mail.png" alt="" /></a>
		</div>
		<div style="clear:both;"></div>
	</div>
	
	<div id="head_2">

		<div style="clear:both;"></div>
	</div>
		
	<div id="search">
<form action="images" method="get" >
		<div id="search_left"></div>
		<div id="search_c">
			<div id="search_c_2">
				<div id="search_c_2_1">
					<table style="text-align:center;">
						<tr>
							<td><a id="search_link_1" href="" title="{text_img}" onclick="set_this(this); return false;">{text_img}</a></td><td>&#160;&#160;|&#160;&#160;</td>
							<td><a id="search_link_2" href="/index.php" title="{text_web}">{text_web}</a></td><td>&#160;&#160;|&#160;&#160;</td>

						</tr>
						<tr style="height:3px;">
							<td id="search_ar_1"><img src="/templates/default/images/ar_1.png" alt="" /></td><td></td>
							<td id="search_ar_2"></td><td></td>
							<td id="search_ar_3"></td>
						</tr>
					</table>
				</div>
				<div id="search_c_2_2">
					<table style="width:100%;">
						<tr>
							<td style="vertical-align:top;"> <input type="hidden" name="search"> <input type="text" name="phrase"  class="search_box"  id="query" size="40"  value="{searchphrase}"  columns="2" autocomplete="off"  delay="1500" ></td>
					
							<td style="width:110px;"><input id="search_submit" type="submit" value="{text_searc}" /></td>
						</tr>
					</table>  </form>
				</div>
				<div id="search_c_2_32">
					<div id="search_c_2_32_1">

					</div>
					<div id="search_c_2_32_2">
						
					</div>
				</div>
			</div>	
			<div id="search_c_1">
				<a href="/"><img src="/templates/default/images/logo.png" alt="" /></a>
			</div>
		</div>
        
      
        		<div id="search_right"></div>
        



	
		<div style="clear:both;"></div>
	</div>

	<div id="line_2"> <form method="GET" action="?" id="search_form">
<input type="hidden" name="ajaxsearch" />
<input type="hidden" name="phrase" value="{searchphrase}" />
<input type="hidden" name="curpage" value="{curpage}" />
<input type="hidden" name="page" value="{curpage}" />
<select name="perpage" class="filter">
	<option value="16" selected>{text_img_16}</option>
    <option value="20">{text_img_20}</option>
</select>
<select name="geosize" class="filter">
	<option value="all" selected>{text_img_geosize_all}</option>
    <option value="large">{text_img_geosize_large}</option>
    <option value="medium">{text_img_geosize_medium}</option>
    <option value="small">{text_img_geosize_small}</option>
</select>
<select name="filesize" class="filter">
	<option value="all" selected>{text_img_filesize_all}</option>
    <option value="20">{text_img_filesize_20}</option>
    <option value="50">{text_img_filesize_50}</option>
    <option value="100">{text_img_filesize_100}</option>
    <option value="200">{text_img_filesize_200}</option>
</select>
<select name="type" class="filter">
	<option value="all" selected>{text_img_type_all}</option>
    <option value="jpg">JPG</option>
    <option value="gif">GIF</option>
    <option value="png">PNG</option>
</select>
</form> </div>
    
<div align="center" id="filter">

</div>
<div align="center">
<ul class="infobox">
	<div id="searchresult">
   		<div class='pages'>

			{pages}
		</div><br/>
		{searchres}
		<div class='pages'>
			{pages}
		</div>
	
</ul>
</div>
	<div id="afooter"> </div>
    	<div id="footer">
		<div id="footer_1" style="z-index:1;">
			</div>
		<div id="footer_2" style="z-index:2;">
			<a href="about" title="{text_about}">{text_about}</a>&#160;&#160;|&#160;&#160;
			<a href="search.php" title="{text_catigor}">{text_catigor}</a>&#160;&#160;|&#160;&#160;
			<a href="news" title="{text_news}">{text_news}</a>&#160;&#160;|&#160;&#160;
			<a href="add" title="{text_add}">{text_add}</a>&#160;&#160;|&#160;&#160;
			<a href="help" title="{text_help}">{text_help}</a>
		</div>
	</div>	
	
</body>

</html>
<body>
</body>
</html>
