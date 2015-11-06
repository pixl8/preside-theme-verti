<cfparam name="args.label" />
<cfparam name="args.hide_label" default=""/>
<cfparam name="args.description" />
<cfparam name="args.button_label" />
<cfparam name="args.link" />

<cfoutput>
	<section>

		<cfif isEmpty(args.hide_label)>
			<cfif !isEmpty( args.label )>
				<h3>#args.label#</h3>
			</cfif>
		</cfif>

		<cfif !isEmpty( args.description )>
			<p>
				#args.description#
			</p>
		</cfif>

		<cfif !isEmpty( args.button_label )>

			<footer>
				#renderLink( id =args.link , body = args.button_label, class="button icon fa-info-circle")#
			</footer>

		</cfif>
	</section>
</cfoutput>