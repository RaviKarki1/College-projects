
<%@ page import="gadinepal_v1.Sales; gadinepal_v1.Sales_reg" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales_reg.label', default: 'Sales_reg')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sales_reg" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%
                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
            %{--</ul>--}%
		%{--</div>--}%
		<div id="list-sales_reg" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'sales_reg.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'sales_reg.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'sales_reg.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="phone_num" title="${message(code: 'sales_reg.phone_num.label', default: 'Phonenum')}" />
					
						<th><g:message code="sales_reg.sales.label" default="Sales" /></th>
					
					</tr>
				</thead>
				<tbody>

<g:each in="${sales_regInstanceList.sales_reg}" var="r">
    <g:each in="${r}" var="i">
        <tr>
            <td>
                %{--<g:link controller="rent_Rreg_Det" action="show" id="${i.id}">--}%
                ${i.name}
                %{--</g:link>--}%
            </td>
            <td>${i.address}</td>
            <td>${i.email}</td>
            <td>${i.phone_num}</td>


            <td><g:link controller="sales_reg" action="sendEmail" params="${[email:i.email,address:i.address,name:i.name,phone_num:i.phone_num,sales_id:session.sales_id]}" >accept</g:link></td>
            %{----}%
            %{--<td><g:link controller="Rent_Rreg_Det" action="sendEmail_rjt" params="${[email:i.email_id]}">reject</g:link></td>--}%
        </tr>
    </g:each>
</g:each>










				%{--<g:each in="${sales_regInstanceList}" status="i" var="sales_regInstance">--}%
					%{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
					%{----}%
						%{--<td><g:link action="show" id="${sales_regInstance.id}">${fieldValue(bean: sales_regInstance, field: "name")}</g:link></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: sales_regInstance, field: "address")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: sales_regInstance, field: "email")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: sales_regInstance, field: "phone_num")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: sales_regInstance, field: "sales")}</td>--}%
					%{----}%
					%{--</tr>--}%
				%{--</g:each>--}%
				</tbody>
			</table>
			%{--<div class="pagination">--}%
				%{--<g:paginate total="${sales_regInstanceTotal}" />--}%
			%{--</div>--}%
		</div>
	</body>
</html>
