do($ = jQuery) ->

    defaults =
        onload : true

    $.inline = (options) ->
        settings = $.extend {} , defaults , options
    
        elems = $('[data-inline]')
        
        processElem = (elem) ->
            elem = $(elem)
            elemID = elem.attr('data-inline')
            alert elemID
                

        for elem in elems
            processElem elem
            
        return @
    
    $(document).ready ->
        $.inline();
        
    