

<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });

        if($('.edit-view-pagination').children().length == 0) $('.saveAndContinue').remove();
    });
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<div class="edit-view-pagination-mobile-container">
<div class="edit-view-pagination edit-view-mobile-pagination">
{$PAGINATION}
</div>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=AOS_PDF_Templates'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_PDF_Templates", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
{$PAGINATION}
</div>
</td>
</tr>
</table>
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">&nbsp;</div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='DEFAULT' module='AOS_PDF_Templates'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="DEFAULT">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="name" field="name"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if}  
<input type='text' name='{$fields.name.name}' 
id='{$fields.name.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="assigned_user_name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ASSIGNED_TO_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="type">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_TYPE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_TYPE' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="type"  >
{counter name="panelFieldCount" print=false}

<select name="{$fields.type.name}"
id="{$fields.type.name}"
title=''           onchange="populateModuleVariables(this.options[this.selectedIndex].value)"
>
{if isset($fields.type.value) && $fields.type.value != ''}
{html_options options=$fields.type.options selected=$fields.type.value}
{else}
{html_options options=$fields.type.options selected=$fields.type.default}
{/if}
</select>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="sample">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SAMPLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SAMPLE' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="sample"  >
{counter name="panelFieldCount"  print=false}
{$CUSTOM_SAMPLE}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="active">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ACTIVE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ACTIVE' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="bool" field="active"  >
{counter name="panelFieldCount" print=false}

{if strval($fields.active.value) == "1" || strval($fields.active.value) == "yes" || strval($fields.active.value) == "on"} 
{assign var="checked" value='checked="checked"'}
{else}
{assign var="checked" value=""}
{/if}
<input type="hidden" name="{$fields.active.name}" value="0"> 
<input type="checkbox" id="{$fields.active.name}" 
name="{$fields.active.name}" 
value="1" title='' tabindex="0" {$checked} >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="">
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="page_size">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_PAGE_SIZE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_PAGE_SIZE' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="page_size"  >
{counter name="panelFieldCount" print=false}

<select name="{$fields.page_size.name}"
id="{$fields.page_size.name}"
title=''          
>
{if isset($fields.page_size.value) && $fields.page_size.value != ''}
{html_options options=$fields.page_size.options selected=$fields.page_size.value}
{else}
{html_options options=$fields.page_size.options selected=$fields.page_size.default}
{/if}
</select>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="orientation">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORIENTATION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORIENTATION' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="orientation"  >
{counter name="panelFieldCount" print=false}

