{**
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2015 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Module Product From Category -->
<div class="wt-prod-cat clearfix">
	{foreach from=$group_cat_result item=group_cat name=group_cat_result}
		{if $group_cat.type_display == 'accordion'}
			{include file="./wtproductcategory_accordion.tpl" group_cat_info = $group_cat.cat_info}
		{/if}
		{if $group_cat.type_display == 'column'}
			{include file="./wtproductcategory_column.tpl" group_cat_info = $group_cat.cat_info}
		{/if}
		{if $group_cat.type_display == 'tab'}
			{include file="./wtproductcategory_tab.tpl" group_cat_info = $group_cat.cat_info}
		{/if}
		{if isset($group_cat.use_slider) && $group_cat.use_slider == 1}
		<script type="text/javascript">
		$(document).ready(function() {
			$(".owl-prod-cat").owlCarousel({
			loop: true,
			responsive: {
					0: { items: 2},
					464:{ items: 2},
					750:{ items: 2},
					974:{ items: 2},
					1170:{ items: 3}
			},
			dots: false,
			nav: true,
			loop: true
			});
		});
		</script>
		{/if}
	{/foreach}	
</div>
<!-- /Module Product From Category -->