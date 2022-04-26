

<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="{$smarty.request.isDuplicate}">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="contact_role">
{if !empty($smarty.request.return_module)}
<input type="hidden" name="relate_to" value="{$smarty.request.return_relationship}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = (this.form) ? this.form : document.forms[0]; disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_AOS_Products'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'AOS_Products_subpanel_save_button');return false;" type="submit" name="AOS_Products_subpanel_save_button" id="AOS_Products_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="AOS_Products_subpanel_cancel_button" id="AOS_Products_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = (this.form) ? this.form : document.forms[0]; disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="AOS_Products_subpanel_full_form_button" id="AOS_Products_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_Products", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</td>
<td align='right'></td>
<td align='right' class="edit-view-pagination">
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
{sugar_translate label='DEFAULT' module='AOS_Products'}
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
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='AOS_Products'}{/capture}
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


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="part_number">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_PART_NUMBER">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_PART_NUMBER' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="part_number"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.part_number.value) <= 0}
{assign var="value" value=$fields.part_number.default_value }
{else}
{assign var="value" value=$fields.part_number.value }
{/if}  
<input type='text' name='{$fields.part_number.name}' 
id='{$fields.part_number.name}' size='30' 
maxlength='25' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="url">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_URL">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_URL' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="url"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.url.value) <= 0}
{assign var="value" value=$fields.url.default_value }
{else}
{assign var="value" value=$fields.url.value }
{/if}  
<input type='text' name='{$fields.url.name}' 
id='{$fields.url.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="type">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_TYPE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_TYPE' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="type"  >
{counter name="panelFieldCount" print=false}

<select name="{$fields.type.name}"
id="{$fields.type.name}"
title=''          
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
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="cost">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_COST">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_COST' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="cost"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.cost.value) <= 0}
{assign var="value" value=$fields.cost.default_value }
{else}
{assign var="value" value=$fields.cost.value }
{/if}  
<input type='text' name='{$fields.cost.name}' 
id='{$fields.cost.name}' size='30' maxlength='26,6' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="price">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_PRICE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_PRICE' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="price"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.price.value) <= 0}
{assign var="value" value=$fields.price.default_value }
{else}
{assign var="value" value=$fields.price.value }
{/if}  
<input type='text' name='{$fields.price.name}' 
id='{$fields.price.name}' size='30' maxlength='26,6' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="contact">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_CONTACT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CONTACT' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="contact" colspan='3' >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.contact.name}" class="sqsEnabled" tabindex="0" id="{$fields.contact.name}" size="" value="{$fields.contact.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.contact.id_name}" 
id="{$fields.contact.id_name}" 
value="{$fields.contact_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.contact.name}" id="btn_{$fields.contact.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_CONTACTS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_CONTACTS_LABEL"}"
onclick='open_popup(
"{$fields.contact.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_AOS_Products","field_to_name_array":{"id":"contact_id","name":"contact"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.contact.name}" id="btn_clr_{$fields.contact.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_CONTACTS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.contact.name}', '{$fields.contact.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_CONTACTS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.contact.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="description">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_DESCRIPTION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="description" colspan='3' >
{counter name="panelFieldCount" print=false}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
rows="6"
cols="80"
title='' tabindex="0" 
 >{$value}</textarea>
{literal}{/literal}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="product_image">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_PRODUCT_IMAGE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_PRODUCT_IMAGE' module='AOS_Products'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="product_image" colspan='3' >
{counter name="panelFieldCount"  print=false}
{$PRODUCT_IMAGE}
</div>

<!-- [/hide] -->
</div>
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
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOS_Products'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_AOS_Products'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'AOS_Products_subpanel_save_button');return false;" type="submit" name="AOS_Products_subpanel_save_button" id="AOS_Products_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="AOS_Products_subpanel_cancel_button" id="AOS_Products_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOS_Products'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="AOS_Products_subpanel_full_form_button" id="AOS_Products_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_Products", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_AOS_Products",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_AOS_Products) {rdelim});
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
addForm('form_SubpanelQuickCreate_AOS_Products');addToValidate('form_SubpanelQuickCreate_AOS_Products', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'maincode', 'enum', false,'{/literal}{sugar_translate label='LBL_MAINCODE' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'part_number', 'varchar', false,'{/literal}{sugar_translate label='LBL_PART_NUMBER' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'category', 'enum', false,'{/literal}{sugar_translate label='LBL_CATEGORY' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'type', 'enum', false,'{/literal}{sugar_translate label='LBL_TYPE' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'cost', 'currency', false,'{/literal}{sugar_translate label='LBL_COST' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'cost_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_COST_USDOLLAR' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'currency_id', 'id', false,'{/literal}{sugar_translate label='LBL_CURRENCY' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'price', 'currency', true,'{/literal}{sugar_translate label='LBL_PRICE' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'price_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_PRICE_USDOLLAR' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'url', 'varchar', false,'{/literal}{sugar_translate label='LBL_URL' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'contact_id', 'id', false,'{/literal}{sugar_translate label='' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'contact', 'relate', false,'{/literal}{sugar_translate label='LBL_CONTACT' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'product_image', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRODUCT_IMAGE' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'file_url', 'function', false,'{/literal}{sugar_translate label='LBL_FILE_URL' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'aos_product_category_name', 'relate', false,'{/literal}{sugar_translate label='LBL_AOS_PRODUCT_CATEGORYS_NAME' module='AOS_Products' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Products', 'aos_product_category_id', 'id', false,'{/literal}{sugar_translate label='LBL_AOS_PRODUCT_CATEGORY' module='AOS_Products' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_AOS_Products', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOS_Products' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='AOS_Products' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_AOS_Products', 'contact', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOS_Products' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_CONTACT' module='AOS_Products' for_js=true}{literal}', 'contact_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_AOS_Products_contact']={"form":"form_SubpanelQuickCreate_AOS_Products","method":"get_contact_array","modules":["Contacts"],"field_list":["salutation","first_name","last_name","id"],"populate_list":["contact","contact_id","contact_id","contact_id"],"required_list":["contact_id"],"group":"or","conditions":[{"name":"first_name","op":"like_custom","end":"%","value":""},{"name":"last_name","op":"like_custom","end":"%","value":""}],"order":"last_name","limit":"30","no_match_text":"No Match"};</script>{/literal}
