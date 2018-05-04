$(document).ready(function(){
  $('div').on('click',function(){
  $(this).next().slideToggle();
  $(this).next().siblings('p').slideUp();
  });  
});

    

