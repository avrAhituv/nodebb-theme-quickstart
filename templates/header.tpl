<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client<!-- IF bootswatchSkin -->-{bootswatchSkin}<!-- END -->.css?{config.cache-buster}" />
	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- END -->
</head>

<body class="{bodyClass} skin-<!-- IF bootswatchSkin -->{bootswatchSkin}<!-- ELSE -->noskin<!-- END -->">
    
	<nav id="menu" class="slideout-menu hidden">
		<!-- IMPORT partials/slideout-menu.tpl -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		<!-- IMPORT partials/chats-menu.tpl -->
	</nav>

	<main id="panel" class="slideout-panel">
		<nav class="navbar navbar-default navbar-fixed-top header" id="header-menu" component="navbar">
            <div class="top-navbar">
            <div class="campush-header-container">          
        <a href="https://campush.co.il" class="hidden-lg">
            <img src="/assets/images/campushLogo.png" width="160" alt="" srcset="">
        </a>       
        <nav class="navbar navbar-fixed-top navbar-expand-lg">        
            <div class="collapse navbar-collapse" id="navbarNav">               
                <a href="https://campush.co.il" class="hide-mobile lgLogo" >
                <img src="/assets/images/campushLogo01.png" width="160" alt="" srcset="" class="logoImg"></a>    
                <ul class="navbar-nav float-left atractionsMenu" >
                    <li class="atractionsMenuLi">
                        <a class=" " href="https://campush.co.il/camp/simulator">סימולטורים</a>

                    </li>
                    <li class="atractionsMenuLi">
                        <a class=" " href="https://campush.co.il/camp/chat">צ'אט</a>

                    </li>
                    <li class="atractionsMenuLi">
                        <a class=" " href="https://campush.co.il/camp/articles">כתבות תוכן</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
            </div>
			<div class="container">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<div class="container" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->