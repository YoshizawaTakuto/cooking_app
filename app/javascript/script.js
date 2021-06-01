$(document).on('turbolinks:load', function(){
    $('#show-btn').on("click", function(){
        var $header_nav = $('.header-nav')
        if ($header_nav.hasClass("open")) {
            $($header_nav).removeClass("open");
            $($header_nav).slideUp();
        } else {
            $($header_nav).addClass("open");
            $($header_nav).slideDown();
        }
    });
});

window.onpageshow = function(event) {
	if (event.persisted) {
		 window.location.reload();
	}
};