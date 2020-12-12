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
//= require jquery
//= require turbolinks
//= require_tree .

$(document).ready(() => {
    
    window.onscroll = () => {
        var backToTopBtn = document.getElementById("backToTopBtn");

        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            backToTopBtn.style.display = "block";
        } else {
            backToTopBtn.style.display = "none";
        }
    }

    $("#backToTopBtn").click(function() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }) 
})

// $(document).ready(() => {

//     $('#submitBtn').prop('disabled', true);

//     $('#account_id, #transaction_datetime, #transactor').on('keypress', function () {
//         var urlInputLength = $('#account_id').val().length;
//         var timeInputLength = $('#transaction_datetime').val().length;
//         var descriptionInputLength = $('#transactor').val().length;
//         if (urlInputLength == 0 || descriptionInputLength == 0 || timeInputLength == 0) {
//             $('#submitBtn').prop('disabled', true);
//         } else {
//             $('#submitBtn').prop('disabled', false);
//         }
//     });
// })