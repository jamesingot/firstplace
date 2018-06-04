<div class="content-container">
        <% loop $Children %>
            <div class="item">
                    <% with $Photo.ScaleWidth(750) %>
                        <img class="" src="$URL" alt="" width="$Width" height="$Height" />
                    <% end_with %>
                    <a href="$Link">
                        <h3>$Title</h3>
                    </a>
                </div>
        <% end_loop %>
    </div>
</div>
