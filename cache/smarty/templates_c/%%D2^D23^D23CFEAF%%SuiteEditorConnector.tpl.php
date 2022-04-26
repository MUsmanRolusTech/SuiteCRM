<?php /* Smarty version 2.6.33, created on 2022-04-26 10:51:49
         compiled from include/SuiteEditor/tpls/SuiteEditorConnector.tpl */ ?>
<?php echo '
<script>
    if(!SuiteEditor) {

        /**
         * Suite Editor interface
         */
        var SuiteEditor = {
            interfaceError: function() {
                throw \'function is not implemented\';
            }
        };

        /**
         * connector function for get value from suite editors
         */
        SuiteEditor.getValue = function() { SuiteEditor.interfaceError(); };

        /**
         * connector function for set value in suite editors
         */
        SuiteEditor.apply = function(html) { SuiteEditor.interfaceError(); };

        /**
         * connector function for insert a text value
         * at the current cursor position into suite editors
         */
        SuiteEditor.insert = function(text, elemId) { SuiteEditor.interfaceError(); };
    }
</script>
'; ?>

<?php echo $this->_tpl_vars['editor']; ?>