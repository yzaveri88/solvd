let $radios = jQuery('input[type=radio]');
$radios.change(function() {
   $radios.next().removeClass('active');
   $radios.filter(':checked').next().addClass('active');
});
