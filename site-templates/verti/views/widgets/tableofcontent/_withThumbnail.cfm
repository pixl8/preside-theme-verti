<cfparam name="args.id" />
<cfparam name="args.title" />
<cfparam name="args.subheading" />
<cfparam name="args.teaser" />
<cfparam name="args.main_image" />

<cfparam name="_counter" type="numeric" />
<cfparam name="_records" type="numeric" />

<cfoutput>

	<div class="4u 12u(medium)">

		<!-- Box -->
		<section class="box feature">
			<a href="#event.buildlink(page=args.id)#" class="image featured">
				<cfif !isEmpty(args.main_image)>
					#renderAsset(assetId = args.main_image, args={derivative="toc_thumbnail"})#
				<cfelse>
					<img src="/assets/img/pic01.jpg" alt="" />
				</cfif>
			</a>


			<div class="inner">
				<header>
					<h2><a href="#event.buildlink(page=args.id)#">#args.title#</a></h2>
					<p>#args.subheading#</p>
				</header>

				<cfif !isEmpty(args.teaser)>
					<p>#args.teaser#</p>
				</cfif>
			</div>
		</section>

	</div>

</cfoutput>
