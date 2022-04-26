<?php /* Smarty version 2.6.33, created on 2022-04-26 11:55:07
         compiled from cache/themes/SuiteP/modules/Users/EditViewGroup.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_getjspath', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 4, false),array('function', 'sugar_action_menu', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 93, false),array('function', 'sugar_include', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 116, false),array('function', 'sugar_translate', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 137, false),array('function', 'counter', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 162, false),array('function', 'html_options', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 234, false),array('function', 'sugar_help', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 291, false),array('function', 'sugar_getimagepath', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 421, false),array('function', 'sugar_getimage', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 710, false),array('block', 'minify', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 153, false),array('modifier', 'strip_semicolon', 'cache/themes/SuiteP/modules/Users/EditViewGroup.tpl', 155, false),)), $this); ?>


<?php echo $this->_tpl_vars['ROLLOVER']; ?>

<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Emails/javascript/vars.js'), $this);?>
"></script>
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'cache/include/javascript/sugar_grp_emails.js'), $this);?>
"></script>
<link rel="stylesheet" type="text/css" href="<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Users/PasswordRequirementBox.css'), $this);?>
">
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'cache/include/javascript/sugar_grp_yui_widgets.js'), $this);?>
"></script>
<script type='text/javascript' src='<?php echo smarty_function_sugar_getjspath(array('file' => 'include/SubPanel/SubPanelTiles.js'), $this);?>
'></script>
<script type='text/javascript'>
var ERR_RULES_NOT_MET = '<?php echo $this->_tpl_vars['MOD']['ERR_RULES_NOT_MET']; ?>
';
var ERR_ENTER_OLD_PASSWORD = '<?php echo $this->_tpl_vars['MOD']['ERR_ENTER_OLD_PASSWORD']; ?>
';
var ERR_ENTER_NEW_PASSWORD = '<?php echo $this->_tpl_vars['MOD']['ERR_ENTER_NEW_PASSWORD']; ?>
';
var ERR_ENTER_CONFIRMATION_PASSWORD = '<?php echo $this->_tpl_vars['MOD']['ERR_ENTER_CONFIRMATION_PASSWORD']; ?>
';
var ERR_REENTER_PASSWORDS = '<?php echo $this->_tpl_vars['MOD']['ERR_REENTER_PASSWORDS']; ?>
';
</script>
<script type='text/javascript' src='<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Users/User.js'), $this);?>
'></script>
<script type='text/javascript' src='<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Users/UserEditView.js'), $this);?>
'></script>
<script type='text/javascript' src='<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Users/PasswordRequirementBox.js'), $this);?>
'></script>
<?php echo $this->_tpl_vars['ERROR_STRING']; ?>

<!-- This is here for the external API forms -->
<form name="DetailView" id="DetailView" method="POST" action="index.php">
<input type="hidden" name="record" id="record" value="<?php echo $this->_tpl_vars['ID']; ?>
">
<input type="hidden" name="module" value="Users">
<input type="hidden" name="return_module" value="Users">
<input type="hidden" name="return_id" value="<?php echo $this->_tpl_vars['RETURN_ID']; ?>
">
<input type="hidden" name="return_action" value="EditView">
</form>
<form name="EditView" enctype="multipart/form-data" id="EditView" method="POST" action="index.php">
<input type="hidden" name="display_tabs_def">
<input type="hidden" name="hide_tabs_def">
<input type="hidden" name="remove_tabs_def">
<input type="hidden" name="module" value="Users">
<input type="hidden" name="record" id="record" value="<?php echo $this->_tpl_vars['ID']; ?>
">
<input type="hidden" name="action">
<input type="hidden" name="page" value="EditView">
<input type="hidden" name="return_module" value="<?php echo $this->_tpl_vars['RETURN_MODULE']; ?>
">
<input type="hidden" name="return_id" value="<?php echo $this->_tpl_vars['RETURN_ID']; ?>
">
<input type="hidden" name="return_action" value="<?php echo $this->_tpl_vars['RETURN_ACTION']; ?>
">
<input type="hidden" name="password_change" id="password_change" value="false">
<input type="hidden" name="required_password" id="required_password" value='<?php echo $this->_tpl_vars['REQUIRED_PASSWORD']; ?>
' >
<input type="hidden" name="old_user_name" value="<?php echo $this->_tpl_vars['USER_NAME']; ?>
">
<input type="hidden" name="type" value="<?php echo $this->_tpl_vars['REDIRECT_EMAILS_TYPE']; ?>
">
<input type="hidden" id="is_group" name="is_group" value='<?php echo $this->_tpl_vars['IS_GROUP']; ?>
' <?php echo $this->_tpl_vars['IS_GROUP_DISABLED']; ?>
>
<input type="hidden" id='portal_only' name='portal_only' value='<?php echo $this->_tpl_vars['IS_PORTALONLY']; ?>
' <?php echo $this->_tpl_vars['IS_PORTAL_ONLY_DISABLED']; ?>
>
<input type="hidden" name="is_admin" id="is_admin" value='<?php echo $this->_tpl_vars['IS_FOCUS_ADMIN']; ?>
' <?php echo $this->_tpl_vars['IS_ADMIN_DISABLED']; ?>
 >
<input type="hidden" name="is_current_admin" id="is_current_admin" value='<?php echo $this->_tpl_vars['IS_ADMIN']; ?>
' >
<input type="hidden" name="edit_self" id="edit_self" value='<?php echo $this->_tpl_vars['EDIT_SELF']; ?>
' >
<input type="hidden" name="required_email_address" id="required_email_address" value='<?php echo $this->_tpl_vars['REQUIRED_EMAIL_ADDRESS']; ?>
' >
<input type="hidden" name="isDuplicate" id="isDuplicate" value="<?php echo $this->_tpl_vars['isDuplicate']; ?>
">
<div id="popup_window"></div>
<script type="text/javascript">
var EditView_tabs = new YAHOO.widget.TabView("EditView_tabs");

<?php echo '
//Override so we do not force submit, just simulate the \'save button\' click
SUGAR.EmailAddressWidget.prototype.forceSubmit = function() { document.getElementById(\'Save\').click();}

EditView_tabs.on(\'contentReady\', function(e){
'; ?>

<?php if ($this->_tpl_vars['ID']): ?>
<?php echo '
    var eapmTabIndex = 4;
    '; ?>
<?php if (! $this->_tpl_vars['SHOW_THEMES']): ?><?php echo 'eapmTabIndex = 3;'; ?>
<?php endif; ?><?php echo '
    EditView_tabs.getTab(eapmTabIndex).set(\'dataSrc\',\'index.php?sugar_body_only=1&module=Users&subpanel=eapm&action=SubPanelViewer&inline=1&record='; ?>
<?php echo $this->_tpl_vars['ID']; ?>
<?php echo '&layout_def_key=UserEAPM&inline=1&ajaxSubpanel=true\');
    EditView_tabs.getTab(eapmTabIndex).set(\'cacheData\',true);
    EditView_tabs.getTab(eapmTabIndex).on(\'dataLoadedChange\',function(){
        //reinit action menus
        $("ul.clickMenu").each(function(index, node){
            $(node).sugarActionMenu();
        });
    });

    if ( document.location.hash == \'#tab5\' ) {
        EditView_tabs.selectTab(eapmTabIndex);
    }
'; ?>

<?php endif; ?>

<?php if ($this->_tpl_vars['scroll_to_cal']): ?>
    <?php echo '
        //we are coming from the tour welcome page, so we need to simulate a click on the 4th tab
        // and scroll to the calendar_options div after the tabs have rendered
        document.getElementById(\'tab4\').click();
        document.getElementById(\'calendar_options\').scrollIntoView();
    '; ?>

<?php endif; ?>

});
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="actionsContainer">
<tr>
<td>
<?php echo smarty_function_sugar_action_menu(array('id' => 'userEditActions','class' => 'clickMenu fancymenu','buttons' => $this->_tpl_vars['ACTION_BUTTON_HEADER'],'flat' => true), $this);?>

</td>
<td align="right" nowrap>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span> <?php echo $this->_tpl_vars['APP']['NTC_REQUIRED']; ?>

</td>
</tr>
</table>
<div id="EditView_tabs" class="yui-navset">
<ul class="yui-nav">
<li class="selected"><a id="tab1" href="#tab1"><em><?php echo $this->_tpl_vars['MOD']['LBL_USER_INFORMATION']; ?>
</em></a></li>
<li <?php if ($this->_tpl_vars['CHANGE_PWD'] == 0): ?>style='display:none'<?php endif; ?>><a id="tab2" href="#tab2"><em><?php echo $this->_tpl_vars['MOD']['LBL_CHANGE_PASSWORD_TITLE']; ?>
</em></a></li>
<?php if ($this->_tpl_vars['SHOW_THEMES']): ?>
<li><a id="tab3" href="#tab3" style='display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
;'><em><?php echo $this->_tpl_vars['MOD']['LBL_THEME']; ?>
</em></a></li>
<?php endif; ?>
<li><a id="tab4" href="#tab4" style='display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
;'><em><?php echo $this->_tpl_vars['MOD']['LBL_ADVANCED']; ?>
</em></a></li>
<?php if ($this->_tpl_vars['ID']): ?>
<li><a id="tab5" href="#tab5" style='display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
;'><em><?php echo $this->_tpl_vars['MOD']['LBL_EAPM_SUBPANEL_TITLE']; ?>
</em></a></li>
<?php endif; ?>
<li><a id="tab6" href="#tab6" style='display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
;'><em><?php echo $this->_tpl_vars['MOD']['LBL_LAYOUT_OPTIONS']; ?>
</em></a></li>
</ul>
<div class="yui-content user-tab-content">
<div>
<!-- BEGIN METADATA GENERATED CONTENT -->
<?php echo smarty_function_sugar_include(array('include' => $this->_tpl_vars['includes']), $this);?>

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
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_USER_INFORMATION','module' => 'Users'), $this);?>

</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="LBL_USER_INFORMATION">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="user_name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_USER_NAME">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_USER_NAME','module' => 'Users'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<span class="required">*</span>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="user_name" field="user_name"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['user_name']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['user_name']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['user_name']['value']); ?>
<?php endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['user_name']['name']; ?>
' 
id='<?php echo $this->_tpl_vars['fields']['user_name']['name']; ?>
' size='30' 
maxlength='60' 
value='<?php echo $this->_tpl_vars['value']; ?>
' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="last_name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_LAST_NAME">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LIST_NAME','module' => 'Users'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<span class="required">*</span>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="name" field="last_name"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['last_name']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['last_name']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['last_name']['value']); ?>
<?php endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['last_name']['name']; ?>
' 
id='<?php echo $this->_tpl_vars['fields']['last_name']['name']; ?>
' size='30' 
maxlength='255' 
value='<?php echo $this->_tpl_vars['value']; ?>
' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="status">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_STATUS">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_STATUS','module' => 'Users'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<span class="required">*</span>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>

<?php if ($this->_tpl_vars['IS_ADMIN']): ?>
<select name="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
"
id="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
"
title=''          
>
<?php if (isset ( $this->_tpl_vars['fields']['status']['value'] ) && $this->_tpl_vars['fields']['status']['value'] != ''): ?>
<?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['fields']['status']['options'],'selected' => $this->_tpl_vars['fields']['status']['value']), $this);?>

<?php else: ?>
<?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['fields']['status']['options'],'selected' => $this->_tpl_vars['fields']['status']['default']), $this);?>

<?php endif; ?>
</select><?php else: ?><?php echo $this->_tpl_vars['STATUS_READONLY']; ?>
<?php endif; ?>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="UserType">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_USER_TYPE">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_USER_TYPE','module' => 'Users'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="UserType"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>

<?php if ($this->_tpl_vars['IS_ADMIN']): ?><?php echo $this->_tpl_vars['USER_TYPE_DROPDOWN']; ?>
<?php else: ?><?php echo $this->_tpl_vars['USER_TYPE_READONLY']; ?>
<?php endif; ?>
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

<!-- END METADATA GENERATED CONTENT -->
<div id="email_options">
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
<tr>
<th align="left" scope="row" colspan="4">
<h4><?php echo $this->_tpl_vars['MOD']['LBL_MAIL_OPTIONS_TITLE']; ?>
</h4>
</th>
</tr>
<tr>
<td scope="row" width="17%">
<?php echo $this->_tpl_vars['MOD']['LBL_EMAIL']; ?>
  <?php if ($this->_tpl_vars['REQUIRED_EMAIL_ADDRESS']): ?><span class="required"
id="mandatory_email"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span> <?php endif; ?>
</td>
<td width="83%">
<?php echo $this->_tpl_vars['NEW_EMAIL']; ?>

</td>
</tr>
<tr id="email_options_link_type" style='display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
'>
<td scope="row" width="17%">
<?php echo $this->_tpl_vars['MOD']['LBL_EMAIL_LINK_TYPE']; ?>
:&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_EMAIL_LINK_TYPE_HELP'],'WIDTH' => 450), $this);?>

</td>
<td>
<select id="email_link_type" name="email_link_type" tabindex='410'>
<?php echo $this->_tpl_vars['EMAIL_LINK_TYPE']; ?>

</select>
</td>
</tr>
<tr>
<td scope="row" width="17%"><?php echo $this->_tpl_vars['MOD']['LBL_EDITOR_TYPE']; ?>
</td>
<td width="83%">
<select id="editor_type" name="editor_type" tabindex='410'>
<?php echo $this->_tpl_vars['EDITOR_TYPE']; ?>

</select>
</td>
</tr>
</table>
<?php if ($this->_tpl_vars['ID']): ?>
<button class="button" id="settingsButton"
onclick="SUGAR.email2.settings.showSettings(getUserEditViewUserId()); return false;"><img
src="themes/default/images/icon_email_settings.gif" align="absmiddle"
border="0"> <?php echo $this->_tpl_vars['APP']['LBL_EMAIL_SETTINGS']; ?>
</button>
<?php endif; ?>
</div>
</div>
<div class="user-tab-content">
<?php if (( $this->_tpl_vars['CHANGE_PWD'] ) == '1'): ?>
<div id="generate_password">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="edit view">
<tr>
<td width='40%'>
<table width='100%' cellspacing='0' cellpadding='0' border='0'>
<tr>
<th align="left" scope="row" colspan="4">
<h4><?php echo $this->_tpl_vars['MOD']['LBL_CHANGE_PASSWORD_TITLE']; ?>
</h4><br>
<?php echo $this->_tpl_vars['ERROR_PASSWORD']; ?>

</th>
</tr>
</table>
<!-- hide field if user is admin that is not editing themselves -->
<div id='generate_password_old_password' <?php if (( $this->_tpl_vars['IS_ADMIN'] && ! $this->_tpl_vars['ADMIN_EDIT_SELF'] )): ?> style='display:none' <?php endif; ?>>
<table width='100%' cellspacing='0' cellpadding='0' border='0'>
<tr>
<td width='35%' scope="row">
<?php echo $this->_tpl_vars['MOD']['LBL_OLD_PASSWORD']; ?>

</td>
<td>
<input name='old_password' id='old_password' type='password' tabindex='2'
onkeyup="password_confirmation();" autocomplete="new-password">
</td>
<td width='40%'>
</td>
</tr>
</table>
</div>
<table width='100%' cellspacing='0' cellpadding='0' border='0'>
<tr>
<td width='35%' scope="row" snowrap>
<?php echo $this->_tpl_vars['MOD']['LBL_NEW_PASSWORD']; ?>

<span class="required"
id="mandatory_pwd"><?php if (( $this->_tpl_vars['REQUIRED_PASSWORD'] )): ?><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
<?php endif; ?></span>
</td>
<td class='dataField'>
<input name='new_password' id="new_password" type='password' tabindex='2'
onkeyup="password_confirmation();newrules('<?php echo $this->_tpl_vars['PWDSETTINGS']['minpwdlength']; ?>
','<?php echo $this->_tpl_vars['PWDSETTINGS']['maxpwdlength']; ?>
','<?php echo $this->_tpl_vars['REGEX']; ?>
');"/>
</td>
<td width='40%'>
</td>
</tr>
<tr>
<td scope="row" width='35%'>
<?php echo $this->_tpl_vars['MOD']['LBL_CONFIRM_PASSWORD']; ?>

</td>
<td class='dataField'>
<input name='confirm_new_password' id='confirm_pwd' style='' type='password'
tabindex='2' onkeyup="password_confirmation();">
</td>
<td width='40%'>
<div id="comfirm_pwd_match" class="error"
style="display: none;"><?php echo $this->_tpl_vars['MOD']['ERR_PASSWORD_MISMATCH']; ?>
</div>

</td>
</tr>
<tr>
<td class='dataLabel'></td>
<td class='dataField'></td>
</td>
</table>
<table width='17%' cellspacing='0' cellpadding='1' border='0'>
<tr>
<td width='50%'>
<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey='<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
'
class='button' id='save_new_pwd_button' LANGUAGE=javascript
onclick='if (set_password(this.form)) window.close(); else return false;'
type='submit' name='button' style='display:none;'
value='<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
'>
</td>
<td width='50%'>
</td>
</tr>
</table>
</td>
<td width='60%' style="vertical-align:middle;">
</td>
</tr>
</table>
</div>
<?php else: ?>
<div id="generate_password">
<input name='old_password' id='old_password' type='hidden'>
<input name='new_password' id="new_password" type='hidden'>
<input name='confirm_new_password' id='confirm_pwd' type='hidden'>
</div>
<?php endif; ?>
</div>
<?php if ($this->_tpl_vars['SHOW_THEMES']): ?>
<div class="user-tab-content">
<div id="themepicker" style="display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
">
<table class="edit view" border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['LBL_THEME']; ?>
</h4></td>
</tr>
<tr>
<td width="17%">
<select name="user_theme" tabindex='366' size="20" id="user_theme_picker" style="width: 100%">
<?php echo $this->_tpl_vars['THEMES']; ?>

</select>
</td>
<td width="33%">
<img id="themePreview" src="<?php echo smarty_function_sugar_getimagepath(array('file' => 'themePreview.png'), $this);?>
" border="1"/>
</td>
<td width="17%">&nbsp;</td>
<td width="33%">&nbsp;</td>
</tr>
</tbody>
</table>
</div>
</div>
<?php endif; ?>
<div class="user-tab-content">
<div id="settings" style="display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
">
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
<tr>
<th width="100%" align="left" scope="row" colspan="4">
<h4>
<slot><?php echo $this->_tpl_vars['MOD']['LBL_USER_SETTINGS']; ?>
</slot>
</h4>
</th>
</tr>
<tr>
<td scope="row" valign="top">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_EXPORT_DELIMITER']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_EXPORT_DELIMITER_DESC']), $this);?>

</td>
<td>
<slot><input type="text" tabindex='12' name="export_delimiter" value="<?php echo $this->_tpl_vars['EXPORT_DELIMITER']; ?>
" size="5">
</slot>
</td>
<td scope="row" width="17%">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_RECEIVE_NOTIFICATIONS']; ?>
:
</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_RECEIVE_NOTIFICATIONS_TEXT']), $this);?>

</td>
<td width="33%">
<slot><input name='receive_notifications' class="checkbox" tabindex='12' type="checkbox"
value="12" <?php echo $this->_tpl_vars['RECEIVE_NOTIFICATIONS']; ?>
></slot>
</td>
</tr>
<tr>
<td scope="row" valign="top">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_EXPORT_CHARSET']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_EXPORT_CHARSET_DESC']), $this);?>
</td>
<td>
<slot><select tabindex='12' name="default_export_charset"><?php echo $this->_tpl_vars['EXPORT_CHARSET']; ?>
</select></slot>
</td>
<td scope="row" valign="top">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_REMINDER']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_REMINDER_TEXT']), $this);?>

</td>
<td valign="top" nowrap>
<!--
<slot><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/Meetings/tpls/reminders.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></slot>
-->
<slot><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/Reminders/tpls/remindersDefaults.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></slot>
</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>
<button type="button" class="btn btn-primary btn-sm" onClick="Alerts.prototype.enable()">
<?php echo $this->_tpl_vars['MOD']['LBL_ENABLE_NOTIFICATIONS']; ?>

</button>
</td>
</tr>
<tr>
<td scope="row" valign="top">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_USE_REAL_NAMES']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_USE_REAL_NAMES_DESC']), $this);?>
</td>
<td>
<slot><input tabindex='12' type="checkbox" name="use_real_names" <?php echo $this->_tpl_vars['USE_REAL_NAMES']; ?>
></slot>
</td>
<td scope="row" valign="top">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_MAILMERGE']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_MAILMERGE_TEXT']), $this);?>

</td>
<td valign="top" nowrap>
<slot><input tabindex='12' name='mailmerge_on' class="checkbox" type="checkbox" <?php echo $this->_tpl_vars['MAILMERGE_ON']; ?>
>
</slot>
</td>
</tr>
<!--<?php if (! empty ( $this->_tpl_vars['EXTERNAL_AUTH_CLASS'] ) && ! empty ( $this->_tpl_vars['IS_ADMIN'] )): ?>-->
<tr>
<?php ob_start(); ?>&nbsp;<?php echo $this->_tpl_vars['MOD']['LBL_EXTERNAL_AUTH_ONLY']; ?>
 <?php echo $this->_tpl_vars['EXTERNAL_AUTH_CLASS_1']; ?>
<?php $this->_smarty_vars['capture']['SMARTY_LBL_EXTERNAL_AUTH_ONLY'] = ob_get_contents(); ob_end_clean(); ?>
<td scope="row" nowrap>
<slot><?php echo $this->_tpl_vars['EXTERNAL_AUTH_CLASS']; ?>
 <?php echo $this->_tpl_vars['MOD']['LBL_ONLY']; ?>
:
</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_smarty_vars['capture']['SMARTY_LBL_EXTERNAL_AUTH_ONLY']), $this);?>
</td>
<td><input type='hidden' value='0' name='external_auth_only'><input type='checkbox' value='1'
name='external_auth_only' <?php echo $this->_tpl_vars['EXTERNAL_AUTH_ONLY_CHECKED']; ?>
>
</td>
<td></td>
<td></td>
</tr>
<!--<?php endif; ?>-->
</table>
</div>
<div id="locale" style="display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
">
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
<tr>
<th width="100%" align="left" scope="row" colspan="4">
<h4>
<slot><?php echo $this->_tpl_vars['MOD']['LBL_USER_LOCALE']; ?>
</slot>
</h4>
</th>
</tr>
<tr>
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_DATE_FORMAT']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_DATE_FORMAT_TEXT']), $this);?>
</td>
<td width="33%">
<slot><select tabindex='14' name='dateformat'><?php echo $this->_tpl_vars['DATEOPTIONS']; ?>
</select></slot>
</td>
<!-- END: prompttz -->
<!-- BEGIN: currency -->
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_CURRENCY']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_CURRENCY_TEXT']), $this);?>
</td>
<td>
<slot>
<select tabindex='14' id='currency_select' name='currency'
onchange='setSymbolValue(this.options[this.selectedIndex].value);setSigDigits();'><?php echo $this->_tpl_vars['CURRENCY']; ?>
</select>
<input type="hidden" id="symbol" value="">
</slot>
</td>
<!-- END: currency -->
</tr>
<tr>
<td scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_TIME_FORMAT']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_TIME_FORMAT_TEXT']), $this);?>
</td>
<td>
<slot><select tabindex='14' name='timeformat'><?php echo $this->_tpl_vars['TIMEOPTIONS']; ?>
</select></slot>
</td>
<!-- BEGIN: currency -->
<td width="17%" scope="row">
<slot>
<?php echo $this->_tpl_vars['MOD']['LBL_CURRENCY_SIG_DIGITS']; ?>
:
</slot>
</td>
<td>
<slot>
<select id='sigDigits' onchange='setSigDigits(this.value);'
name='default_currency_significant_digits'><?php echo $this->_tpl_vars['sigDigits']; ?>
</select>
</slot>
</td>
<!-- END: currency -->
</tr>
<tr>
<td scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_TIMEZONE']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_TIMEZONE_TEXT']), $this);?>
</td>
<td>
<slot><select tabindex='14'
name='timezone'><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['TIMEZONEOPTIONS'],'selected' => $this->_tpl_vars['TIMEZONE_CURRENT']), $this);?>
</select>
</slot>
</td>
<!-- BEGIN: currency -->
<td width="17%" scope="row">
<slot>
<i><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_EXAMPLE_NAME_FORMAT']; ?>
</i>:
</slot>
</td>
<td>
<slot>
<input type="text" disabled id="sigDigitsExample" name="sigDigitsExample">
</slot>
</td>
<!-- END: currency -->
</tr>
<tr>
<?php if (( $this->_tpl_vars['IS_ADMIN'] )): ?>
<td scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_PROMPT_TIMEZONE']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_PROMPT_TIMEZONE_TEXT']), $this);?>

</td>
<td>
<slot><input type="checkbox" tabindex='14' class="checkbox" name="ut" value="0" <?php echo $this->_tpl_vars['PROMPTTZ']; ?>
>
</slot>
</td>
<?php else: ?>
<td scope="row">
<slot>
</td>
<td>
<slot></slot>
</td>
<?php endif; ?>
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_NUMBER_GROUPING_SEP']; ?>
:
</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_NUMBER_GROUPING_SEP_TEXT']), $this);?>
</td>
<td>
<slot>
<input tabindex='14' name='num_grp_sep' id='default_number_grouping_seperator'
type='text' maxlength='1' size='1' value='<?php echo $this->_tpl_vars['NUM_GRP_SEP']; ?>
'
onkeydown='setSigDigits();' onkeyup='setSigDigits();'>
</slot>
</td>
</tr>
<?php ob_start(); ?>&nbsp;<?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_NAME_FORMAT_DESC']; ?>
<?php $this->_smarty_vars['capture']['SMARTY_LOCALE_NAME_FORMAT_DESC'] = ob_get_contents(); ob_end_clean(); ?>
<tr>
<td scope="row" valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_NAME_FORMAT']; ?>

:&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_smarty_vars['capture']['SMARTY_LOCALE_NAME_FORMAT_DESC']), $this);?>
</td>
<td valign="top">
<slot><select tabindex='14' id="default_locale_name_format" name="default_locale_name_format"
selected="<?php echo $this->_tpl_vars['default_locale_name_format']; ?>
"><?php echo $this->_tpl_vars['NAMEOPTIONS']; ?>
</select></slot>
</td>
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_DECIMAL_SEP']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_DECIMAL_SEP_TEXT']), $this);?>
</td>
<td>
<slot>
<input tabindex='14' name='dec_sep' id='default_decimal_seperator'
type='text' maxlength='1' size='1' value='<?php echo $this->_tpl_vars['DEC_SEP']; ?>
'
onkeydown='setSigDigits();' onkeyup='setSigDigits();'>
</slot>
</td>
</tr>
</table>
</div>
<div id="calendar_options" style="display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
">
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
<tr>
<th align="left" scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['LBL_CALENDAR_OPTIONS']; ?>
</h4></th>
</tr>
<tr>
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_PUBLISH_KEY']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_CHOOSE_A_KEY']), $this);?>
</td>
<td width="20%">
<slot><input id='calendar_publish_key' name='calendar_publish_key' tabindex='17' size='25'
maxlength='36' type="text" value="<?php echo $this->_tpl_vars['CALENDAR_PUBLISH_KEY']; ?>
"></slot>
</td>
<td width="63%">
<slot>&nbsp;</slot>
</td>
</tr>
<tr>
<td width="15%" scope="row">
<slot>
<nobr><?php echo ((is_array($_tmp=$this->_tpl_vars['MOD']['LBL_YOUR_PUBLISH_URL'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:</nobr>
</slot>
</td>
<td colspan=2><span class="calendar_publish_ok"><?php echo $this->_tpl_vars['CALENDAR_PUBLISH_URL']; ?>
</span><span
class="calendar_publish_none" style="display: none"><?php echo $this->_tpl_vars['MOD']['LBL_NO_KEY']; ?>
</span></td>
</tr>
<tr>
<td width="17%" scope="row">
<slot><?php echo ((is_array($_tmp=$this->_tpl_vars['MOD']['LBL_SEARCH_URL'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:</slot>
</td>
<td colspan=2><span class="calendar_publish_ok"><?php echo $this->_tpl_vars['CALENDAR_SEARCH_URL']; ?>
</span><span
class="calendar_publish_none" style="display: none"><?php echo $this->_tpl_vars['MOD']['LBL_NO_KEY']; ?>
</span></td>
</tr>
<tr>
<td width="15%" scope="row">
<slot><?php echo ((is_array($_tmp=$this->_tpl_vars['MOD']['LBL_ICAL_PUB_URL'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
: <?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_ICAL_PUB_URL_HELP']), $this);?>
</slot>
</td>
<td colspan=2><span class="calendar_publish_ok"><?php echo $this->_tpl_vars['CALENDAR_ICAL_URL']; ?>
</span><span
class="calendar_publish_none" style="display: none"><?php echo $this->_tpl_vars['MOD']['LBL_NO_KEY']; ?>
</span></td>
</tr>
<tr>
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_FDOW']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_FDOW_TEXT']), $this);?>
</td>
<td>
<slot>
<select tabindex='14'
name='fdow'><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['FDOWOPTIONS'],'selected' => $this->_tpl_vars['FDOWCURRENT']), $this);?>
</select>
</slot>
</td>
</tr>
</table>
</div>
<div id="google_options" style="display:<?php echo $this->_tpl_vars['HIDE_IF_GAUTH_UNCONFIGURED']; ?>
">
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
<tr>
<th align="left" scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['LBL_GOOGLE_API_SETTINGS']; ?>
</h4></th>
</tr>
<tr>
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_GOOGLE_API_TOKEN']; ?>
:</slot>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_GOOGLE_API_TOKEN_HELP']), $this);?>

</td>
<td width="20%">
<slot>Current API Token is: <span style="color:<?php echo $this->_tpl_vars['GOOGLE_API_TOKEN_COLOR']; ?>
"><?php echo $this->_tpl_vars['GOOGLE_API_TOKEN']; ?>
</span> &nbsp;&nbsp;<input style="display:<?php echo $this->_tpl_vars['GOOGLE_API_TOKEN_ENABLE_NEW']; ?>
" class="btn btn-primary btn-sm" id="google_gettoken" type="button" value="<?php echo $this->_tpl_vars['GOOGLE_API_TOKEN_BTN']; ?>
" onclick="window.open('<?php echo $this->_tpl_vars['GOOGLE_API_TOKEN_NEW_URL']; ?>
', '_self')" /></slot>
</td>
<td width="63%">
<slot>&nbsp;</slot>
</td>
</tr>
<tr>
<td width="17%" scope="row">
<slot><?php echo $this->_tpl_vars['MOD']['LBL_GSYNC_CAL']; ?>
:</slot>
</td>
<td>
<slot><input tabindex='12' name='gsync_cal' class="checkbox" type="checkbox" <?php echo $this->_tpl_vars['GSYNC_CAL']; ?>
></slot>
</td>
</tr>
</table>
</div>
</div>
<?php if ($this->_tpl_vars['ID']): ?>
<div id="eapm_area" style='display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
;' class="user-tab-content">
<div style="text-align:center; width: 100%"><?php echo smarty_function_sugar_getimage(array('name' => 'loading'), $this);?>
</div>
</div>
<?php endif; ?>
<div class="user-tab-content">
<div id="subthemes" style="display:<?php echo $this->_tpl_vars['HIDE_FOR_GROUP_AND_PORTAL']; ?>
">
<table class="edit view" border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<th align="left" scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['LBL_LAYOUT_OPTIONS']; ?>
</h4></th>
</tr>
<?php if ($this->_tpl_vars['SUBTHEMES']): ?>
<tr>
<td>
<span><?php echo $this->_tpl_vars['MOD']['LBL_SUBTHEME']; ?>
:</span>
</td>
<td>
<?php echo smarty_function_html_options(array('name' => 'subtheme','options' => $this->_tpl_vars['SUBTHEMES'],'selected' => $this->_tpl_vars['SUBTHEME']), $this);?>

</td>
<tr>
<?php endif; ?>
<tr id="use_group_tabs_row" style="display: <?php echo $this->_tpl_vars['DISPLAY_GROUP_TAB']; ?>
;">
<td scope="row"><span><?php echo $this->_tpl_vars['MOD']['LBL_USE_GROUP_TABS']; ?>

:</span>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_NAVIGATION_PARADIGM_DESCRIPTION']), $this);?>
</td>
<td colspan="3"><input name="use_group_tabs" type="hidden" value="m"><input id="use_group_tabs"
type="checkbox"
name="use_group_tabs" <?php echo $this->_tpl_vars['USE_GROUP_TABS']; ?>

tabindex='12' value="gm">
</td>
</tr>
<tr>
<td colspan="4">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td scope="row" align="left" style="padding-bottom: 2em;"><?php echo $this->_tpl_vars['TAB_CHOOSER']; ?>
</td>
<td width="90%" valign="top"><BR>&nbsp;</td>
</tr>
</table>
</td>
</tr>
<tr>
<td width="17%" scope="row"><span><?php echo $this->_tpl_vars['MOD']['LBL_SORT_MODULES']; ?>

:</span>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_SORT_MODULES_DESCRIPTION']), $this);?>
</td>
<td width="83%" colspan="3">
<input type="checkbox" name="sort_modules_by_name" <?php echo $this->_tpl_vars['SORT_MODULES_BY_NAME']; ?>
 tabindex='13'>
</td>
</tr>
<tr>
<td width="17%" scope="row"><span><?php echo $this->_tpl_vars['MOD']['LBL_SUBPANEL_TABS']; ?>

:</span>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_SUBPANEL_TABS_DESCRIPTION']), $this);?>
</td>
<td width="83%" colspan="3"><input type="checkbox" name="user_subpanel_tabs" <?php echo $this->_tpl_vars['SUBPANEL_TABS']; ?>

tabindex='13'></td>
</tr>
<tr>
<td width="17%" scope="row"><span><?php echo $this->_tpl_vars['MOD']['LBL_COUNT_COLLAPSED_SUBPANELS']; ?>

:</span>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_COUNT_COLLAPSED_SUBPANELS_DESCRIPTION']), $this);?>
</td>
<td width="83%" colspan="3"><input type="checkbox" name="user_count_collapsed_subpanels" <?php echo $this->_tpl_vars['COUNT_COLLAPSED_SUBPANELS']; ?>

tabindex='13'></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<script type="text/javascript">

  var mail_smtpport = '<?php echo $this->_tpl_vars['MAIL_SMTPPORT']; ?>
';
  var mail_smtpssl = '<?php echo $this->_tpl_vars['MAIL_SMTPSSL']; ?>
';
  <?php echo '
  EmailMan = {};

  function Admin_check() {
    if ((\''; ?>
<?php echo $this->_tpl_vars['IS_FOCUS_ADMIN']; ?>
<?php echo '\') && document.getElementById(\'is_admin\').value == \'0\') {
      r = confirm(\''; ?>
<?php echo $this->_tpl_vars['MOD']['LBL_CONFIRM_REGULAR_USER']; ?>
<?php echo '\');
      return r;
    }
    else
      return true;
  }


  $(document).ready(function () {
    var checkKey = function (key) {
      if (key != \'\') {
        $(".calendar_publish_ok").css(\'display\', \'inline\');
        $(".calendar_publish_none").css(\'display\', \'none\');
        $(\'#cal_pub_key_span\').html(key);
        $(\'#ical_pub_key_span\').html(key);
        $(\'#search_pub_key_span\').html(key);
      } else {
        $(".calendar_publish_ok").css(\'display\', \'none\');
        $(".calendar_publish_none").css(\'display\', \'inline\');
      }
    };
    $(\'#calendar_publish_key\').keyup(function () {
      checkKey($(this).val());
    });
    $(\'#calendar_publish_key\').change(function () {
      checkKey($(this).val());
    });
    checkKey($(\'#calendar_publish_key\').val());
  });
  '; ?>

</script>
<?php echo $this->_tpl_vars['JAVASCRIPT']; ?>

<?php echo '
<script type="text/javascript" language="Javascript">
    '; ?>

    <?php echo $this->_tpl_vars['getNameJs']; ?>

    <?php echo $this->_tpl_vars['getNumberJs']; ?>

    currencies = <?php echo $this->_tpl_vars['currencySymbolJSON']; ?>
;
    themeGroupList = <?php echo $this->_tpl_vars['themeGroupListJSON']; ?>
;

    onUserEditView();


</script>
</form>
<div id="testOutboundDialog" class="yui-hidden">
<div id="testOutbound">
<form>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="edit view">
<tr>
<td scope="row">
<?php echo $this->_tpl_vars['APP']['LBL_EMAIL_SETTINGS_FROM_TO_EMAIL_ADDR']; ?>

<span class="required">
<?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>

</span>
</td>
<td>
<input type="text" id="outboundtest_from_address" name="outboundtest_from_address" size="35"
maxlength="64" value="<?php echo $this->_tpl_vars['TEST_EMAIL_ADDRESS']; ?>
">
</td>
</tr>
<tr>
<td scope="row" colspan="2">
<input type="button" class="button" value="   <?php echo $this->_tpl_vars['APP']['LBL_EMAIL_SEND']; ?>
   "
onclick="javascript:sendTestEmail();">&nbsp;
<input type="button" class="button" value="   <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
   "
onclick="javascript:EmailMan.testOutboundDialog.hide();">&nbsp;
</td>
</tr>
</table>
</form>
</div>
</div>
<?php echo '
<style>
.actionsContainer.footer td {
height: 120px;
vertical-align: top;
}
</style>
'; ?>

<table width="100%" cellpadding="0" cellspacing="0" border="0" class="actionsContainer footer">
<tr>
<td>
<?php echo smarty_function_sugar_action_menu(array('id' => 'userEditActions','class' => 'clickMenu fancymenu','buttons' => $this->_tpl_vars['ACTION_BUTTON_FOOTER'],'flat' => true), $this);?>

</td>
<td align="right" nowrap>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span> <?php echo $this->_tpl_vars['APP']['NTC_REQUIRED']; ?>

</td>
</tr>
</table>
<?php if ($this->_tpl_vars['showEmailSettingsPopup']): ?>
<script>
            <?php echo '
            $(function(){
                SUGAR.email2.settings.showSettings();
            });
            '; ?>

        </script>
<?php endif; ?>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("EditViewGroup",
    function () { initEditView(document.forms.EditViewGroup) });
//window.setTimeout(, 100);
window.onbeforeunload = function () { return disableOnUnloadEditView(); };
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {
$(document).ready(function() {
    $(".collapseLink,.expandLink").click(function (e) { e.preventDefault(); });
  });
}
</script>
<?php echo '
<script type="text/javascript">

    var selectTab = function(tab) {
        $(\'#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER\').hide();
        $(\'#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER\').eq(tab).show().addClass(\'active\').addClass(\'in\');
        $(\'#EditView_tabs div.panel-content div.panel\').hide();
        $(\'#EditView_tabs div.panel-content div.panel.tab-panel-\' + tab).show()
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $(\'#EditView_tabs ul.nav.nav-tabs li\').removeClass(\'active\');
        $(\'#EditView_tabs ul.nav.nav-tabs li a\').css(\'color\', \'\');

        $(\'#EditView_tabs ul.nav.nav-tabs li\').eq(tab).find(\'a\').first().css(\'color\', \'red\');
        $(\'#EditView_tabs ul.nav.nav-tabs li\').eq(tab).addClass(\'active\');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest(\'.tab-pane-NOBOOTSTRAPTOGGLER\').attr(\'id\').match(/^tab-content-(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $(\'#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]\').click(function(e){
            if(typeof $(this).parent().find(\'a\').first().attr(\'id\') != \'undefined\') {
                var tab = parseInt($(this).parent().find(\'a\').first().attr(\'id\').match(/^tab(?<number>(.)*)$/)[1]);
                selectTab(tab);
            }
        });

        $(\'a[data-toggle="collapse-edit"]\').click(function(e){
            if($(this).hasClass(\'collapsed\')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass(\'collapsed\');
                // Expand .panel-body
                $(this).parents(\'.panel\').find(\'.panel-body\').removeClass(\'in\').addClass(\'in\');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass(\'collapsed\');
                // Collapse .panel-body
                $(this).parents(\'.panel\').find(\'.panel-body\').removeClass(\'in\').removeClass(\'in\');
            }
        });
    });

    </script>
'; ?>