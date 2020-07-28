
<%@ page import="gadinepal_v1.Bidder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bidder.label', default: 'Bidder')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bidder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="list-bidder" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="amount" title="${message(code: 'bidder.amount.label', default: 'Amount')}" />
					
						<th><g:message code="bidder.auction.label" default="Auction" /></th>
					
						<th><g:message code="bidder.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bidderInstanceList}" status="i" var="bidderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bidderInstance.id}">${fieldValue(bean: bidderInstance, field: "amount")}</g:link></td>
					
						<td>${fieldValue(bean: bidderInstance, field: "auction")}</td>
					
						<td>${fieldValue(bean: bidderInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bidderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
