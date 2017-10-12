$('a[href^="#"]').click(function(){
    var the_id = $(this).attr("href");

    $('html, body').animate({
        scrollTop:$(the_id).offset().top
    }, 'slow');
    return false;
});


$('a[id="goTop"]').click(function(){
    console.log("atmetmlmeztlm");
   $('html, body').animate({
       scrollTop:0
   }, 'slow');
    return false;
});