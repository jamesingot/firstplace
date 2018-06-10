<nav class="primary">
	<span class="nav-open-button"><i class="material-icons md-36">menu</i></span>
	<ul>
		<% loop $Menu(1) %>
			<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
</nav>
