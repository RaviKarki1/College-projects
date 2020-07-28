
<%@ page import="gadinepal_v1.Auction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auction.label', default: 'Auction')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-auction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="show-auction" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list auction">

                <g:if test="${auctionInstance?.filename}">
                    <li class="fieldcontain">
                        <span class="property-label">Picture:</span>
                        <a href="${createLinkTo( dir:'/images/payload/auction_pictures/'+auctionInstance.user.name+'/', file: auctionInstance.filename, absolute:true )}" target="_new">
                            <img src="${createLinkTo(dir:'/images/payload/auction_pictures/'+auctionInstance.user.name+'/',
                                    file:''+auctionInstance.filename)}"
                                 alt="${auctionInstance.filename}"
                                 title="${auctionInstance.filename}"
                                 height="100" width="auto"/>
                        </a>
                    </li>
                </g:if>
			
				<g:if test="${auctionInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="auction.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${auctionInstance?.category?.id}">${auctionInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="auction.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:link controller="brand" action="show" id="${auctionInstance?.brand?.id}">${auctionInstance?.brand?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.item_name}">
				<li class="fieldcontain">
					<span id="item_name-label" class="property-label"><g:message code="auction.item_name.label" default="Itemname" /></span>
					
						<span class="property-value" aria-labelledby="item_name-label"><g:fieldValue bean="${auctionInstance}" field="item_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="auction.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${auctionInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.base_price}">
				<li class="fieldcontain">
					<span id="base_price-label" class="property-label"><g:message code="auction.base_price.label" default="Baseprice" /></span>
					
						<span class="property-value" aria-labelledby="base_price-label"><g:fieldValue bean="${auctionInstance}" field="base_price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="auction.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${auctionInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="auction.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${auctionInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.bidder}">
				<li class="fieldcontain">
					<span id="bidder-label" class="property-label"><g:message code="auction.bidder.label" default="Bidder" /></span>
					
						<g:each in="${auctionInstance.bidder}" var="b">
						<span class="property-value" aria-labelledby="bidder-label"><g:link controller="bidder" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${auctionInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="auction.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${auctionInstance?.user?.id}">${auctionInstance?.user?.encodeAsHTML()}</g:link></span>
				</li>
				</g:if>

			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${auctionInstance?.id}" />
					<g:link class="edit" action="edit" id="${auctionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
