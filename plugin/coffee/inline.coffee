do($ = jQuery) ->

    template = '<span class="irc"> <span class="beak triangle-left"> </span><span class="body"></span> </span>';

    defaults =
        onload : true

    $.inline = (options) ->
        settings = $.extend {} , defaults , options
    
        /* Set the element */
        elems = $('[data-inline]')
        
        /* Attach bird css file */
        attachBirdCss = ->
            cssLink = $("<link rel='stylesheet' type='text/css' href='plugin\template\css\bird.css'>");
            $("head").append cssLink; 
        
        /* Check for any elements with irc attribute */
        processElem = (elem) ->
            elem = $(elem)
            elemID = elem.attr('data-inline')
            elem.append template
            elem.click ->
                loadComments(elemID);
        
        
        loadComments = (elemID) ->
            
                
        /* Call all required functions in order */
        attachBirdCss()
        for elem in elems
            processElem elem
            
        return @
    
    $(document).ready ->
        $.inline();
        
    