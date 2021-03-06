do($ = jQuery) ->

    template = '<span class="irc"> <span class="beak triangle-left"> </span><span class="body"></span> </span>';

    defaults =
        onload : true

    $.inline = (options) ->
        settings = $.extend {} , defaults , options
    
        elems = $('[data-inline]')
        
        processElem = (elem) ->
            elem = $(elem)
            elemID = elem.attr('data-inline')
            elem.append template
            alert elem

        for elem in elems
            processElem elem
            
        return @
    
    $(document).ready ->
        $.inline();
        
    