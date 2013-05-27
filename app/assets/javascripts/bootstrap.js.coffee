jQuery ->
  $("a[rel=popover]").popover()
  $(".tip").tooltip()
  $("a[rel=tooltip]").tooltip()
  
  $(".scroll").click((event) ->
    event.preventDefault();
    $('html,body').animate({
      scrollTop : $('#content').top - 50
    }, 'slow');
  );
