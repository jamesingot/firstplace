<header class="header" role="banner">
	<div class="inner">
		
			<a href="$BaseHref" class="brand" rel="home">
				<div class="site-logo"></div>
				<% if $SiteConfig.Tagline %>
				<p>$SiteConfig.Tagline</p>
				<% end_if %>
			</a>
			<% if $SearchForm %>
				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">
					$SearchForm
				</div>
			<% end_if %>
			<% include Navigation %>
		
	</div>
</header>
