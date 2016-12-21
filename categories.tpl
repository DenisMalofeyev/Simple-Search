<?php if ($catid && is_numeric($catid)){?>

	<!-- category tree -->
	<br/>
	<div id="line_3">
	<a class="topik" href="search.php"><?php print $sph_messages['Categories']?></a> >
	<?php foreach ($cat_info['cat_tree'] as $_val){?>
		<a class="topik" href="?catid=<?php print $_val['category_id']?>"><?php print $_val['category']?></a> >
   
	<?php  }?>
	</div>
	
	
	<!-- list of sub-categories -->
	<?php if ($cat_info['subcats']){?>
		<div class="catBanner"><?php print $sph_messages['Categories']?></div><br/>
		<?php foreach ($cat_info['subcats'] as $_key => $_val){?>
			<a href="?catid=<?php print $_val['category_id']?>"><b><?php print $_val['category']?></b></a> (<?php print $_val['count'][0][0]?>)<br>
		<?php  }?>
	<?php  }?>
		
		
	<!-- list of category web pages -->
	<?php if ($cat_info['cat_sites']){?>
		<div class="webPageBanner"><?php print $sph_messages['Web pages']?></div><br/>
		<?php foreach ($cat_info['cat_sites'] as $_key => $_val){?>
			<table width="100%" border="0">
  <tr>
    <td width="1.5%"><?php print $_key + 1?>.</td>
    <td width="2%"><img src="templates/default/images/ico-stat.gif"></td>
    <td width="95%"><a class="topik" href="<?php print $_val['url']?>"><?php print $_val['title']?></a></td>
  </tr>
</table>

		<?php  }?>		
	<?php  }?>	 
<div class="divline">
</div>

<?php } else {?>



	<!-- category selection -->
	<?php if ($cat_info['main_list']){?>
	<center><br>
		<div id="cat_main">	
		<strong><?php print $sph_messages['CATEGORIES']?></strong>
       <center> <hr style=" width:190px; border:2px  dashed #999999;"></center><br>
		</div>

		<table  style="border:#999999 solid 1px;"   cellpadding="4">
		<tr >
		<?php foreach ($cat_info['main_list'] as $_key => $_val){
			$col_width=100/$cat_columns?>
			<td width="<?php print $col_width?>%"> 
				<a href="?catid=<?php print $_val['category_id']?>" class="catalog"><?php print $_val['category']?></a><br>&nbsp;&nbsp;
				<?php if (is_array($_val['sub'])) {
				foreach ($_val['sub'] as $__key => $__val){?>
					<!-- only 3 subcategories -->
					<?php if ($__key > 2) break?>
					<a href="?catid=<?php print $__val['category_id']?>" class="catalog"><?php print $__val['category']?></a>
				<?php  }?>
				<?php }?>
			</td>	
			<!-- column nr defined in config -->
			<?php if (!(($_key +1)% $cat_columns)) {?></tr><tr><?php  }?>
		<?php  }?>
		</tr>
		</table>
	<?php  }?>
<?php  }?>
<br>
		
	
	<br><br><br><br><br>
	

	





