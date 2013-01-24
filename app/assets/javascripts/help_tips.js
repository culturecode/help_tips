$(document).on('close', '.help_tip', function(){
  $.post('/help_tips/hide',  {tip_controller:$(this).data('tip-controller'), tip_action:$(this).data('tip-action')})
})