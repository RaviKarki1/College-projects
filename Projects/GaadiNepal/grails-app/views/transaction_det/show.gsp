
<%@ page import="gadinepal_v1.Transaction_det" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transaction_det.label', default: 'Transaction_det')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transaction_det" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transaction_det" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transaction_det">
			
				<g:if test="${transaction_detInstance?.itemname}">
				<li class="fieldcontain">
					<span id="itemname-label" class="property-label"><g:message code="transaction_det.itemname.label" default="Itemname" /></span>
					
						<span class="property-value" aria-labelledby="itemname-label"><g:fieldValue bean="${transaction_detInstance}" field="itemname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transaction_detInstance?.payment}">
				<li class="fieldcontain">
					<span id="payment-label" class="property-label"><g:message code="transaction_det.payment.label" default="Payment" /></span>
					
						<span class="property-value" aria-labelledby="payment-label"><g:link controller="payment" action="show" id="${transaction_detInstance?.payment?.id}">${transaction_detInstance?.payment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transaction_detInstance?.user_id}">
				<li class="fieldcontain">
					<span id="user_id-label" class="property-label"><g:message code="transaction_det.user_id.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="user_id-label"><g:fieldValue bean="${transaction_detInstance}" field="user_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transaction_detInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="transaction_det.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${transaction_detInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${transaction_detInstance?.id}" />
					<g:link class="edit" action="edit" id="${transaction_detInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
