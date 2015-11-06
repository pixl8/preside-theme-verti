<cfparam name="args.title"                  field="page.title"               editable="true" />
<cfparam name="args.main_content"           field="page.main_content"        editable="true" />

<cfscript>
	prc.body_class = "no-sidebar";
</cfscript>

<cfoutput>

	<!-- Main -->
	<div id="main-wrapper">
		<div class="container">
			<div id="content">

				<!-- Content -->
				<article>

					<h2>#args.title#</h2>

					#args.main_content#

				</article>

			</div>
		</div>
	</div>

</cfoutput>