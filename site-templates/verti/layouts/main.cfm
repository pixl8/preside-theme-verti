<cfscript>
	body     = renderView();
	mainNav  = renderViewlet( "core.navigation.mainNavigation" );
	metaTags = renderView( "/general/_pageMetaForHtmlHead" );
	adminBar = renderView( "/general/_adminToolbar" );

	header   = renderView( view="/general/_header" );
	footer   = renderView( view="/general/_footer" 	   );

	//event.include( "css-bootstrap" );

	event.include( assetId="verti-jq-jquery"                  )
         .include( assetId="verti-jq-dropotron"               )
         .include( assetId="verti-js-skel"              	  )
         .include( assetId="verti-js-util"              	  )
         .include( assetId="verti-js-css-browser"             )
         .include( assetId="verti-js-verti-main"              )
         .include( assetId="/js/core/"                  	  )

         .include( assetId="verti-css-font-awesome"           )
         .include( assetId="verti-css-verti-main"             )
         .include( assetId="/css/core/"                       )
         .include( assetId="verti-css-ie8"                    )
         .include( assetId="verti-css-opensans"                     )
         .include( assetId="verti-js-modernizr"       , group="top" )
         .include( assetId="verti-js-respond"         , group="top" );

</cfscript>

<cfoutput><!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		#metaTags#

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="/assets/img/wig-favicon.png" type="image/x-icon">

		#event.renderIncludes( "css" )#
		#event.renderIncludes( "js", "top" )#

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>

<body class="#( prc.body_class ?: '' )#">
	<div id="page-wrapper">
		#header#
		#body#
		#footer#
		#adminBar#

		#event.renderIncludes( "js" )#
	</div>

</body>
</html></cfoutput>