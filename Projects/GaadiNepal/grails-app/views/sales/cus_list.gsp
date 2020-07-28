
<%@ page import="gadinepal_v1.Sales" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales.label', default: 'Sales')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
                %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%
                %{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="list-sales" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                        <th>picture</th>
					
						<g:sortableColumn property="vehicle_name" title="${message(code: 'sales.vehicle_name.label', default: 'Vehiclename')}" />
					
						<g:sortableColumn property="brand" title="${message(code: 'sales.brand.label', default: 'Brand')}" />
					
						<g:sortableColumn property="category" title="${message(code: 'sales.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="model_year" title="${message(code: 'sales.model_year.label', default: 'Modelyear')}" />
					
						<g:sortableColumn property="engine_type" title="${message(code: 'sales.engine_type.label', default: 'Enginetype')}" />
					
						%{--<g:sortableColumn property="drive_type" title="${message(code: 'sales.drive_type.label', default: 'Drivetype')}" />--}%
					    <g:sortableColumn property="drive_type" title="${message(code: 'sales.cost.label', default: 'cost')}" />
                        <th>Buy</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${salesInstanceList}" status="i" var="salesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <g:if test="${salesInstance.status==false}">
                        <td>
                            <g:if test="${salesInstance?.filename}">

                                <img src="${createLinkTo(dir:'/images/payload/rental/',
                                        file:''+salesInstance.filename)}"
                                     alt="${salesInstance.filename}"
                                     title="${salesInstance.filename}"
                                     height="50" width="auto"/>

                            </g:if>
                        </td>



                        <td><g:link action="cus_show" id="${salesInstance.id}">${fieldValue(bean: salesInstance, field: "vehicle_name")}</g:link></td>
					
						<td>${fieldValue(bean: salesInstance, field: "brand")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "model_year")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "engine_type")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "cost")}</td>

                        <td>
                            <paypal:button
                                    itemName="${salesInstance.vehicle_name}"
                                    itemNumber="${salesInstance.vehicle_name}"
                                    discountAmount="${0}"
                                    amount="${salesInstance.cost}"
                                    buyerId="${session.user.id}"/>
                            </td>
                          %{--<td>  <g:link controller="sales_reg" action="create" id="${salesInstance.id}">buy</g:link></td>--}%
                        </g:if>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${salesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
