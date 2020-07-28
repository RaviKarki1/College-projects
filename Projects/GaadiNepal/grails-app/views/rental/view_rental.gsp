
<%@ page import="gadinepal_v1.Rental" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rental.label', default: 'Rental')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-rental" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        	    %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%

                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
%{--commented create action--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%

            %{--</ul>--}%
		%{--</div>--}%
		<div id="list-rental" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>

                        <g:sortableColumn property="filename" title="${message(code: 'rental.filename.label', default: 'picture')}" />
					
						<g:sortableColumn property="category" title="${message(code: 'rental.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="noofseat" title="${message(code: 'rental.noofseat.label', default: 'Noofseat')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'rental.price.label', default: 'Price')}" />

						%{--<g:sortableColumn property="user_id" title="${message(code: 'rental.user_id.label', default: 'Userid')}" />--}%
					
						<g:sortableColumn property="vecname" title="${message(code: 'rental.vecname.label', default: 'Vecname')}" />

                        <g:sortableColumn property="user_id" title='Hire' />

					</tr>
				</thead>
				<tbody>
				<g:each in="${rentalInstanceList}" status="i" var="rentalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						%{--<td><g:link action="show" id="${rentalInstance.id}">--}%
                            %{--<td>${fieldValue(bean: rentalInstance, field: "category")}</td>--}%
                        %{--</g:link></td>--}%
                    %{--<td><g:link action="s_show" id="${rentalInstance.id}">--}%

                    %{--</g:link></td>--}%

                        <td>
                            <g:if test="${rentalInstance?.filename}">

                                    <img src="${createLinkTo(dir:'/images/payload/rental/',
                                            file:''+rentalInstance.filename)}"
                                         alt="${rentalInstance.filename}"
                                         title="${rentalInstance.filename}"
                                         height="50" width="auto"/>

                            </g:if>
                        </td>

                        <td> ${fieldValue(bean: rentalInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: rentalInstance, field: "noofseat")}</td>
					
						<td>${fieldValue(bean: rentalInstance, field: "price")}</td>
					
						%{--<td>${fieldValue(bean: rentalInstance, field: "user_id")}</td>--}%
					
						<td>${fieldValue(bean: rentalInstance, field: "vecname")}</td>

                        <td><g:link controller="rent_Rreg_Det" action="create" id="${rentalInstance.id}">Hire</g:link>

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rentalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
