// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {

    var allRatingSpan =  document.querySelectorAll('.rating span');    
    $('.rating span').click(function (e) {

      mydata = {
        rate: e.target.dataset.value,
        rateable_type: e.target.dataset.type,
        rateable_id: e.target.dataset.userId,
        created_by: e.target.dataset.creatorId,
      };

      console.log('mydata', mydata)

      // NEED REFACTOR
      // for (var i = 5; i > e.target.dataset.value.value; i--) {
      //   console.log('i', i)
      //   allRatingSpan[i].classList.add('gold')
      //   if (i >= e.target.dataset.value.value) {
      //     allRatingSpan[i].classList.add('gold')
      //   } else {
      //     allRatingSpan[i].classList.remove('gold')
      //   }
      // }



      $.ajax({
        type: "POST", 
        url: "/rates",
        data: { rates: mydata },
        success: function(response){
          console.log('response success', response)
        },
        error: function(response){
          console.log('response error', response)
        }
      });
    })
  });