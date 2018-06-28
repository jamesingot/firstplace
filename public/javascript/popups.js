

jQuery.noConflict();

(function($) {
	$(document).ready(function() {

        $(function() {
            $(".modal-button").on("click",function() {
                $("#"+$(this).data("div")).toggle();
            });
            $(".modal-no-close").click(function() {
                $(this).closest("div.modal-container").hide();
            });
           
        });

        $(function() {
            $(".modal-button-large").on("click",function() {
                $("#"+$(this).data("div")).show();
            });
            $(".modal-close").click(function() {
                $(this).closest("div.modal-container-large").hide();
            });
            
        });
    }); 


}(jQuery));


