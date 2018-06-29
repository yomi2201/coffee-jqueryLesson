# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$->
    $("#carouselInner").css("width",620*$("#carouselInner ul.column").size()+"px")
    $("#carouselInner ul.column:last").prependTo("#carouselInner")
    $("#carouselInnwe").css("margin-left","-620px")
    #back
    $("carouselPrev").click(->)
        $("#carouselNext,#carouselPrev").hide()
        $("#carouselInner").animate
            marginLeft :parseInt($("#caruselInner").css("margin-left"))+620+"px"
        ,"slow","swing" ,
        ->
            $("#carouselInner").css("margin-left","-620px")
            $("#carouselInner ul.columl:last").prependTo("#carouselInner")
            $("#carouselNext,#carouselPrev").show

    #next
    $("carouselPrev").click(->)
        $("#carouselNext,#carouselPrev").hide()
        $("#carouselInner").animate
            marginLeft :parseInt($("#caruselInner").css("margin-left"))-620+"px"
        ,"slow","swing" ,
        ->
            $("#carouselInner").css("margin-left","-620px")
            $("#carouselInner ul.columl:first").prependTo("#carouselInner")
            $("#carouselNext,#carouselPrev").show
