
<%@ page import="gadinepal_v1.Auction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auction.label', default: 'Auction')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-auction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="list-auction" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                        <th>Picture</th>

                        <g:sortableColumn property="item_name" title="${message(code: 'auction.item_name.label', default: 'Itemname')}" />

						<th><g:message code="auction.category.label" default="Category" /></th>
					
						<th><g:message code="auction.brand.label" default="Brand" /></th>
					
						%{--<g:sortableColumn property="description" title="${message(code: 'auction.description.label', default: 'Description')}" />--}%
					
						<g:sortableColumn property="base_price" title="${message(code: 'auction.base_price.label', default: 'Baseprice')}" />

                        <th>MaxBid</th>

						<g:sortableColumn property="startDate" title="${message(code: 'auction.startDate.label', default: 'Start Date')}" />

						<g:sortableColumn property="endDate" title="${message(code: 'auction.endDate.label', default: 'End Date')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${auctionInstanceList}" status="i" var="auctionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <g:if test="${auctionInstance.status==true}" >
                            <td>
                            <a href="${createLinkTo( dir:'/images/payload/auction_pictures/'+auctionInstance.user.name+'/', file: auctionInstance.filename, absolute:true )}" target="_new">
                                <img src="${createLinkTo(dir:'/images/payload/auction_pictures/'+auctionInstance.user.name+'/',
                                        file:''+auctionInstance.filename)}"
                                     alt="${auctionInstance.filename}"
                                     title="${auctionInstance.filename}"
                                     height="80" width="auto"/>
                            </a>
                            </td>

                            <td><g:link action="show" id="${auctionInstance.id}">${fieldValue(bean: auctionInstance, field: "item_name")}</g:link></td>

                            <td>${fieldValue(bean: auctionInstance, field: "category")}</td>

                            <td>${fieldValue(bean: auctionInstance, field: "brand")}</td>

                            %{--<td>${fieldValue(bean: auctionInstance, field: "description")}</td>--}%

                            <td>NRs. ${fieldValue(bean: auctionInstance, field: "base_price")}</td>

                            <td>
                                <g:if test="${gadinepal_v1.Bidder.countByAuction(auctionInstance)}">
                                    NRs.${gadinepal_v1.Bidder.executeQuery("select max(amount) from Bidder where auction=$auctionInstance.id").get(0)}
                                    (${gadinepal_v1.Bidder.countByAuction(auctionInstance)})
                                </g:if>
                                <g:else>
                                    -no bids-
                                </g:else>
                            </td>

                            <td><g:formatDate date="${auctionInstance.startDate}" /></td>

                            <td><g:formatDate date="${auctionInstance.endDate}" /></td>
                        </g:if>

                    </tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${auctionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
