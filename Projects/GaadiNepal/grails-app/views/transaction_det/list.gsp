
<%@ page import="gadinepal_v1.Transaction_det" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transaction_det.label', default: 'Transaction_det')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transaction_det" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transaction_det" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="itemname" title="${message(code: 'transaction_det.itemname.label', default: 'Itemname')}" />
					
						<th><g:message code="transaction_det.payment.label" default="Payment" /></th>
					
						<g:sortableColumn property="user_id" title="${message(code: 'transaction_det.user_id.label', default: 'Userid')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'transaction_det.username.label', default: 'Username')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transaction_detInstanceList}" status="i" var="transaction_detInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transaction_detInstance.id}">${fieldValue(bean: transaction_detInstance, field: "itemname")}</g:link></td>
					
						<td>${fieldValue(bean: transaction_detInstance, field: "payment")}</td>
					
						<td>${fieldValue(bean: transaction_detInstance, field: "user_id")}</td>
					
						<td>${fieldValue(bean: transaction_detInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transaction_detInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
