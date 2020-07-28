
<%@ page import="gadinepal_v1.Rental" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rental.label', default: 'Rental')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rental" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%
				%{--<li><g:link class="list" action="view_my_rental"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="show-rental" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rental">

                <g:if test="${rentalInstance?.filename}">
                    <li class="fieldcontain">
                        <img src="${createLinkTo(dir:'/images/payload/rental/',
                                file:''+rentalInstance.filename)}"
                             alt="${rentalInstance.filename}"
                             title="${rentalInstance.filename}"
                             height="300" width="auto"/>
                    </li>
                </g:if>

				<g:if test="${rentalInstance?.vecname}">
				<li class="fieldcontain">
					<span id="vecname-label" class="property-label"><g:message code="rental.vecname.label" default="Vecname" /></span>
					
						<span class="property-value" aria-labelledby="vecname-label"><g:fieldValue bean="${rentalInstance}" field="vecname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rentalInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="rental.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${rentalInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rentalInstance?.noofseat}">
				<li class="fieldcontain">
					<span id="noofseat-label" class="property-label"><g:message code="rental.noofseat.label" default="Noofseat" /></span>
					
						<span class="property-value" aria-labelledby="noofseat-label"><g:fieldValue bean="${rentalInstance}" field="noofseat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rentalInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="rental.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${rentalInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rentalInstance?.user_id}">
				<li class="fieldcontain">
					<span id="user_id-label" class="property-label"><g:message code="rental.user_id.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="user_id-label"><g:fieldValue bean="${rentalInstance}" field="user_id"/></span>
					
				</li>
				</g:if>
			
				%{--<g:if test="${rentalInstance?.rent_Rreg_Det}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="rent_Rreg_Det-label" class="property-label"><g:message code="rental.rent_Rreg_Det.label" default="Rent Rreg Det" /></span>--}%
					%{----}%
						%{--<g:each in="${rentalInstance.rent_Rreg_Det}" var="r">--}%
						%{--<span class="property-value" aria-labelledby="rent_Rreg_Det-label"><g:link controller="rent_Rreg_Det" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>--}%
						%{--</g:each>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
                <g:if test="${rentalInstance}">
                    <li class="fieldcontain">
                        <span class="property-value" aria-labelledby="rental_id-label">
                            <g:link controller="rent_Rreg_Det" action="rentalSpecificList" id="${rentalInstance.id}">
                                List registrations
                            </g:link>
                        </span>
                    </li>
                </g:if>



			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${rentalInstance?.id}" />
					<g:link class="edit" action="edit" id="${rentalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    %{--<g:link controller="rent_Rreg_Det" action="create">rent</g:link>--}%
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
