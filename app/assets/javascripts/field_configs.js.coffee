# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
###
$ ->
  $('div[id^="value"]').hide();
  more_opts = $('#more_opts');
  more_opts.hide();
  $('#vs-wrapper').delegate('.icon-remove', 'click', (e)-> 
    $(e.target).parent().parent().remove();
    false;
  );

  has_value_fields = $('#has_value').val().split(',');

  more_opts.click ->
    value_divs = $('div[id^="value"]');
    last = parseInt(value_divs.last().attr('id').replace('values', ''));
    console.log(last);
    new_one = value_divs.last().clone()
    now = last + 1;

    html = new_one.html();
    reg = new RegExp(last, 'g');
    reg.global = true;
    now_html = html.replace(reg, now);
    new_one.html(now_html);
    new_one.attr('id', 'values' + now);

    new_one.insertAfter(value_divs.last());
    
    if $('.icon-remove').length == 0
      $('<a></a>').addClass('icon-remove').appendTo(new_one.find('.controls'));

  $('#field_config_html_type').change ->
    if $(this).val() in has_value_fields
      $('div[id^=values]').show();
      more_opts.show();
    else
      $('div[id^=values]').hide();
      more_opts.hide();
###
