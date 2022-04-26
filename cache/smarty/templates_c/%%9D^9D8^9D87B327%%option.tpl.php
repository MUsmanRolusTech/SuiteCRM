<?php /* Smarty version 2.6.33, created on 2022-04-26 10:50:43
         compiled from modules/Surveys/tpls/Reports/option.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'array_values', 'modules/Surveys/tpls/Reports/option.tpl', 17, false),array('modifier', 'json_encode', 'modules/Surveys/tpls/Reports/option.tpl', 17, false),array('modifier', 'max', 'modules/Surveys/tpls/Reports/option.tpl', 34, false),)), $this); ?>
<table style="width: 25%" class="table table-bordered">
    <tr>
        <th><?php echo $this->_tpl_vars['mod']['LBL_RESPONSE_ANSWER']; ?>
</th>
        <th><?php echo $this->_tpl_vars['mod']['LBL_RESPONSE_COUNT']; ?>
</th>
    </tr>
    <?php $_from = $this->_tpl_vars['question']['responses']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['response']):
?>
        <tr>
            <td><?php echo $this->_tpl_vars['response']['label']; ?>
</td>
            <td><?php echo $this->_tpl_vars['response']['count']; ?>
</td>
        </tr>
    <?php endforeach; endif; unset($_from); ?>
</table>
<canvas width="600" height="300" id='<?php echo $this->_tpl_vars['question']['id']; ?>
Chart' class=''></canvas>
<script>
    <?php echo '
    $(document).ready(function () {
      var chartData = '; ?>
<?php echo json_encode(array_values($this->_tpl_vars['question']['chartData'])); ?>
<?php echo ';
      var chartLabels = '; ?>
<?php echo json_encode(array_values($this->_tpl_vars['question']['chartLabels'])); ?>
<?php echo ';
      var max = Math.max.apply(null, chartData);
      new RGraph.Bar({
        id: \''; ?>
<?php echo $this->_tpl_vars['question']['id']; ?>
<?php echo 'Chart\',
        data: [chartData],
        options: {
          title: \''; ?>
<?php echo $this->_tpl_vars['question']['name']; ?>
<?php echo '\',
          textSize: 10,
          titleSize: 10,
          colors: [\'#f08377\', \'#534d64\', \'#778591\', \'#bfcad3\', \'#d8f5ee\'],
          tooltips: function (ind) {
            return chartLabels[ind] + " - " + chartData[ind];
          },
          tooltipsEvent: \'onmousemove\',
          labels: chartLabels,
            '; ?>

            <?php if (max(array_values($this->_tpl_vars['question']['chartData'])) < 10): ?>
          numyticks: max,
          ylabelsCount: max,
          ymax: max,
            <?php endif; ?>
            <?php echo '
        }
      }).draw();
    });
    '; ?>

</script>