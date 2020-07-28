
<%@ page import="gadinepal_v1.Vehicle" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-vehicle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        %{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
        %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%
<div id="show-vehicle" class="content scaffold-show" role="main">
<h1><g:message code="default.show.label" args="[entityName]" /></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list vehicle">

<g:if test="${vehicleInstance?.filename}">
    <li class="fieldcontain">

        <span id="filename-label" class="property-label">Picture</span>

        <span class="property-value" aria-labelledby="filename-label">
            <a href="${createLinkTo(dir: 'images/payload/vehicle_pictures/' + vehicleInstance.brand.vec_brand + '/' + vehicleInstance.model + '/',
                    file: vehicleInstance.filename, absolute: true)}" target="_new">
                <img src="${createLinkTo(dir: 'images/payload/vehicle_pictures/' +
                        vehicleInstance.brand.vec_brand + '/' + vehicleInstance.model + '/',
                        file: '' + vehicleInstance.filename)}"
                     alt="${vehicleInstance.filename}"
                     title="${vehicleInstance.model}"
                     height="100" width="auto"/>
            </a>
        </span>
    </li>
    </span>
</g:if>

<g:if test="${vehicleInstance?.model}">
    <li class="fieldcontain">
        <span id="model-label" class="property-label"><g:message code="vehicle.model.label" default="Model" /></span>

        <span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${vehicleInstance}" field="model"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.brand}">
    <li class="fieldcontain">
        <span id="brand-label" class="property-label"><g:message code="vehicle.brand.label" default="Brand" /></span>

        <span class="property-value" aria-labelledby="brand-label"><g:link controller="brand" action="show" id="${vehicleInstance?.brand?.id}">${vehicleInstance?.brand?.encodeAsHTML()}</g:link></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.category}">
    <li class="fieldcontain">
        <span id="category-label" class="property-label"><g:message code="vehicle.category.label" default="Category" /></span>

        <span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${vehicleInstance?.category?.id}">${vehicleInstance?.category?.encodeAsHTML()}</g:link></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.description}">
    <li class="fieldcontain">
        <span id="description-label" class="property-label"><g:message code="vehicle.description.label" default="Description" /></span>

        <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${vehicleInstance}" field="description"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.year}">
    <li class="fieldcontain">
        <span id="year-label" class="property-label"><g:message code="vehicle.year.label" default="Year" /></span>

        <span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${vehicleInstance}" field="year"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.body_type}">
    <li class="fieldcontain">
        <span id="body_type-label" class="property-label"><g:message code="vehicle.body_type.label" default="Bodytype" /></span>

        <span class="property-value" aria-labelledby="body_type-label"><g:fieldValue bean="${vehicleInstance}" field="body_type"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.seats}">
    <li class="fieldcontain">
        <span id="seats-label" class="property-label"><g:message code="vehicle.seats.label" default="Seats" /></span>

        <span class="property-value" aria-labelledby="seats-label"><g:fieldValue bean="${vehicleInstance}" field="seats"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.price}">
    <li class="fieldcontain">
        <span id="price-label" class="property-label"><g:message code="vehicle.price.label" default="Price" /></span>

        <span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${vehicleInstance}" field="price"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.engine_type}">
    <li class="fieldcontain">
        <span id="engine_type-label" class="property-label"><g:message code="vehicle.engine_type.label" default="Enginetype" /></span>

        <span class="property-value" aria-labelledby="engine_type-label"><g:fieldValue bean="${vehicleInstance}" field="engine_type"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.engine_size}">
    <li class="fieldcontain">
        <span id="engine_size-label" class="property-label"><g:message code="vehicle.engine_size.label" default="Enginesize" /></span>

        <span class="property-value" aria-labelledby="engine_size-label"><g:fieldValue bean="${vehicleInstance}" field="engine_size"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.cylinders}">
    <li class="fieldcontain">
        <span id="cylinders-label" class="property-label"><g:message code="vehicle.cylinders.label" default="Cylinders" /></span>

        <span class="property-value" aria-labelledby="cylinders-label"><g:fieldValue bean="${vehicleInstance}" field="cylinders"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.max_torque}">
    <li class="fieldcontain">
        <span id="max_torque-label" class="property-label"><g:message code="vehicle.max_torque.label" default="Maxtorque" /></span>

        <span class="property-value" aria-labelledby="max_torque-label"><g:fieldValue bean="${vehicleInstance}" field="max_torque"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.max_power}">
    <li class="fieldcontain">
        <span id="max_power-label" class="property-label"><g:message code="vehicle.max_power.label" default="Maxpower" /></span>

        <span class="property-value" aria-labelledby="max_power-label"><g:fieldValue bean="${vehicleInstance}" field="max_power"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.bore_stroke}">
    <li class="fieldcontain">
        <span id="bore_stroke-label" class="property-label"><g:message code="vehicle.bore_stroke.label" default="Borestroke" /></span>

        <span class="property-value" aria-labelledby="bore_stroke-label"><g:fieldValue bean="${vehicleInstance}" field="bore_stroke"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.compression_ratio}">
    <li class="fieldcontain">
        <span id="compression_ratio-label" class="property-label"><g:message code="vehicle.compression_ratio.label" default="Compressionratio" /></span>

        <span class="property-value" aria-labelledby="compression_ratio-label"><g:fieldValue bean="${vehicleInstance}" field="compression_ratio"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.transmission}">
    <li class="fieldcontain">
        <span id="transmission-label" class="property-label"><g:message code="vehicle.transmission.label" default="Transmission" /></span>

        <span class="property-value" aria-labelledby="transmission-label"><g:fieldValue bean="${vehicleInstance}" field="transmission"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.drive_type}">
    <li class="fieldcontain">
        <span id="drive_type-label" class="property-label"><g:message code="vehicle.drive_type.label" default="Drivetype" /></span>

        <span class="property-value" aria-labelledby="drive_type-label"><g:fieldValue bean="${vehicleInstance}" field="drive_type"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.fuel_type}">
    <li class="fieldcontain">
        <span id="fuel_type-label" class="property-label"><g:message code="vehicle.fuel_type.label" default="Fueltype" /></span>

        <span class="property-value" aria-labelledby="fuel_type-label"><g:fieldValue bean="${vehicleInstance}" field="fuel_type"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.fuel_tank_capacity}">
    <li class="fieldcontain">
        <span id="fuel_tank_capacity-label" class="property-label"><g:message code="vehicle.fuel_tank_capacity.label" default="Fueltankcapacity" /></span>

        <span class="property-value" aria-labelledby="fuel_tank_capacity-label"><g:fieldValue bean="${vehicleInstance}" field="fuel_tank_capacity"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.fuel_consumption}">
    <li class="fieldcontain">
        <span id="fuel_consumption-label" class="property-label"><g:message code="vehicle.fuel_consumption.label" default="Fuelconsumption" /></span>

        <span class="property-value" aria-labelledby="fuel_consumption-label"><g:fieldValue bean="${vehicleInstance}" field="fuel_consumption"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.kerb_weight}">
    <li class="fieldcontain">
        <span id="kerb_weight-label" class="property-label"><g:message code="vehicle.kerb_weight.label" default="Kerbweight" /></span>

        <span class="property-value" aria-labelledby="kerb_weight-label"><g:fieldValue bean="${vehicleInstance}" field="kerb_weight"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.height}">
    <li class="fieldcontain">
        <span id="height-label" class="property-label"><g:message code="vehicle.height.label" default="Height" /></span>

        <span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${vehicleInstance}" field="height"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.length}">
    <li class="fieldcontain">
        <span id="length-label" class="property-label"><g:message code="vehicle.length.label" default="Length" /></span>

        <span class="property-value" aria-labelledby="length-label"><g:fieldValue bean="${vehicleInstance}" field="length"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.width}">
    <li class="fieldcontain">
        <span id="width-label" class="property-label"><g:message code="vehicle.width.label" default="Width" /></span>

        <span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${vehicleInstance}" field="width"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.ground_clearance}">
    <li class="fieldcontain">
        <span id="ground_clearance-label" class="property-label"><g:message code="vehicle.ground_clearance.label" default="Groundclearance" /></span>

        <span class="property-value" aria-labelledby="ground_clearance-label"><g:fieldValue bean="${vehicleInstance}" field="ground_clearance"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.towing_capacity}">
    <li class="fieldcontain">
        <span id="towing_capacity-label" class="property-label"><g:message code="vehicle.towing_capacity.label" default="Towingcapacity" /></span>

        <span class="property-value" aria-labelledby="towing_capacity-label"><g:fieldValue bean="${vehicleInstance}" field="towing_capacity"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.steering_type}">
    <li class="fieldcontain">
        <span id="steering_type-label" class="property-label"><g:message code="vehicle.steering_type.label" default="Steeringtype" /></span>

        <span class="property-value" aria-labelledby="steering_type-label"><g:fieldValue bean="${vehicleInstance}" field="steering_type"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.front_rim_size}">
    <li class="fieldcontain">
        <span id="front_rim_size-label" class="property-label"><g:message code="vehicle.front_rim_size.label" default="Frontrimsize" /></span>

        <span class="property-value" aria-labelledby="front_rim_size-label"><g:fieldValue bean="${vehicleInstance}" field="front_rim_size"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.rear_rim_size}">
    <li class="fieldcontain">
        <span id="rear_rim_size-label" class="property-label"><g:message code="vehicle.rear_rim_size.label" default="Rearrimsize" /></span>

        <span class="property-value" aria-labelledby="rear_rim_size-label"><g:fieldValue bean="${vehicleInstance}" field="rear_rim_size"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.front_tyre}">
    <li class="fieldcontain">
        <span id="front_tyre-label" class="property-label"><g:message code="vehicle.front_tyre.label" default="Fronttyre" /></span>

        <span class="property-value" aria-labelledby="front_tyre-label"><g:fieldValue bean="${vehicleInstance}" field="front_tyre"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.rear_tyre}">
    <li class="fieldcontain">
        <span id="rear_tyre-label" class="property-label"><g:message code="vehicle.rear_tyre.label" default="Reartyre" /></span>

        <span class="property-value" aria-labelledby="rear_tyre-label"><g:fieldValue bean="${vehicleInstance}" field="rear_tyre"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.wheel_base}">
    <li class="fieldcontain">
        <span id="wheel_base-label" class="property-label"><g:message code="vehicle.wheel_base.label" default="Wheelbase" /></span>

        <span class="property-value" aria-labelledby="wheel_base-label"><g:fieldValue bean="${vehicleInstance}" field="wheel_base"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.front_brake}">
    <li class="fieldcontain">
        <span id="front_brake-label" class="property-label"><g:message code="vehicle.front_brake.label" default="Frontbrake" /></span>

        <span class="property-value" aria-labelledby="front_brake-label"><g:fieldValue bean="${vehicleInstance}" field="front_brake"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.rear_brake}">
    <li class="fieldcontain">
        <span id="rear_brake-label" class="property-label"><g:message code="vehicle.rear_brake.label" default="Rearbrake" /></span>

        <span class="property-value" aria-labelledby="rear_brake-label"><g:fieldValue bean="${vehicleInstance}" field="rear_brake"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.front_suspension}">
    <li class="fieldcontain">
        <span id="front_suspension-label" class="property-label"><g:message code="vehicle.front_suspension.label" default="Frontsuspension" /></span>

        <span class="property-value" aria-labelledby="front_suspension-label"><g:fieldValue bean="${vehicleInstance}" field="front_suspension"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.rear_suspension}">
    <li class="fieldcontain">
        <span id="rear_suspension-label" class="property-label"><g:message code="vehicle.rear_suspension.label" default="Rearsuspension" /></span>

        <span class="property-value" aria-labelledby="rear_suspension-label"><g:fieldValue bean="${vehicleInstance}" field="rear_suspension"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.comfort}">
    <li class="fieldcontain">
        <span id="comfort-label" class="property-label"><g:message code="vehicle.comfort.label" default="Comfort" /></span>

        <span class="property-value" aria-labelledby="comfort-label"><g:fieldValue bean="${vehicleInstance}" field="comfort"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.control_handling}">
    <li class="fieldcontain">
        <span id="control_handling-label" class="property-label"><g:message code="vehicle.control_handling.label" default="Controlhandling" /></span>

        <span class="property-value" aria-labelledby="control_handling-label"><g:fieldValue bean="${vehicleInstance}" field="control_handling"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.driver}">
    <li class="fieldcontain">
        <span id="driver-label" class="property-label"><g:message code="vehicle.driver.label" default="Driver" /></span>

        <span class="property-value" aria-labelledby="driver-label"><g:fieldValue bean="${vehicleInstance}" field="driver"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.entertainment}">
    <li class="fieldcontain">
        <span id="entertainment-label" class="property-label"><g:message code="vehicle.entertainment.label" default="Entertainment" /></span>

        <span class="property-value" aria-labelledby="entertainment-label"><g:fieldValue bean="${vehicleInstance}" field="entertainment"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.safety}">
    <li class="fieldcontain">
        <span id="safety-label" class="property-label"><g:message code="vehicle.safety.label" default="Safety" /></span>

        <span class="property-value" aria-labelledby="safety-label"><g:fieldValue bean="${vehicleInstance}" field="safety"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.security}">
    <li class="fieldcontain">
        <span id="security-label" class="property-label"><g:message code="vehicle.security.label" default="Security" /></span>

        <span class="property-value" aria-labelledby="security-label"><g:fieldValue bean="${vehicleInstance}" field="security"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.service_interval}">
    <li class="fieldcontain">
        <span id="service_interval-label" class="property-label"><g:message code="vehicle.service_interval.label" default="Serviceinterval" /></span>

        <span class="property-value" aria-labelledby="service_interval-label"><g:fieldValue bean="${vehicleInstance}" field="service_interval"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.warranty}">
    <li class="fieldcontain">
        <span id="warranty-label" class="property-label"><g:message code="vehicle.warranty.label" default="Warranty" /></span>

        <span class="property-value" aria-labelledby="warranty-label"><g:fieldValue bean="${vehicleInstance}" field="warranty"/></span>

    </li>
</g:if>

<g:if test="${vehicleInstance?.filename}">
    <li class="fieldcontain">
        <span id="filename-label" class="property-label"><g:message code="vehicle.filename.label" default="Filename" /></span>

        <span class="property-value" aria-labelledby="filename-label"><g:fieldValue bean="${vehicleInstance}" field="filename"/></span>

    </li>
</g:if>

</ol>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${vehicleInstance?.id}" />
        <g:link class="edit" action="edit" id="${vehicleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </fieldset>
</g:form>
</div>
</body>
</html>
