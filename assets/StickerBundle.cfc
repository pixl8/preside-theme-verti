component output=false {

	public void function configure( bundle ) output=false {
		// See sticker docs here: http://sticker.readthedocs.org/en/latest/
		bundle.addAsset( id="jq-jquery"        , path="/js/lib/jquery-1.11.3.min.js" );
		bundle.addAsset( id="jq-validate" 	   , url="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js");
		bundle.addAsset( id="jq-dropotron"     , path="/js/lib/jquery.dropotron.min.js" );
		bundle.addAsset( id="js-skel"     	   , path="/js/lib/skel.min.js" );
		bundle.addAsset( id="js-util"     	   , path="/js/lib/util.js" );
		bundle.addAsset( id="js-css-browser"   , path="/js/lib/css_browser_selector.js" );
		bundle.addAsset( id="js-verti-main"    , path="/js/lib/verti-main.js" );
		bundle.addAsset( id="js-modernizr"     , path="/js/lib/modernizr-2.6.2.min.js" );
		bundle.addAsset( id="js-respond"       , path="/js/lib/respond.js" );

		bundle.addAsset( id="css-font-awesome" , path="/css/lib/font-awesome.min.css" );
		bundle.addAsset( id="css-verti-main"   , path="/css/lib/verti-main.css" );
		bundle.addAsset( id="css-opensans"     , url="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800", type="css" );
		bundle.addAsset( id="css-ie8"          , path="/css/lib/ie8.css" );

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

		bundle.asset( "jq-jquery" ).dependents( "jq-*" );
		bundle.asset( "js-respond" ).setIE( "lte IE 8" );
		bundle.asset( "/js/core/" ).dependsOn( "jq-*" );

		// bundle.asset( "css-bootstrap" ).before( "*" );
		bundle.asset( "/css/core/" ).after( "*" ).dependents( "/css/specific/*" );
		bundle.asset( "css-ie8" ).dependsOn( "css-*", "/css/core/" ).setIE( "lte IE 8" );

	}
}