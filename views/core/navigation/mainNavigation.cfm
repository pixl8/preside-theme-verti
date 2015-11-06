<cfscript>
    menuItems   = args.menuItems   ?: [];
</cfscript>
<!--- <cfdump eval=menuItems abort> --->
<cfoutput>
    <cfloop array="#menuItems#" index="i" item="item">

        <li class="<cfif item.active> current</cfif>">
            <a href="#event.buildLink( page=item.id )#"> #item.title#</a>
        </li>

    </cfloop>

</cfoutput>