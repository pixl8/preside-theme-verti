<cfparam name="args.banner_left"     field="homepage.banner_left"               editable="true" />
<cfparam name="args.banner_right"    field="homepage.banner_right"              editable="true" />
<cfparam name="args.middle_content"  field="homepage.middle_content"            editable="true" />
<cfparam name="args.bottom_left"     field="homepage.bottom_left"               editable="true" />
<cfparam name="args.bottom_right"    field="homepage.bottom_right"              editable="true" />

<cfoutput>
	<!-- Banner -->
	<div id="banner-wrapper">
		<div id="banner" class="box container">
			<div class="row">
				<div class="7u 12u(medium)">
					#args.banner_left#
				</div>
				<div class="5u 12u(medium)">
					#args.banner_right#
				</div>
			</div>
		</div>
	</div>

	<!-- Features -->
	<cfif !IsEmpty( args.middle_content )>
		<div id="features-wrapper">
			<div class="container">
				<div class="row">
					#args.middle_content#
				</div>
			</div>
		</div>
	</cfif>


	<!-- Main -->
	<div id="main-wrapper">
		<div class="container">
			<div class="row 200%">
				<div class="4u 12u(medium)">

					#args.bottom_left#

				</div>
				<div class="8u 12u(medium) important(medium)">

					<!-- Content -->
					<div id="content">
						<section class="last">
							#args.bottom_right#
						</section>
					</div>

				</div>
			</div>
		</div>
	</div>

</cfoutput>