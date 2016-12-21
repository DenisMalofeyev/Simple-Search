 
 <!---VarriableID Вывод товаров из бд -->
<div class='col-sm-6 col-md-7 product-info-block'>
	<div class="product-info">
	<?php 
		if(isset($_GET['query'])){ //  Если есть запрос
 $db = new ezSQL_mysql('superuser','superuser', 'aliba156_kottok', 'localhost'); // Открываем соединение с базой данных
  $searchdb_result = searchdb($_GET['query']); //  Определяем поисковый запрос
  	  echo $searchdb_result; //  Выводим
 }
	?>
	</div>
</div>
<!---/VarriableID Вывод товаров из бд --> 
 <?php 
extract($search_results);
?>
<!--Начало вывода по запросу неччего ненайдено -->
	<div id="line_2">
		<?php if ($search_results['total_results']==0){?>

		<?php 
		$msg = str_replace ('%query', $ent_query, $sph_messages["noMatch"]);
		echo $msg;
		?>

<?php  }?>	
<!--Конец вывода по запросу неччего ненайдено -->

<?php if ($total_results != 0 && $from <= $to){?>
	<?php  
	$result = $sph_messages['Results'];
	$result = str_replace ('%from', $from, $result);
	$result = str_replace ('%to', $to, $result);
	$result = str_replace ('%all', $total_results, $result);
	$matchword = $sph_messages["matches"];
	if ($total_results== 1) {
		$matchword= $sph_messages["match"];
	} else {
		$matchword= $sph_messages["matches"];
	}

	$result = str_replace ('%matchword', $matchword, $result);	 
	$result = str_replace ('%secs', $time, $result);
	echo $result;
	?>

<?php  }?>	
        <!--Конец вывода фразы которую нашло,кол-во результатов,время-->
	</div>
    
    <table>
						<tr>
							<td width="80%">
	
	<div id="content">
	
	<!--Начало вывода фразы слвоа игнорировались -->
        	<?php if ($search_results['ignore_words']){?>
		<div id="resd_1"><div style="margin-left:20px;">	
	<?php while ($thisword=each($ignore_words)) {
		$ignored .= " ".$thisword[1];
	}		
	$msg = str_replace ('%ignored_words', $ignored, $sph_messages["ignoredWords"]); 
	echo $msg; ?>
   	</div></div>
<?php  }?>
<!--Конец вывода фразы слвоа игнорировались -->
 <?php if ($search_results['did_you_mean']){?>
		<div id="resd_1"><div style="margin-left:20px;">
	<?php echo $sph_messages['DidYouMean'];?>: <a href="<?php print 'search.php?query='.quote_replace(addmarks($search_results['did_you_mean'])).'&search=1'?>"><?php print $search_results['did_you_mean_b']; ?></a>?
  </div></div>
<?php  }?>	
 <!--Начало фразы ненадено результатов -->
       <?php if ($search_results['total_results']==0){?>
<div id="resd_1"><div style="margin-left:20px;">
   <?php echo $sph_messages['text_error_nore'];?> <br>
<?php if ($searchvpoiskovike==1){?>
<? echo "<a target='_blank' href='http://yandex.ru/yandsearch?text=$query'>Искать в Яндекс</a> - <a target='_blank' href='http://www.google.com.ua/search?q=$query'>Искать в Google</a> - <a target='_blank' href='http://www.bing.com/search?q=$query'>Искать в Bing</a> - <a target='_blank' href='http://nova.rambler.ru/srch?query=$query'>Искать в Рамблер</a>";?>
<?php  }?>	
</td>
 </div></div>
<?php  }?>	
<!--Конец фразы ненадено результатов -->

	
        <?php if (isset($qry_results)) {
?>
			<?php foreach ($qry_results as $_key => $_row){
		$last_domain = $domain_name;
		extract($_row);
		if ($show_query_scores == 0) {
			$weight = '';
		} else {
			$weight = "[$weight%]"; 
		}
        
		?>
         <?php  if ($domain_name==$last_domain && $merge_site_results == 1 && $domain == "") {?>
		<div class="idented">
		<?php }?>
         	<div class="search_result">               
    	<div class="search_result_1">
<!--Вывод FavIcon -->
<? $file = "admin/favicon/$domain_name.ico"; 
if (is_file($file)) 
print '<img width="16" height="16" src="admin/favicon/'.$domain_name.'.ico" />'; 
else 
print '<img width="16" height="16" src="include/modules/favicon.png" />'; ?>
<!--Конец вывода FavIcon -->
  <?php print $num?>. <a href="<?php print $url?>" title="<? print $domain_name?>"> <?php print ($title?$title:$sph_messages['Untitled'])?></a>
			</div>
	 		<div class="search_result_2">
				<div class="search_result_5"><?php print $fulltxt?></div>
			</div>
			<div class="search_result_3">
				<div class="search_result_5"><? print $domain_name?> (<?php print $page_size?>)<?php if ($oststr==1){?> - <a href="<?php print 'search.php?query='.quote_replace(addmarks($query)).'&search=1&results='.$results_per_page.'&domain='.$domain_name?>" title="Остальные страницы">Остальные страницы</a><?php  }?>
                
                <?php if ($podrobno==1){?> - <img id="qlook_bti<? print $num ?>" src="./templates/default/images/open0000.gif" width=11 height=11 align="absmiddle">&nbsp;<a class="qlook" id="qlook_btn<? print $num ?>" 
                	href="javascript:qlook(<? print $num ?>,'Предпросмотр','Развернуть','Закрыть предпросмотр')">Предпросмотр</a> <?php  }?>
	</div>
			</div>



			<div class="search_result_4">
     <?php if ($podrobno==1){?>        <div style="padding-left:26px;">
           
							<span id="qlook_spn<? print $num ?>" style="display: none;"><img
							id="qlook_mmi<? print $num ?>" src="./templates/default/images/max00000.gif"
							width=11 height=11 align="absmiddle">&nbsp;<a class="qlook"
							id="qlook_mmb<? print $num ?>"
							href="javascript:qlookmm(<? print $num ?>,'Развернуть','Свернуть')">Развернуть</a>
						<span id="qlook_mms<? print $num ?>"></span><img
							src="./templates/default/images/home0000.gif" width=11 height=12 align="absmiddle">&nbsp;<a
							class="qlook" id="qlook_ghb<? print $num ?>"
							href="javascript:qlookgh(<? print $num ?>)">Главная сайта</a></span>
							</span>	<span id="qlookframe0" style="">
						<iframe	id="qlook_fra<? print $num ?>" src="" src1="<?php print $url2?>" loaded="0" width="99%" height="300" scrolling="auto" style="display: none; margin-top: 3px;"></iframe>
						<div align="center" id="qlook_lsi<? print $num ?>"
							style="display: none; margin: 0;"><img
							src="./templates/default/images/q_l10000.gif" alt="Loading..." width="239"
							height="20" style="margin-top: 20px; margin-bottom: 250px;" /></div>
						</span></div>
			</div>		 <?php  }?>
		</div>
		
		
			<?php  if ($domain_name==$last_domain && $merge_site_results == 1 && $domain == "") {?>
		
			</div class="idented">
		<?php }?>  <?php  }?> </div><?php }?> 
        
        <?php if (isset($other_pages)) {
	if ($adv==1) {
		$adv_qry = "&adv=1";
	}
	if ($type != "") {
		$type_qry = "&type=$type";
	}
?>

<div id="result_pages">
           <?php  foreach ($other_pages as $page_num) {
				if ($page_num !=$start){?>
		
		  
            <a href="<?php print 'search.php?query='.quote_replace(addmarks($query)).'&start='.$page_num.'&search=1&results='.$results_per_page.$type_qry.$adv_qry.'&domain='.$domain?>" class="noact_page"><?php print $page_num?></a>
            		<?php } else {?>	
                    <a class="act_page" href=""><?php print $page_num?></a>&#160;
				<?php  }?>	
	<?php  }?>

		</div>
		
		<div id="result_pages_nav">
			Страницы <?php if ($start >1){ ?> &larr; Ctrl <a href="<?php print 'search.php?query='.quote_replace(addmarks($query)).'&start='.$prev.'&search=1&results='.$results_per_page.$type_qry.$adv_qry.'&domain='.$domain?>" class="green"> <?php print $sph_messages['Previous']?></a> <?php  }?><?php if ($next <= $pages){?>	<a href="<?php print 'search.php?query='.quote_replace(addmarks($query)).'&start='.$next.'&search=1&results='.$results_per_page.$type_qry.$adv_qry.'&domain='.$domain?>" class="green"><?php print $sph_messages['Next']?></a> Ctrl &rarr;<?php  }?>	 <?php }?>
            
		</div>
		</td>
							<td><? print $reklama ?></td>

						</tr>

</table>
	
	<div id="afooter"> </div>
	
