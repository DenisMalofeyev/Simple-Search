<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru" xml:lang="ru">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>{newstitle} - {title}</title>
	<link rel="stylesheet" type="text/css" href="{THEME}/reset.css" />
	<link rel="stylesheet" type="text/css" href="{THEME}/style.css" />
</head>

<body>

<script language="JavaScript" type="text/javascript">
function set_this(search_link)
{
	var pat = new RegExp("search_link_([0-9]+)", "i");
	for(var i = 1; i <= 3; i += 1)
	{
		document.getElementById('search_link_'+i).style.color = '#ff9933';
		document.getElementById('search_ar_'+i).innerHTML = '';
	}
	search_link.style.color = '#666666';
	
	var arid = pat.exec(search_link.id);
	document.getElementById('search_ar_'+arid[1]).innerHTML = '<img src="{THEME}/images/ar_1.png" alt="" />';
}
</script>

<div id="main">

	<div id="head_1">
		<div id="head_1_1">
			<a id="home_link" href="start" title="{text_start}"><img src="{THEME}/images/home.png" alt="" />&#160;&#160;{text_start}</a>
		</div>
		<div id="head_1_2">
			<a id="mail_link" href="feedback" title="{text_feedback}">{text_feedback}&#160;&#160;<img src="{THEME}/images/mail.png" alt="" /></a>
		</div>
		<div style="clear:both;"></div>
	</div>
	
	<div id="head_2">

    <script type="text/javascript" src="{THEME}/keyboard/common00.js" charset="utf-8"></script>
	<script type="text/javascript">
	rol.addEventHandler(window, 'load', _onload, false);
	</script>
		<div style="clear:both;"></div>
	</div>
		
	<div id="search">
		<form action="search.php" method="get" >
		<div id="search_left"></div>
		<div id="search_c">
			<div id="search_c_2">
				<div id="search_c_2_1">
					<table style="text-align:center;">
						<tr>
							<td><a id="search_link_1" href="" title="{text_web}" onclick="set_this(this); return false;">{text_web}</a></td><td>&#160;&#160;|&#160;&#160;</td>
							<td><a id="search_link_2" href="search_img.php" title="{text_img}">{text_img}</a></td><td>&#160;&#160;|&#160;&#160;</td>

						</tr>
						<tr style="height:3px;">
							<td id="search_ar_1"><img src="{THEME}/images/ar_1.png" alt="" /></td><td></td>
							<td id="search_ar_2"></td><td></td>
							<td id="search_ar_3"></td>
						</tr>
					</table>
				</div>
				<div id="search_c_2_2">
					<table style="width:100%;">
						<tr>
							<td style="vertical-align:top;"> <input type="text" name="query" class="search_box"  id="query" size="40"   columns="2" autocomplete="off"  delay="1500" value="">	</td>
                            <input type="hidden" name="search" value="1" />
							<td style="width:110px;"><input id="search_submit" type="submit" value="{text_searc}" /></td>
						</tr>
					</table>
				</div>
				<div id="search_c_2_32">
			
					<div id="search_c_2_32_2">
						<a id="mega_search_link" href="search.php?adv=1" title="{text_search_ras}">{text_search_ras}</a>
					</div>
				</div>
			</div>	
			<div id="search_c_1">
				<a href="/" ><img src="{THEME}/images/logo.png" alt="" /></a>
			</div>
		</div>
		<div id="search_right"></div>
		</form>
		<div style="clear:both;"></div>
	</div>
	<div style="height:1px;"></div>
	<div id="line_2">
		<img src="{THEME}/images/06.png" alt="" />&#160;&#160;{newstitle}
	</div>
	
	<div id="content">
<div style="padding-left:10px;">
<strong>{newstitle}</strong>
<hr style="border:1px #999999 dashed;" />
{text}
</div>		
	</div>
	
	<div id="afooter"></div>
	
</div>
	
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
