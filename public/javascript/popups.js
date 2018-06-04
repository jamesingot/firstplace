

jQuery.noConflict();

(function($) {
	$(document).ready(function() {

        $(function() {
            $(".modal-button").on("click",function() {
            $("#"+$(this).data("div")).toggle();
            });
            $(".modal-container").on("click",function() {
            $(this).closest("div.modal-container").hide();
            });
            
        });
    });


}(jQuery));
