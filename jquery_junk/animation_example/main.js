$("#navbar").hover(

  function() {
    $(this).stop().animate({
      height: 200
    }, 500)
  },

  function() {
    $(this).stop().animate({
      height: 100
    }, 500)
});
