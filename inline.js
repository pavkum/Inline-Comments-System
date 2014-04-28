// Generated by CoffeeScript 1.7.1
(function($) {
  var defaults, template;
  template = '<span class="irc"> <span class="beak triangle-left"> </span><span class="body"></span> </span>';
  defaults = {
    onload: true
  };
  $.inline = function(options) {
    var elem, elems, processElem, settings, _i, _len;
    settings = $.extend({}, defaults, options);
    elems = $('[data-inline]');
    processElem = function(elem) {
      var elemID;
      elem = $(elem);
      elemID = elem.attr('data-inline');
      return elem.append(template);
    };
    for (_i = 0, _len = elems.length; _i < _len; _i++) {
      elem = elems[_i];
      processElem(elem);
    }
    return this;
  };
  return $(document).ready(function() {
    return $.inline();
  });
})(jQuery);
