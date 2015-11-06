component extends="preside.system.config.Config" output=false {

    public void function configure( required struct config ) {

        var conf = arguments.config;

        conf.layoutSettings               = conf.layoutSettings ?: {};
        conf.layoutSettings.defaultLayout = "verti.cfm";
    }

    private struct function _getConfiguredAssetDerivatives() output=false {
		var derivatives  = super._getConfiguredAssetDerivatives();

		derivatives.toc_thumbnail = {
			  permissions = "inherit"
			, transformations = [
				  { method="Resize", args={ width=384, height=304, maintainaspectratio=true } }
			  ]
		};

		derivatives.toc_thumbnailSmall = {
			  permissions = "inherit"
			, transformations = [
				  { method="Resize", args={ width=180, height=100, maintainaspectratio=true } }
			  ]
		};

		return derivatives;
	}
}