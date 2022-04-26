<?php /* Smarty version 2.6.33, created on 2022-04-26 10:50:43
         compiled from modules/Surveys/tpls/reports.tpl */ ?>
<h1><?php echo $this->_tpl_vars['survey']['name']; ?>
</h1>
<table>
    <tr>
        <th>Responses:</th>
        <td><?php echo $this->_tpl_vars['responsesCount']; ?>
</td>
    </tr>
    <tr>
        <th>Surveys Sent:</th>
        <td><?php echo $this->_tpl_vars['surveysSent']; ?>
</td>
    </tr>
    <tr>
        <th>Distinct Surveys Sent:</th>
        <td><?php echo $this->_tpl_vars['surveysSentDistinct']; ?>
</td>
    </tr>
</table>


<?php $_from = $this->_tpl_vars['data']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['question']):
?>
    <hr>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div><?php echo $this->_tpl_vars['question']['name']; ?>
</div>
        </div>
        <div class="panel-body" style="padding: 50px;">
            <?php if ($this->_tpl_vars['question']['type'] == 'Checkbox'): ?>
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'modules/Surveys/tpls/Reports/checkbox.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
            <?php elseif ($this->_tpl_vars['question']['type'] == 'Dropdown' || $this->_tpl_vars['question']['type'] == 'Multiselect' || $this->_tpl_vars['question']['type'] == 'Radio' || $this->_tpl_vars['question']['type'] == 'Rating' || $this->_tpl_vars['question']['type'] == 'Scale'): ?>
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'modules/Surveys/tpls/Reports/option.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
            <?php elseif ($this->_tpl_vars['question']['type'] == 'Matrix'): ?>
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'modules/Surveys/tpls/Reports/matrix.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
            <?php else: ?>
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'modules/Surveys/tpls/Reports/other.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
            <?php endif; ?>
        </div>
    </div>
<?php endforeach; endif; unset($_from); ?>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.common.core.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.common.dynamic.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.common.key.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.common.effects.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.common.tooltips.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.common.context.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.common.annotate.js'></script>

<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.funnel.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.drawing.rect.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.drawing.text.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.pie.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.bar.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.line.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.radar.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.hbar.js'></script>
<script type='text/javascript' src='include/SuiteGraphs/rgraph/libraries/RGraph.rose.js'></script>
<script type='text/javascript' src='modules/Surveys/javascript/Survey.js'></script>
<script>
    <?php echo '
    $(document).ready(function () {
        Survey.showHide($(\'.showHideResponses\'));
    });
    '; ?>

</script>