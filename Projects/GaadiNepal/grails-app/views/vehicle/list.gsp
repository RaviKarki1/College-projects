
<%@ page import="gadinepal_v1.Vehicle" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-vehicle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%
<div id="list-vehicle" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="model" title="${message(code: 'vehicle.model.label', default: 'Model')}" />

            <th><g:message code="vehicle.brand.label" default="Brand" /></th>

            <th><g:message code="vehicle.category.label" default="Category" /></th>

            <g:sortableColumn property="description" title="${message(code: 'vehicle.description.label', default: 'Description')}" />

            <g:sortableColumn property="year" title="${message(code: 'vehicle.year.label', default: 'Year')}" />

            <g:sortableColumn property="body_type" title="${message(code: 'vehicle.body_type.label', default: 'Bodytype')}" />

        </tr>
        </thead>
        <tbody>
        <g:each in="${vehicleInstanceList}" status="i" var="vehicleInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${vehicleInstance.id}">${fieldValue(bean: vehicleInstance, field: "model")}</g:link></td>

                <td>${fieldValue(bean: vehicleInstance, field: "brand")}</td>

                <td>${fieldValue(bean: vehicleInstance, field: "category")}</td>

                <td>${fieldValue(bean: vehicleInstance, field: "description")}</td>

                <td>${fieldValue(bean: vehicleInstance, field: "year")}</td>

                <td>${fieldValue(bean: vehicleInstance, field: "body_type")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${vehicleInstanceTotal}" />
    </div>
</div>
</body>
</html>
