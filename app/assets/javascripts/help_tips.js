$(document).on('close', '.help_tip', function(){
  $.post('/help_tips/hide',  {tip_identifier:$(this).data('tip-identifier')})
})