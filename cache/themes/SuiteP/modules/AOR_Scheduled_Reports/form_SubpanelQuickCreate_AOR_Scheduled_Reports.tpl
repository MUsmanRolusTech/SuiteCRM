

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
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOR_Scheduled_Reports'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_AOR_Scheduled_Reports'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'AOR_Scheduled_Reports_subpanel_save_button');return false;" type="submit" name="AOR_Scheduled_Reports_subpanel_save_button" id="AOR_Scheduled_Reports_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="AOR_Scheduled_Reports_subpanel_cancel_button" id="AOR_Scheduled_Reports_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOR_Scheduled_Reports'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="AOR_Scheduled_Reports_subpanel_full_form_button" id="AOR_Scheduled_Reports_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOR_Scheduled_Reports", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
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
{sugar_translate label='LBL_SCHEDULED_REPORTS_INFORMATION' module='AOR_Scheduled_Reports'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="LBL_SCHEDULED_REPORTS_INFORMATION">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='AOR_Scheduled_Reports'}{/capture}
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


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="status">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_STATUS">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='AOR_Scheduled_Reports'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
{counter name="panelFieldCount" print=false}

<select name="{$fields.status.name}"
id="{$fields.status.name}"
title=''          
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="aor_report_name">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_AOR_REPORT_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_AOR_REPORT_NAME' module='AOR_Scheduled_Reports'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="aor_report_name" colspan='3' >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.aor_report_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.aor_report_name.name}" size="" value="{$fields.aor_report_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.aor_report_name.id_name}" 
id="{$fields.aor_report_name.id_name}" 
value="{$fields.aor_report_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.aor_report_name.name}" id="btn_{$fields.aor_report_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.aor_report_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_AOR_Scheduled_Reports","field_to_name_array":{"id":"aor_report_id","name":"aor_report_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.aor_report_name.name}" id="btn_clr_{$fields.aor_report_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.aor_report_name.name}', '{$fields.aor_report_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.aor_report_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="schedule">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_SCHEDULE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SCHEDULE' module='AOR_Scheduled_Reports'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="CronSchedule" field="schedule" colspan='3' >
{counter name="panelFieldCount" print=false}
<script type="text/javascript" src='{sugar_getjspath file="include/SugarFields/Fields/CronSchedule/SugarFieldCronSchedule.js"}'></script>
{if strlen($fields.schedule.value) <= 0}
{assign var="value" value=$fields.schedule.default_value }
{else}
{assign var="value" value=$fields.schedule.value }
{/if}
<input type='hidden'
name='{$fields.schedule.name}'
id='{$fields.schedule.name}'
value='{$value}'>
<label>
Advanced
<input type="checkbox"
name='{$fields.schedule.name}_raw'
id='{$fields.schedule.name}_raw'
>
</label>
<span style='display:none;' id='{$fields.schedule.name}_basic'>
<select
name='{$fields.schedule.name}_type'
id='{$fields.schedule.name}_type'>
<OPTION value='monthly'>Monthly</OPTION>
<OPTION value='weekly'>Weekly</OPTION>
<OPTION value='daily'>Daily</OPTION>
</select>
<span id="{$fields.schedule.name}_monthly_options" style="display: none">
on the
<select
multiple="multiple"
name='{$fields.schedule.name}_days'
id='{$fields.schedule.name}_days'>
<OPTION value='1'>1st</OPTION>
<OPTION value='2'>2nd</OPTION>
<OPTION value='3'>3rd</OPTION>
<OPTION value='4'>4th</OPTION>
<OPTION value='5'>5th</OPTION>
<OPTION value='6'>6th</OPTION>
<OPTION value='7'>7th</OPTION>
<OPTION value='8'>8th</OPTION>
<OPTION value='9'>9th</OPTION>
<OPTION value='10'>10th</OPTION>
<OPTION value='11'>11th</OPTION>
<OPTION value='12'>12th</OPTION>
<OPTION value='13'>13th</OPTION>
<OPTION value='14'>14th</OPTION>
<OPTION value='15'>15th</OPTION>
<OPTION value='16'>16th</OPTION>
<OPTION value='17'>17th</OPTION>
<OPTION value='18'>18th</OPTION>
<OPTION value='19'>19th</OPTION>
<OPTION value='20'>20th</OPTION>
<OPTION value='21'>21st</OPTION>
<OPTION value='22'>22nd</OPTION>
<OPTION value='23'>23rd</OPTION>
<OPTION value='24'>24th</OPTION>
<OPTION value='25'>25th</OPTION>
<OPTION value='26'>26th</OPTION>
<OPTION value='27'>27th</OPTION>
<OPTION value='28'>28th</OPTION>
<OPTION value='29'>29th</OPTION>
<OPTION value='30'>30th</OPTION>
<OPTION value='31'>31st</OPTION>
</select>
</span>
<span id="{$fields.schedule.name}_weekly_options" style="display: none">
on
<select
multiple="multiple"
name='{$fields.schedule.name}_weekdays'
id='{$fields.schedule.name}_weekdays'>
<OPTION selected value='0'>Sun</OPTION>
<OPTION value='1'>Mon</OPTION>
<OPTION value='2'>Tue</OPTION>
<OPTION value='3'>Wed</OPTION>
<OPTION value='4'>Thu</OPTION>
<OPTION value='5'>Fri</OPTION>
<OPTION value='6'>Sat</OPTION>
</select>
</span>
at
<select
type="text"
name='{$fields.schedule.name}_time_hours'
id='{$fields.schedule.name}_time_hours'
value="23:00"
>
<OPTION selected value='0'>00</OPTION>
<OPTION value='1'>01</OPTION>
<OPTION value='2'>02</OPTION>
<OPTION value='3'>03</OPTION>
<OPTION value='4'>04</OPTION>
<OPTION value='5'>05</OPTION>
<OPTION value='6'>06</OPTION>
<OPTION value='7'>07</OPTION>
<OPTION value='8'>08</OPTION>
<OPTION value='9'>09</OPTION>
<OPTION value='10'>10</OPTION>
<OPTION value='11'>11</OPTION>
<OPTION value='12'>12</OPTION>
<OPTION value='13'>13</OPTION>
<OPTION value='14'>14</OPTION>
<OPTION value='15'>15</OPTION>
<OPTION value='16'>16</OPTION>
<OPTION value='17'>17</OPTION>
<OPTION value='18'>18</OPTION>
<OPTION value='19'>19</OPTION>
<OPTION value='20'>20</OPTION>
<OPTION value='21'>21</OPTION>
<OPTION value='22'>22</OPTION>
<OPTION value='23'>23</OPTION></select>:
<select
type="text"
name='{$fields.schedule.name}_time_minutes'
id='{$fields.schedule.name}_time_minutes'
value="23:00"
>
<OPTION selected value='0'>00</OPTION>
<OPTION value='1'>01</OPTION>
<OPTION value='2'>02</OPTION>
<OPTION value='3'>03</OPTION>
<OPTION value='4'>04</OPTION>
<OPTION value='5'>05</OPTION>
<OPTION value='6'>06</OPTION>
<OPTION value='7'>07</OPTION>
<OPTION value='8'>08</OPTION>
<OPTION value='9'>09</OPTION>
<OPTION value='10'>10</OPTION>
<OPTION value='11'>11</OPTION>
<OPTION value='12'>12</OPTION>
<OPTION value='13'>13</OPTION>
<OPTION value='14'>14</OPTION>
<OPTION value='15'>15</OPTION>
<OPTION value='16'>16</OPTION>
<OPTION value='17'>17</OPTION>
<OPTION value='18'>18</OPTION>
<OPTION value='19'>19</OPTION>
<OPTION value='20'>20</OPTION>
<OPTION value='21'>21</OPTION>
<OPTION value='22'>22</OPTION>
<OPTION value='23'>23</OPTION>
<OPTION value='24'>24</OPTION>
<OPTION value='25'>25</OPTION>
<OPTION value='26'>26</OPTION>
<OPTION value='27'>27</OPTION>
<OPTION value='28'>28</OPTION>
<OPTION value='29'>29</OPTION>
<OPTION value='30'>30</OPTION>
<OPTION value='31'>31</OPTION>
<OPTION value='32'>32</OPTION>
<OPTION value='33'>33</OPTION>
<OPTION value='34'>34</OPTION>
<OPTION value='35'>35</OPTION>
<OPTION value='36'>36</OPTION>
<OPTION value='37'>37</OPTION>
<OPTION value='38'>38</OPTION>
<OPTION value='39'>39</OPTION>
<OPTION value='40'>40</OPTION>
<OPTION value='41'>41</OPTION>
<OPTION value='42'>42</OPTION>
<OPTION value='43'>43</OPTION>
<OPTION value='44'>44</OPTION>
<OPTION value='45'>45</OPTION>
<OPTION value='46'>46</OPTION>
<OPTION value='47'>47</OPTION>
<OPTION value='48'>48</OPTION>
<OPTION value='49'>49</OPTION>
<OPTION value='50'>50</OPTION>
<OPTION value='51'>51</OPTION>
<OPTION value='52'>52</OPTION>
<OPTION value='53'>53</OPTION>
<OPTION value='54'>54</OPTION>
<OPTION value='55'>55</OPTION>
<OPTION value='56'>56</OPTION>
<OPTION value='57'>57</OPTION>
<OPTION value='58'>58</OPTION>
<OPTION value='59'>59</OPTION>
</select>
</span>
<span style='display:none;' id='{$fields.schedule.name}_advanced'>
<label>Min
<input type="text"
size="2"
name='{$fields.schedule.name}_raw_minutes'
id='{$fields.schedule.name}_raw_minutes'
>
</label>
<label>Hour
<input type="text"
size="2"
name='{$fields.schedule.name}_raw_hours'
id='{$fields.schedule.name}_raw_hours'
>
</label>
<label>Day
<input type="text"
size="2"
name='{$fields.schedule.name}_raw_day'
id='{$fields.schedule.name}_raw_day'
>
</label>
<label>Month
<input type="text"
size="2"
name='{$fields.schedule.name}_raw_month'
id='{$fields.schedule.name}_raw_month'
>
</label>
<label>DOW
<input type="text"
size="2"
placeholder=""
name='{$fields.schedule.name}_raw_weekday'
id='{$fields.schedule.name}_raw_weekday'
>
</label>
</span>
<script>
    {literal}
    $(document).ready(function(){
        {/literal}
        var id = '{$fields.schedule.name}';
        {literal}

        $('#'+id+'_type').on('change',function(){
           updateCRONType(id);
        });
        $('#'+id+'_raw').on('change',function(){
            updateCRONDisplay(id);
        });
        $('#'+id+'_basic').on('change',function(){
            updateCRONValue(id);
        });
        var rawChange = function(){
            updateCRONValue(id);
        }
        $('#'+id+'_raw_minutes').change(rawChange);
        $('#'+id+'_raw_hours').change(rawChange);
        $('#'+id+'_raw_day').change(rawChange);
        $('#'+id+'_raw_month').change(rawChange);
        $('#'+id+'_raw_weekday').change(rawChange);
        updateCRONDisplay(id);
        updateCRONType(id);
        updateCRONFields(id);
    });
    {/literal}
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="email1">


<div class="col-xs-12 col-sm-2 label" data-label="">

{minify}
&nbsp;

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="" field="" colspan='3' >
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
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOR_Scheduled_Reports'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_AOR_Scheduled_Reports'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'AOR_Scheduled_Reports_subpanel_save_button');return false;" type="submit" name="AOR_Scheduled_Reports_subpanel_save_button" id="AOR_Scheduled_Reports_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="AOR_Scheduled_Reports_subpanel_cancel_button" id="AOR_Scheduled_Reports_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOR_Scheduled_Reports'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="AOR_Scheduled_Reports_subpanel_full_form_button" id="AOR_Scheduled_Reports_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOR_Scheduled_Reports", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_AOR_Scheduled_Reports",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_AOR_Scheduled_Reports) {rdelim});
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
addForm('form_SubpanelQuickCreate_AOR_Scheduled_Reports');addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'schedule', 'CronSchedule', true,'{/literal}{sugar_translate label='LBL_SCHEDULE' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'last_run', 'readonly', false,'{/literal}{sugar_translate label='LBL_LAST_RUN' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'status', 'enum', false,'{/literal}{sugar_translate label='LBL_STATUS' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'email_recipients', 'longtext', false,'{/literal}{sugar_translate label='LBL_EMAIL_RECIPIENTS' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'aor_report_name', 'relate', true,'{/literal}{sugar_translate label='LBL_AOR_REPORT_NAME' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'aor_report_id', 'id', false,'{/literal}{sugar_translate label='LBL_AOR_REPORT_ID' module='AOR_Scheduled_Reports' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOR_Scheduled_Reports' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='AOR_Scheduled_Reports' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_AOR_Scheduled_Reports', 'aor_report_name', 'alpha', true,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOR_Scheduled_Reports' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_AOR_REPORT_NAME' module='AOR_Scheduled_Reports' for_js=true}{literal}', 'aor_report_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_AOR_Scheduled_Reports_aor_report_name']={"form":"form_SubpanelQuickCreate_AOR_Scheduled_Reports","method":"query","modules":["AOR_Reports"],"group":"or","field_list":["name","id"],"populate_list":["aor_report_name","aor_report_id"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>{/literal}
