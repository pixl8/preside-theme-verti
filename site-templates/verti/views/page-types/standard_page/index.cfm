<cfparam name="args.title"                  field="page.title"               editable="true" />
<cfparam name="args.main_content"           field="page.main_content"        editable="true" />
<cfparam name="args.sidebar"                field="page.sidebar_content"     editable="true" />


<cfscript>
	prc.body_class = "left-sidebar";
</cfscript>

<cfoutput>

	<!-- Main -->
	<div id="main-wrapper">
		<div class="container">
			<div class="row 200%">
				<div class="4u 12u$(medium)">
					<div id="sidebar">

						<!-- Sidebar -->
						#args.sidebar#

					</div>
				</div>

				<div class="8u 12u$(medium) important(medium)">
					<div id="content">

						<!-- Content -->
						<article>

							<h2>#args.title#</h2>

							#args.main_content#

						</article>

					</div>
				</div>
			</div>
		</div>
	</div>

</cfoutput>