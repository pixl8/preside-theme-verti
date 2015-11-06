<cfparam name="args.id" />
<cfparam name="args.title" />

<cfparam name="_counter" type="numeric" />
<cfparam name="_records" type="numeric" />

<cfscript>
	heading = prc.heading ?: "";
</cfscript>

<cfoutput>
	<section>

	<cfif _counter eq 1>
		<cfif !IsEmpty(heading)>
			<h3>#heading#</h3>
		</cfif>

			<ul class="style2">
	</cfif>
				<li><a href="#event.buildlink(page=args.id)#">#args.title#</a></li>

	<cfif _counter eq _records>
			</ul>
		</section>
	</cfif>

</cfoutput>
