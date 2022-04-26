<?php /* Smarty version 2.6.33, created on 2022-04-26 10:49:25
         compiled from cache/include/InlineEditing/SurveysEditViewstatus.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_options', 'cache/include/InlineEditing/SurveysEditViewstatus.tpl', 9, false),)), $this); ?>


<select name="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
"
        id="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
"
        title=''  tabindex="1"          
        >

    <?php if (isset ( $this->_tpl_vars['fields']['status']['value'] ) && $this->_tpl_vars['fields']['status']['value'] != ''): ?>
        <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['fields']['status']['options'],'selected' => $this->_tpl_vars['fields']['status']['value']), $this);?>

    <?php else: ?>
        <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['fields']['status']['options'],'selected' => $this->_tpl_vars['fields']['status']['default']), $this);?>

    <?php endif; ?>
</select>