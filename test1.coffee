( ($) ->

  $.fn.pullQuote = (opts) ->
    opts = $.extend {}, $.fn.pullQuote.options, opts

    this.each ->
      elem = $(this)
      text = elem.text()
      newElem = $("<#{opts.outputElem}/>",
        class: opts.outputClass
        text: text
      ).insertAfter opts.insertAfter


  $.fn.pullQuote.options =
    outputClass: "pullquote"
    outputElem: "blockquote"
    insertAfter: "elem"
) jQuery