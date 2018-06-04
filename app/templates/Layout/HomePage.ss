<div class="full-width">
    <div class="carousel-container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <% loop $LatestPromos(3) %>
                <% if $First %>
                    <div class="item active">
                        <div class="banner-promo-overlay"></div>
                        <img class="banner-promo" src="$Photo.CropHeight(2000).URL" alt="" />
                        <div class="banner-heading">
                            <a href="$Link">
                                <h1>$Title</h1>
                                <div class="banner-action">Find out More</div>
                            </a>
                        </div>
                    </div>
                <% else %>
                    <div class="item">
                        <div class="banner-promo-overlay"></div>
                        <img class="banner-promo" src="$Photo.CropHeight(2000).URL" alt="" />
                        <div class="banner-heading">    
                            <a href="$Link">
                                <h1>$Title</h1>
                                <div class="banner-action">Find out More</div>
                            </a>
                        </div>
                    </div>
                <% end_if %>
            <% end_loop %>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <% include classes %>

</div>