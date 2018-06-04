<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('reset') %>
	<% require themedCSS('typography') %>
	<% require themedCSS('form') %>
	<% require themedCSS('layout') %>
	<% require themedCSS('carousel') %>
	<% require themedCSS('theme') %>
	<link rel="shortcut icon" href="themes/simple/images/favicon.ico" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include TrialBanner %>
<% include Header %>
<div class="main" role="main">
	<div class="typography">
		$Layout
	</div>
</div>
<% include Footer %>

<% require themedJavascript('map') %>

<% require javascript('//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js') %>
<% require javascript('//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js') %>
<% require javascript('//maps.googleapis.com/maps/api/js?key=AIzaSyCePUAAas0IfnBuB3TJMmRt9eKws7c4j_w&callback=initMap') %>

<% require themedJavascript('script') %>
<% require themedJavascript('popups') %>


</body>
</html>