<cfscript>
	site 	   		= event.getSite();
	logo_text  		= !IsEmpty(site.logo_title) ? site.logo_title : "Verti";
	logo_subheading = !IsEmpty(site.logo_subtitle) ? site.logo_subtitle : "by HTML5 UP";
    mainNav    		= renderViewlet( event="core.navigation.mainNavigation", args={ depth = 2  });
</cfscript>

<cfoutput>
	<!-- Header -->
	<div id="header-wrapper">
		<header id="header" class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="/">
						#logo_text#
					</a>
				</h1>

				<span>#logo_subheading#</span>

			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					#mainNav#
				</ul>
			</nav>

		</header>
	</div>
</cfoutput>