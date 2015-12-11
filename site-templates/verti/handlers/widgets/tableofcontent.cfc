component output=false {

	private string function index( event, rc, prc, args={} ) output=false{
		var filter 			= { "id" = ListToArray( args.pages ) };
		var filterParams 	= {};
		var orderBy			= "FIELD(id, #listqualify(args.pages,"'")#)";
		var displayMode		= args.display_mode   ?: "";
		var prc.heading 	= args.heading 		  ?: "";

		var view = "/widgets/tableofcontent/_linklist";

		if( displayMode EQ 'withThumbnail'){
			view = "/widgets/tableofcontent/_withThumbnail";
		}elseif( displayMode EQ 'thumbnailOnly'){
			view = "/widgets/tableofcontent/_thumbnailOnly";
		}

		return renderView(
				view  			= view
			  ,	presideObject	= "page"
			  , filter 			= filter
			  , filterParams	= filterParams
			  , orderBy			= orderBy
			);
	}
}