<select name="{$fields.orientation.name}"
id="{$fields.orientation.name}"
title=''          
>
{if isset($fields.orientation.value) && $fields.orientation.value != ''}
{html_options options=$fields.orientation.options selected=$fields.orientation.value}
{else}
{html_options options=$fields.orientation.options selected=$fields.orientation.default}
{/if}
</select>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="insert_fields">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_INSERT_FIELDS">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_INSERT_FIELDS' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="insert_fields" colspan='3' >
{counter name="panelFieldCount"  print=false}
{$INSERT_FIELDS}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="description">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_DESCRIPTION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="longtext" field="description" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strlen($fields.description.value) <= 0}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}  
<input type='text' name='{$fields.description.name}' 
id='{$fields.description.name}' size='30' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="pdfheader">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_HEADER">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_HEADER' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="longtext" field="pdfheader" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strlen($fields.pdfheader.value) <= 0}
{assign var="value" value=$fields.pdfheader.default_value }
{else}
{assign var="value" value=$fields.pdfheader.value }
{/if}  
<input type='text' name='{$fields.pdfheader.name}' 
id='{$fields.pdfheader.name}' size='30' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="pdffooter">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_FOOTER">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_FOOTER' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="longtext" field="pdffooter" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strlen($fields.pdffooter.value) <= 0}
{assign var="value" value=$fields.pdffooter.default_value }
{else}
{assign var="value" value=$fields.pdffooter.value }
{/if}  
<input type='text' name='{$fields.pdffooter.name}' 
id='{$fields.pdffooter.name}' size='30' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_EDITVIEW_PANEL1' module='AOS_PDF_Templates'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_0" data-id="LBL_EDITVIEW_PANEL1">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="margin_left">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_MARGIN_LEFT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_MARGIN_LEFT' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="margin_left"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.margin_left.value) <= 0}
{assign var="value" value=$fields.margin_left.default_value }
{else}
{assign var="value" value=$fields.margin_left.value }
{/if}  
<input type='text' name='{$fields.margin_left.name}' 
id='{$fields.margin_left.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='0'    >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="margin_right">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_MARGIN_RIGHT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_MARGIN_RIGHT' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="margin_right"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.margin_right.value) <= 0}
{assign var="value" value=$fields.margin_right.default_value }
{else}
{assign var="value" value=$fields.margin_right.value }
{/if}  
<input type='text' name='{$fields.margin_right.name}' 
id='{$fields.margin_right.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='0'    >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="margin_top">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_MARGIN_TOP">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_MARGIN_TOP' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="margin_top"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.margin_top.value) <= 0}
{assign var="value" value=$fields.margin_top.default_value }
{else}
{assign var="value" value=$fields.margin_top.value }
{/if}  
<input type='text' name='{$fields.margin_top.name}' 
id='{$fields.margin_top.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='0'    >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="margin_bottom">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_MARGIN_BOTTOM">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_MARGIN_BOTTOM' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="margin_bottom"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.margin_bottom.value) <= 0}
{assign var="value" value=$fields.margin_bottom.default_value }
{else}
{assign var="value" value=$fields.margin_bottom.value }
{/if}  
<input type='text' name='{$fields.margin_bottom.name}' 
id='{$fields.margin_bottom.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='0'    >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="margin_header">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_MARGIN_HEADER">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_MARGIN_HEADER' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="margin_header"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.margin_header.value) <= 0}
{assign var="value" value=$fields.margin_header.default_value }
{else}
{assign var="value" value=$fields.margin_header.value }
{/if}  
<input type='text' name='{$fields.margin_header.name}' 
id='{$fields.margin_header.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='0'    >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="margin_footer">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_MARGIN_FOOTER">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_MARGIN_FOOTER' module='AOS_PDF_Templates'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="margin_footer"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.margin_footer.value) <= 0}
{assign var="value" value=$fields.margin_footer.default_value }
{else}
{assign var="value" value=$fields.margin_footer.value }
{/if}  
<input type='text' name='{$fields.margin_footer.name}' 
id='{$fields.margin_footer.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='0'    >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>
</div>
</div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=AOS_PDF_Templates'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_PDF_Templates", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("EditView",
    function () {ldelim} initEditView(document.forms.EditView) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
{literal}
<script type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
        $('#EditView_tabs div.panel-content div.panel').hide();
        $('#EditView_tabs div.panel-content div.panel.tab-panel-' + tab).show()
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^tab-content-(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]').click(function(e){
            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(?<number>(.)*)$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse-edit"]').click(function(e){
            if($(this).hasClass('collapsed')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass('collapsed');
                // Expand .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').addClass('in');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass('collapsed');
                // Collapse .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').removeClass('in');
            }
        });
    });

    </script>
{/literal}{literal}
<script type="text/javascript">
addForm('EditView');addToValidate('EditView', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('EditView', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('EditView', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'description', 'longtext', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'active', 'bool', false,'{/literal}{sugar_translate label='LBL_ACTIVE' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'type', 'enum', true,'{/literal}{sugar_translate label='LBL_TYPE' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'sample', 'enum', false,'{/literal}{sugar_translate label='LBL_SAMPLE' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'insert_fields', 'enum', false,'{/literal}{sugar_translate label='LBL_INSERT_FIELDS' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'pdfheader', 'longtext', false,'{/literal}{sugar_translate label='LBL_HEADER' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'pdffooter', 'longtext', false,'{/literal}{sugar_translate label='LBL_FOOTER' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'margin_left', 'int', false,'{/literal}{sugar_translate label='LBL_MARGIN_LEFT' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'margin_right', 'int', false,'{/literal}{sugar_translate label='LBL_MARGIN_RIGHT' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'margin_top', 'int', false,'{/literal}{sugar_translate label='LBL_MARGIN_TOP' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'margin_bottom', 'int', false,'{/literal}{sugar_translate label='LBL_MARGIN_BOTTOM' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'margin_header', 'int', false,'{/literal}{sugar_translate label='LBL_MARGIN_HEADER' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'margin_footer', 'int', false,'{/literal}{sugar_translate label='LBL_MARGIN_FOOTER' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'page_size', 'enum', false,'{/literal}{sugar_translate label='LBL_PAGE_SIZE' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidate('EditView', 'orientation', 'enum', false,'{/literal}{sugar_translate label='LBL_ORIENTATION' module='AOS_PDF_Templates' for_js=true}{literal}' );
addToValidateBinaryDependency('EditView', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOS_PDF_Templates' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='AOS_PDF_Templates' for_js=true}{literal}', 'assigned_user_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['EditView_assigned_user_name']={"form":"EditView","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};</script>{/literal}
