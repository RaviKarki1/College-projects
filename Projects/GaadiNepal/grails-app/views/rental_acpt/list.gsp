
<%@ page import="gadinepal_v1.Rental_acpt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rental_acpt.label', default: 'Rental_acpt')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-rental_acpt" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="list-rental_acpt" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'rental_acpt.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'rental_acpt.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="phone_num" title="${message(code: 'rental_acpt.phone_num.label', default: 'Phonenum')}" />
					
						<g:sortableColumn property="email_id" title="${message(code: 'rental_acpt.email_id.label', default: 'Emailid')}" />
					
						<g:sortableColumn property="pick_up_date" title="${message(code: 'rental_acpt.pick_up_date.label', default: 'Pickupdate')}" />
					
						<g:sortableColumn property="drop_off_date" title="${message(code: 'rental_acpt.drop_off_date.label', default: 'Dropoffdate')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rental_acptInstanceList}" status="i" var="rental_acptInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rental_acptInstance.id}">${fieldValue(bean: rental_acptInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: rental_acptInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: rental_acptInstance, field: "phone_num")}</td>
					
						<td>${fieldValue(bean: rental_acptInstance, field: "email_id")}</td>
					
						<td><g:formatDate date="${rental_acptInstance.pick_up_date}" /></td>
					
						<td><g:formatDate date="${rental_acptInstance.drop_off_date}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rental_acptInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
