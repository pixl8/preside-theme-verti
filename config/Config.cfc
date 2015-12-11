component extends="preside.system.config.Config" output=false {

    public void function configure( required struct config ) {

        var conf     = arguments.config;
        var settings = conf.settings ?: {};

        settings.assetManager.derivatives.toc_thumbnail = {
        	 permissions = "inherit"
			, transformations = [
				  { method="Resize", args={ width=384, height=304, maintainaspectratio=true } }
			  ]
        };


        settings.assetManager.derivatives.toc_thumbnailSmall = {
        	permissions = "inherit"
			, transformations = [
				  { method="Resize", args={ width=180, height=100, maintainaspectratio=true } }
			  ]
        };


    }

}
