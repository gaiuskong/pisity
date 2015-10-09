{*
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- MODULE search popular -->
{if $searchList}
	<div class="block_popular_word_search col-sm-4">
		<h4 >{l s='Popular Keyword' mod='wtsearchpopular'}</h4>
		<div class="block_content">
		{foreach from=$searchList item=search name=searchList key=delay}
		<a href="{$link->getPageLink('search', true, NULL, "search_query={$search.word|urlencode}")}">{$search.word|truncate:12:''}</a>
		{if !$smarty.foreach.searchList.last}<span>&nbsp;|&nbsp;</span>{/if}
		{/foreach}
		</div>
	</div>
{/if}
<!-- MODULE search popular -->