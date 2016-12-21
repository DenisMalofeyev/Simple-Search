<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru" xml:lang="ru">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>{title}</title>
	<link rel="stylesheet" type="text/css" href="{THEME}/reset.css" />
	<link rel="stylesheet" type="text/css" href="{THEME}/style.css" />
        <link href="/include/js_suggest/SuggestFramework.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/include/js_suggest/SuggestFramework.js"></script>
	<script type="text/javascript">window.onload = initializeSuggestFramework;</script>
    <link rel="stylesheet" href="./templates/default/keyboard/styles00.css" type="text/css">
    <script type="text/javascript" src="./templates/default/keyboard/global00.js" charset="utf-8"></script>
    <script type="text/javascript" src="./templates/default/keyboard/common00.js" charset="utf-8"></script>
	<script type="text/javascript">
	rol.addEventHandler(window, 'load', _onload, false);
	</script>
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
		<a id="virt_keyboard" href='' onfocus='this.blur();' class='search_vk' onmouseout='glob["table_over"]=0' onmouseover='glob["table_over"]=1;' onclick='kbrd.createKeyboard();return false;' title="{text_klava}">{text_klava}&#160;&#160;<img src="{THEME}/images/a-z.png" alt="" /></a>
		<div style="clear:both;"></div>
	</div>
	<div id="baner">
		<a href="http://magicsearch.pp.ua/" ><img src="{THEME}/images/baner.png" alt="magic saearch baner" /></a>
	</div>
		
	<div id="search">
<form action="search.php" method="get" name="aport_search" class="top_menu" onSubmit="return validateForm(this)">
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
							<td style="vertical-align:top;">
                            <input type="text" name="query" class="search_box"  id="query" size="40"   action="include/js_suggest/suggest.php" columns="2" autocomplete="off"  delay="1500" value="" />	</td>
                            
                            <input type="hidden" name="search" value="1" />
							<td style="width:110px;"><input id="search_submit" type="submit" value="{text_searc}" /></td>
						</tr>
					</table>
				</div>
				<div id="search_c_2_3">
					<a id="mega_search_link" href="search.php?adv=1" title="{text_search_all}">{text_search_ras}</a>
				</div>
			</div>	
			<div id="search_c_1">
			<a href="/" >	<img src="{THEME}/images/logo.png" alt="" /> </a>
			</div>
		</div>
		<div id="search_right"></div>
		</form>
      
		<div style="clear:both;"></div>
	</div>
	
    
	<div id="content">
	 <div id="keyboard"></div>
		<div id="sct_1"><h1>{cat}</h1></div>
	
		<div id="categories">
			<div class="category_tr">
				<div class="category_td"><a href="search.php?catid=1">{cat_avto}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=2">{cat_admin}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=2">{cat_banki}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=4">{cat_bezopasnost}</a></div>
			</div>
			<div class="category_tr">
				<div class="category_td"><a href="search.php?catid=5">{cat_business}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=6">{cat_goroda}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=7">{cat_dom}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=8">{cat_design}</a></div>
			</div>
			<div class="category_tr">
				<div class="category_td"><a href="search.php?catid=9">{cat_geleso}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=10">{cat_klub}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=11">{cat_tv}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=12">{cat_games}</a></div>
			</div>
			<div class="category_tr">
				<div class="category_td"><a href="search.php?catid=13">{cat_iskustvo}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=14">{cat_kino}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=31">{cat_rabota}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=16">{cat_lit}</a></div>
			</div>
			<div class="category_tr">
				<div class="category_td"><a href="search.php?catid=17">{cat_medic}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=18">{cat_music}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=19">{cat_nauk}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=23">{cat_pogoda}</a></div>
			</div>
			<div class="category_tr">
				<div class="category_td"><a href="search.php?catid=26">{cat_soft}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=29">{cat_pro4ie}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=32">{cat_radio}</a></div><div class="cat_sep">&#160;</div>
				<div class="category_td"><a href="search.php?catid=41">{cat_umor}</a></div>
			</div>
		</div>
		
		<div style="clear:both;"></div>
		
		<div style="width:710px; margin-top:30px; margin-left:auto; margin-right:auto;">
			<div style="width:200px; float:left;">
				<div id="sct_2"><h1>{text_news}</h1></div>
                      {content}	
			</div>
			<div style="width:55px; float:left;">&#160;</div>
			<div style="width:200px; float:left;">
				<div id="sct_3"><h1>{text_newsites}</h1></div>
				
				{sites5}

				
			</div>
			<div style="width:55px; float:left;">&#160;</div>
			<div style="width:200px; float:left;">
				<div id="sct_4"><h1>{text_info}</h1></div>

				<div class="info_c">{text_ip}: {ip}</div>
				<div class="info_c">{text_browser}: {browser}</div>
				<div class="info_c">{text_screen}: <script language="JavaScript">
<!--
var height=0; var width=0;
if (self.screen) {
width = screen.width
height = screen.height
}
else if (self.java) {
var jkit = java.awt.Toolkit.getDefaultToolkit();
var scrsize = jkit.getScreenSize();
width = scrsize.width;
height = scrsize.height;
}
//-->
</script> 
<script language="JavaScript">
<!--
if (width > 0 && height > 0) {
document.writeln(' ',width,'x',height)
} else {
document.writeln('<b>неизвестно</b>')
} 
//-->
</script></div>
				
				<div id="sct_5"><h1>{text_popsearches}</h1></div>
				
				<div id="s_words">
				{zapros}
				</div>
				
			</div>
		</div>
		
		<div style="clear:both;"></div>
		
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
