<cfparam name="args.button_label"   default=""      />
<cfparam name="args.button_size"    default="no"    />
<cfparam name="args.button_class"  	default="no"    />
<cfparam name="args.button_link"    default=""      />

<cfoutput>
	<a href="#args.button_link#" class="button icon #args.button_size# #args.button_class#">#args.button_label#</a>
</cfoutput>