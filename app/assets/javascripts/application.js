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
//= require jquery-ui
//= require turbolinks
//= require_tree .


$(document).on("turbolinks:load", ()=>{

    $(function() {
        let start = $('.start').val();
        let end = $('.end').val();
        console.log(start);
        console.log(end);

        let datepick_input = $('.datepicker')
        
        availableDates = datepick_input.data('availability')

        console.log(availableDates)

        function available(date) {
            dmy = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate();
            console.log(dmy)
            if ($.inArray(dmy, availableDates) != -1) {
                console.log("true")
                return [true, "","Available"];
            } else {
                console.log("false")
                return [false,"","unAvailable"];
            }
        }

        datepick_input.datepicker({
            dateFormat: "yy-mm-dd",
            beforeShowDay: available
        });
    });

    var allRatingSpan =  document.querySelectorAll('.rating span');
    var clicked = false;

    $('.rating span').hover(function (e) {
      for (var i = 0; i < 5; i++) {
        if (i < e.target.dataset.value) {
          allRatingSpan[i].classList.add('gold')
        } else {
          allRatingSpan[i].classList.remove('gold')
        }
      }
    });

    $('.rating').mouseleave(function() {
      if (clicked === false) {
        for (var i = 0; i < 5; i++) {
          allRatingSpan[i].classList.remove('gold')
        }
      }
    });

    $('.rating span').click(function (e) {
      clicked = true

      mydata = {
        rate: e.target.dataset.value,
        rateable_type: e.target.dataset.type,
        rateable_id: e.target.dataset.userId,
        created_by: e.target.dataset.creatorId,
      };

      for (var i = 0; i < 5; i++) {
        if (i < e.target.dataset.value) {
          allRatingSpan[i].classList.add('gold')
        } else {
          allRatingSpan[i].classList.remove('gold')
        }
      }
    });

    $('.rate_button').click(function () {
      // console.log('mydata', mydata)
      if (mydata.rate === undefined) {
        alert('you need to choose a rate');
      } else {
        $.ajax({
          type: "POST", 
          url: "/rates",
          data: { rates: mydata },
          success: function(response){
            $('.rate_button').addClass('hide')
            $('.just_rated').removeClass('hide')
            $('.not_rated_yet').addClass('hide')
            console.log('response success', response)
          },
          error: function(response){
            console.log('response error', response)
          }
        });
      }
    });
});
