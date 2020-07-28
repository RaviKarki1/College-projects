<%@ page import="gadinepal_v1.Sales" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'sales.label', default: 'Sales')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%
        %{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>--}%
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>--}%
        %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%

<div id="show-sales" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list sales">

        <g:if test="${salesInstance?.filename}">
            <li class="fieldcontain">
                <img src="${createLinkTo(dir:'/images/payload/rental/',
                        file:''+salesInstance.filename)}"
                     alt="${salesInstance.filename}"
                     title="${salesInstance.filename}"
                     height="300" width="auto"/>
            </li>
        </g:if>




        <g:if test="${salesInstance?.vehicle_name}">
            <li class="fieldcontain">
                <span id="vehicle_name-label" class="property-label"><g:message code="sales.vehicle_name.label"
                                                                                default="Vehiclename"/></span>

                <span class="property-value" aria-labelledby="vehicle_name-label"><g:fieldValue bean="${salesInstance}"
                                                                                                field="vehicle_name"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.brand}">
            <li class="fieldcontain">
                <span id="brand-label" class="property-label"><g:message code="sales.brand.label"
                                                                         default="Brand"/></span>

                <span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${salesInstance}"
                                                                                         field="brand"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.category}">
            <li class="fieldcontain">
                <span id="category-label" class="property-label"><g:message code="sales.category.label"
                                                                            default="Category"/></span>

                <span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${salesInstance}"
                                                                                            field="category"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.model_year}">
            <li class="fieldcontain">
                <span id="model_year-label" class="property-label"><g:message code="sales.model_year.label"
                                                                              default="Modelyear"/></span>

                <span class="property-value" aria-labelledby="model_year-label"><g:fieldValue bean="${salesInstance}"
                                                                                              field="model_year"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.engine_type}">
            <li class="fieldcontain">
                <span id="engine_type-label" class="property-label"><g:message code="sales.engine_type.label"
                                                                               default="Enginetype"/></span>

                <span class="property-value" aria-labelledby="engine_type-label"><g:fieldValue bean="${salesInstance}"
                                                                                               field="engine_type"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.drive_type}">
            <li class="fieldcontain">
                <span id="drive_type-label" class="property-label"><g:message code="sales.drive_type.label"
                                                                              default="Drivetype"/></span>

                <span class="property-value" aria-labelledby="drive_type-label"><g:fieldValue bean="${salesInstance}"
                                                                                              field="drive_type"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.ground_clearence}">
            <li class="fieldcontain">
                <span id="ground_clearence-label" class="property-label"><g:message code="sales.ground_clearence.label"
                                                                                    default="Groundclearence"/></span>

                <span class="property-value" aria-labelledby="ground_clearence-label"><g:fieldValue
                        bean="${salesInstance}" field="ground_clearence"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.height}">
            <li class="fieldcontain">
                <span id="height-label" class="property-label"><g:message code="sales.height.label"
                                                                          default="Height"/></span>

                <span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${salesInstance}"
                                                                                          field="height"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.seats}">
            <li class="fieldcontain">
                <span id="seats-label" class="property-label"><g:message code="sales.seats.label"
                                                                         default="Seats"/></span>

                <span class="property-value" aria-labelledby="seats-label"><g:fieldValue bean="${salesInstance}"
                                                                                         field="seats"/></span>

            </li>
        </g:if>

        <g:if test="${salesInstance?.cost}">
            <li class="fieldcontain">
                <span id="cost-label" class="property-label"><g:message code="sales.cost.label" default="Cost"/></span>

                <span class="property-value" aria-labelledby="cost-label"><g:fieldValue bean="${salesInstance}"
                                                                                        field="cost"/></span>

            </li>
        </g:if>


        %{--<g:if test="${salesInstance}">--}%
            %{--<li class="fieldcontain">--}%

                    %{--<g:link controller="Sales_reg" action="buy_req_list" id="${salesInstance.id}">--}%
                        %{--List registrations--}%
                    %{--</g:link>--}%

            %{--</li>--}%
        %{--</g:if>--}%



    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${salesInstance?.id}"/>
            <g:link class="edit" action="edit" id="${salesInstance?.id}"><g:message code="default.button.edit.label"
                                                                                    default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
