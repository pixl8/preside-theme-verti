<cfparam name="args.id" default="" field="footerlinks.id" />
<cfoutput>
	<li>#renderlink(id=args.id)#</li>
</cfoutput>