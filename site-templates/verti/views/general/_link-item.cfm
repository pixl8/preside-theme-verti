<cfparam name="args.id" default=""    field="footerlinks.id" />
<cfparam name="args.label" default="" field="footerlink_category.label" />

<cfparam name="_counter" type="numeric" />
<cfparam name="_records" type="numeric" />


<cfoutput>

	<cfif _counter eq 1>
		<!-- Links -->
		<section class="widget links">
			<h3>#args.label#</h3>
			<ul class="style2">
	</cfif>

			<li>#renderlink(id=args.id)#</li>

	<cfif _counter eq _records>
			</ul>
		</section>
	</cfif>


</cfoutput>