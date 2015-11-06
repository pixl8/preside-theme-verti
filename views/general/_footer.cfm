<cfscript>
	site 	 		    = event.getSite();
	footer_description  = site.footer_description;
	id                  = site.id;
	footer_links 		= event.getPageProperty(propertyname="footerlink_category"	, cascading=true);
	socialmedia 	    = site.footer_socialmedia;
</cfscript>

<cfoutput>
	<!-- Footer -->
	<div id="footer-wrapper">
		<footer id="footer" class="container">
			<div class="row">

				<cfif IsQuery(footer_links) and footer_links.recordcount>
					<cfloop query="footer_links">

						<div class="3u 6u(medium) 12u$(small)">

							<!-- Links -->
							<section class="widget links">
								<h3>#label#</h3>
								<ul class="style2">
									#renderview(presideobject="footerlink_category", view="/general/_link-item", filter={ id = footer_links.id }, orderby="sort_order asc")#
								</ul>
							</section>

						</div>
					</cfloop>
				</cfif>


				<div class="3u 6u$(medium) 12u$(small)">

					<!-- Contact -->
					<section class="widget contact last">
						<h3>Contact Us</h3>
						<ul>
							<cfif !IsEmpty( socialmedia )>
								<cfloop list="#socialmedia#" item="item">
									#renderview(presideobject="social_media", view="/general/_footer_social_link", filter={ id = item })#
								</cfloop>
							</cfif>
						</ul>
						#footer_description#
					</section>

				</div>
			</div>
			<div class="row">
				<div class="12u">
					<div id="copyright">
						<ul class="menu">
							<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div><!--- #footer-wrapper --->
</cfoutput>