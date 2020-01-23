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
//= require activestorage
//= require turbolinks
//= require_tree .

console.log('Im on Shopify with my custom app');

$(window).ready(function() {
    if (window.location.href.includes('collections')) {

        //var url = window.location.href + '.json';
        var url = 'https://shopify.smkonline.co/collections/master/products.json?limit=250';
        $.get(url, function(data,status){
            console.log(data);
            for(var i = 0; i < data.length; i++){
                debugger;
                // console.log(i);
            }
        })
        // debugger;
        
    }
});

// console.log(url);
// var request =new Request()