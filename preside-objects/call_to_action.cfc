component output=false dataManagerGroup="Widget" {
	property name="label"	     type="string" 		dbtype="varchar";
	property name="description"	 type="string"		dbtype="varchar"	maxlength="300";
	property name="button_label" type="string"		dbtype="varchar";
	property name="link" 		 relatedto="link" 	relationship="many-to-one";
	property name="hide_label"   type="boolean" 	dbtype="boolean"     required=false   default=false;

}