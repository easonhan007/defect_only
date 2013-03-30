(function() {
  var __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  $(function() {
    var has_value_fields, more_opts;
    $('div[id^="value"]').hide();
    more_opts = $('#more_opts');
    more_opts.hide();
    $('#vs-wrapper').delegate('.icon-remove', 'click', function(e) {
      $(e.target).parent().parent().remove();
      return false;
    });
    has_value_fields = $('#has_value').val().split(',');
    more_opts.click(function() {
      var html, last, new_one, now, now_html, reg, value_divs;
      value_divs = $('div[id^="value"]');
      last = parseInt(value_divs.last().attr('id').replace('values', ''));
      console.log(last);
      new_one = value_divs.last().clone();
      now = last + 1;
      html = new_one.html();
      reg = new RegExp(last, 'g');
      reg.global = true;
      now_html = html.replace(reg, now);
      new_one.html(now_html);
      new_one.attr('id', 'values' + now);
      new_one.insertAfter(value_divs.last());
      if ($('.icon-remove').length === 0) {
        return $('<a></a>').addClass('icon-remove').appendTo(new_one.find('.controls'));
      }
    });
    return $('#field_config_html_type').change(function() {
      var _ref;
      if (_ref = $(this).val(), __indexOf.call(has_value_fields, _ref) >= 0) {
        $('div[id^=values]').show();
        return more_opts.show();
      } else {
        $('div[id^=values]').hide();
        return more_opts.hide();
      }
    });
  });

}).call(this);
