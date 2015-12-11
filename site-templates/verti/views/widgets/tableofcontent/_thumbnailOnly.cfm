<cfparam name="args.id" />
<cfparam name="args.title" />
<cfparam name="args.main_image" />

<cfparam name="_counter" type="numeric" />
<cfparam name="_records" type="numeric" />

<cfscript>
	heading = prc.heading ?: "";
</cfscript>

<cfoutput>
	<cfif _counter eq 1>
		<div id="sidebar">
			<section class="widget thumbnails">

				<cfif !IsEmpty(heading)>
					<h3>#heading#</h3>
				</cfif>

				<div class="grid">
					<div class="row 50%">
	</cfif>

						<div class="6u">
							<a href="#event.buildlink(page=args.id)#" class="image fit">
								<cfif !isEmpty(args.main_image)>
									#renderAsset(assetId = args.main_image, args={derivative="toc_thumbnailSmall"})#
								<cfelse>
									<img src="/assets/img/pic04.jpg" alt="" />
								</cfif>
							</a>
						</div>


	<cfif _counter eq _records>
					</div>
				</div>

			</section>
		</div>
	</cfif>
</cfoutput>