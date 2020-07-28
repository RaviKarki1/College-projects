
<%@ page import="gadinepal_v1.Rental_acpt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rental_acpt.label', default: 'Rental_acpt')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rental_acpt" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="show-rental_acpt" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rental_acpt">
			
				<g:if test="${rental_acptInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="rental_acpt.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${rental_acptInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rental_acptInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="rental_acpt.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${rental_acptInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rental_acptInstance?.phone_num}">
				<li class="fieldcontain">
					<span id="phone_num-label" class="property-label"><g:message code="rental_acpt.phone_num.label" default="Phonenum" /></span>
					
						<span class="property-value" aria-labelledby="phone_num-label"><g:fieldValue bean="${rental_acptInstance}" field="phone_num"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rental_acptInstance?.email_id}">
				<li class="fieldcontain">
					<span id="email_id-label" class="property-label"><g:message code="rental_acpt.email_id.label" default="Emailid" /></span>
					
						<span class="property-value" aria-labelledby="email_id-label"><g:fieldValue bean="${rental_acptInstance}" field="email_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rental_acptInstance?.pick_up_date}">
				<li class="fieldcontain">
					<span id="pick_up_date-label" class="property-label"><g:message code="rental_acpt.pick_up_date.label" default="Pickupdate" /></span>
					
						<span class="property-value" aria-labelledby="pick_up_date-label"><g:formatDate date="${rental_acptInstance?.pick_up_date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rental_acptInstance?.drop_off_date}">
				<li class="fieldcontain">
					<span id="drop_off_date-label" class="property-label"><g:message code="rental_acpt.drop_off_date.label" default="Dropoffdate" /></span>
					
						<span class="property-value" aria-labelledby="drop_off_date-label"><g:formatDate date="${rental_acptInstance?.drop_off_date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rental_acptInstance?.rental_id}">
				<li class="fieldcontain">
					<span id="rental_id-label" class="property-label"><g:message code="rental_acpt.rental_id.label" default="Rentalid" /></span>
					
						<span class="property-value" aria-labelledby="rental_id-label"><g:fieldValue bean="${rental_acptInstance}" field="rental_id"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${rental_acptInstance?.id}" />
					<g:link class="edit" action="edit" id="${rental_acptInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
