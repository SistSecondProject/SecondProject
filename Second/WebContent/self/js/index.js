$(document).ready(function(){
  $('div#side').on('click',function(){
  $(this).next().slideToggle();
  $(this).next().siblings('p').slideUp();
  });  
});

    

