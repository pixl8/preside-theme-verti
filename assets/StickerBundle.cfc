component output=false {

	public void function configure( bundle ) output=false {
		// See sticker docs here: http://sticker.readthedocs.org/en/latest/
		bundle.addAsset( id="verti-jq-jquery"        , path="/js/lib/jquery-1.11.3.min.js" );
		bundle.addAsset( id="verti-jq-validate" 	 , url ="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js");
		bundle.addAsset( id="verti-jq-dropotron"     , path="/js/lib/jquery.dropotron.min.js" );
		bundle.addAsset( id="verti-js-skel"     	 , path="/js/lib/skel.min.js" );
		bundle.addAsset( id="verti-js-util"     	 , path="/js/lib/util.js" );
		bundle.addAsset( id="verti-js-css-browser"   , path="/js/lib/css_browser_selector.js" );
		bundle.addAsset( id="verti-js-verti-main"    , path="/js/lib/verti-main.js" );
		bundle.addAsset( id="verti-js-modernizr"     , path="/js/lib/modernizr-2.6.2.min.js" );
		bundle.addAsset( id="verti-js-respond"       , path="/js/lib/respond.js" );

		bundle.addAsset( id="verti-css-font-awesome" , path="/css/lib/font-awesome.min.css" );
		bundle.addAsset( id="verti-css-verti-main"   , path="/css/lib/verti-main.css" );
		bundle.addAsset( id="verti-css-opensans"     , url ="//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800", type="css" );
		bundle.addAsset( id="verti-css-ie8"          , path="/css/lib/ie8.css" );

		bundle.addAssets(
			  directory   = "/js/"
			, match       = function( path ){ return ReFindNoCase( "_[0-9a-f]{8}\..*?\.min.js$", arguments.path ); }
			, idGenerator = function( path ) {
				return ListDeleteAt( path, ListLen( path, "/" ), "/" ) & "/";
			}
		);
		bundle.addAssets(
			  directory   = "/css/"
			, match       = function( path ){ return ReFindNoCase( "_[0-9a-f]{8}\..*?\.min.css$", arguments.path ); }
			, idGenerator = function( path ) {
				return ListDeleteAt( path, ListLen( path, "/" ), "/" ) & "/";
			}
		);

		bundle.asset( "verti-jq-jquery" ).dependents( "verti-jq-*" );
		bundle.asset( "verti-js-respond" ).setIE( "lte IE 8" );
		bundle.asset( "/js/core/" ).dependsOn( "verti-jq-*" );

		// bundle.asset( "css-bootstrap" ).before( "*" );
		bundle.asset( "/css/core/" ).after( "*" ).dependents( "/css/specific/*" );
		bundle.asset( "verti-css-ie8" ).dependsOn( "verti-css-*", "/css/core/" ).setIE( "lte IE 8" );

	}
}