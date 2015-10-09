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
<div class="wt-prod-filter clearfix">
	<div class="block-content">
		{foreach from=$group_prod_fliter item=product_hook name=product_hook}
			{if $product_hook.type_display == 'accordion'}
				{include file="./wtproductfilter_accordion.tpl" product_groups = $product_hook.product_group}
			{/if}
			{if $product_hook.type_display == 'column'}
				{include file="./wtproductfilter_column.tpl" product_groups = $product_hook.product_group}
			{/if}
			{if $product_hook.type_display == 'tab'}
				{include file="./wtproductfilter_tab.tpl" product_groups = $product_hook.product_group}
			{/if}
			{if $product_hook.use_slider == 1}
			<script type="text/javascript">
				$(document).ready(function() {
					$(".owl-prod-filter").owlCarousel({
						loop: true,
						slideSpeed: 100,
						responsive: {
							0: { items: 1},
							464:{ items: 2},
							750:{ items: 3},
							974:{ items: 4},
							1170:{ items: 4}
						},
						dots: false,
						nav: true
					  });
				});
			</script>
			{/if}
		{/foreach}
	</div>
</div>
<!-- /Module Product From Category -->