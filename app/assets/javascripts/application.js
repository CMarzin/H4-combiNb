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
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs
//= require jquery-ui


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
})