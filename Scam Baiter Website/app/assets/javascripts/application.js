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
            backToTopBtn.onclick = (function() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }) 
        } else {
            backToTopBtn.style.display = "none";
        }
    }
})