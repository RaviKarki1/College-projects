
<%@ page import="gadinepal_v1.Rent_Rreg_Det" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rent_Rreg_Det" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%
                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="show-rent_Rreg_Det" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rent_Rreg_Det">
			
				<g:if test="${rent_Rreg_DetInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="rent_Rreg_Det.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${rent_Rreg_DetInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rent_Rreg_DetInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="rent_Rreg_Det.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${rent_Rreg_DetInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rent_Rreg_DetInstance?.phone_num}">
				<li class="fieldcontain">
					<span id="phone_num-label" class="property-label"><g:message code="rent_Rreg_Det.phone_num.label" default="Phonenum" /></span>
					
						<span class="property-value" aria-labelledby="phone_num-label"><g:fieldValue bean="${rent_Rreg_DetInstance}" field="phone_num"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rent_Rreg_DetInstance?.email_id}">
				<li class="fieldcontain">
					<span id="email_id-label" class="property-label"><g:message code="rent_Rreg_Det.email_id.label" default="Emailid" /></span>
					
						<span class="property-value" aria-labelledby="email_id-label"><g:fieldValue bean="${rent_Rreg_DetInstance}" field="email_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rent_Rreg_DetInstance?.pick_up_date}">
				<li class="fieldcontain">
					<span id="pick_up_date-label" class="property-label"><g:message code="rent_Rreg_Det.pick_up_date.label" default="Pickupdate" /></span>
					
						<span class="property-value" aria-labelledby="pick_up_date-label"><g:formatDate date="${rent_Rreg_DetInstance?.pick_up_date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rent_Rreg_DetInstance?.drop_off_date}">
				<li class="fieldcontain">
					<span id="drop_off_date-label" class="property-label"><g:message code="rent_Rreg_Det.drop_off_date.label" default="Dropoffdate" /></span>
					
						<span class="property-value" aria-labelledby="drop_off_date-label"><g:formatDate date="${rent_Rreg_DetInstance?.drop_off_date}" /></span>
					
				</li>
				</g:if>


                %{--        rental id commented      --}%
			
				%{--<g:if test="${rent_Rreg_DetInstance?.rental}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="rental-label" class="property-label"><g:message code="rent_Rreg_Det.rental.label" default="Rental" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="rental-label"><g:link controller="rental" action="show" id="${rent_Rreg_DetInstance?.rental?.id}">${rent_Rreg_DetInstance?.rental?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${rent_Rreg_DetInstance?.id}" />
					%{--<g:link class="edit" action="edit" id="${rent_Rreg_DetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
