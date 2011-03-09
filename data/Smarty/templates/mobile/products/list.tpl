<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2010 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<!--{if $tpl_strnavi != "&nbsp;"}-->
<!--{$tpl_strnavi}-->
<br><br>
<!--{/if}-->

<!--{foreach from=$arrProducts key=i item=arrProduct}-->
<!-- ▼商品 ここから -->
<!--{if $i+1<9}--><!--{$i+1|numeric_emoji}--><!--{else}-->[<!--{$i+1}-->]<!--{/if}-->
<!-- 商品名 --><!--{$arrProduct.name|h}--><br>

<!--{$smarty.const.SALE_PRICE_TITLE}-->：
<!--{if $arrProduct.price02_min == $arrProduct.price02_max}-->
￥<!--{$arrProduct.price02_min|sfCalcIncTax:$arrSiteInfo.tax:$arrSiteInfo.tax_rule|number_format}-->
<!--{else}-->
￥<!--{$arrProduct.price02_min|sfCalcIncTax:$arrSiteInfo.tax:$arrSiteInfo.tax_rule|number_format}-->～￥<!--{$arrProduct.price02_max|sfCalcIncTax:$arrSiteInfo.tax:$arrSiteInfo.tax_rule|number_format}-->
<!--{/if}-->
<br>

<div align="right">
<!--{if $i+1<9}-->
<a href="<!--{$smarty.const.MOBILE_P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->" accesskey="<!--{$i+1}-->">商品詳細へ→</a>
<!--{else}-->
<a href="<!--{$smarty.const.MOBILE_P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->">商品詳細へ→</a>
<!--{/if}-->
</div>

<br>
<!-- ▲商品 ここまで -->
<!--{foreachelse}-->
該当商品がありません。<br>
<!--{/foreach}-->

<!--{if $tpl_strnavi != "&nbsp;"}-->
<!--{$tpl_strnavi}-->
<br><br>
<!--{/if}-->
