# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  v = $('div[id^="value"]');
  has_value_fields = $('#has_value').val().split(',');
  v.hide();
  $('#field_config_html_type').change ->
    if $(this).val() in has_value_fields
      v.show();
    else
      v.hide();
      
