//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$(function(){ // Document Ready

  $('#easter-icon').click(function(){
    $('#hidden-easter-link').click();
    var one = $('#easter-icon').innerHTML
      console.log(one)
  });

  $('#jquery-ajax-button').click(function(){
    // $.ajax('/easter_egg',{
    //   dataType: 'text',
    //   type: 'POST',
    //   // data: {name: 'carlos', email: 'carlos@devpointlabs.com'},
    //   data: 'name=carlos&email=carlos%40devpointlabs.com',
    //   success: function(data, textStatus){
    //     console.log('The text status is:' + textStatus);
    //     console.log(data);
    //   }
    // });
    $.post(
      '/click_me',
      {name: 'carlos', email: 'carlos@devpointlabs.com'},
      function(data, textStatus){
        console.log('The text status is:' + textStatus);
        console.log(data);
      },
      'text'
    );
  });
});
