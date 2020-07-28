<%@ page import="gadinepal_v1.Vehicle" %>



<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'model', 'error')} ">
    <label for="model">
        <g:message code="vehicle.model.label" default="Model" />

    </label>
    <g:textField name="model" value="${vehicleInstance?.model}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'brand', 'error')} required">
    <label for="brand">
        <g:message code="vehicle.brand.label" default="Brand" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="brand" name="brand.id" from="${gadinepal_v1.Brand.list()}" optionKey="id" required="" value="${vehicleInstance?.brand?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'category', 'error')} required">
    <label for="category">
        <g:message code="vehicle.category.label" default="Category" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="category" name="category.id" from="${gadinepal_v1.Category.list()}" optionKey="id" required="" value="${vehicleInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="vehicle.description.label" default="Description" />

    </label>
    <g:textField name="description" value="${vehicleInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'year', 'error')} ">
    <label for="year">
        <g:message code="vehicle.year.label" default="Year" />

    </label>
    <g:textField name="year" value="${vehicleInstance?.year}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'body_type', 'error')} ">
    <label for="body_type">
        <g:message code="vehicle.body_type.label" default="Bodytype" />

    </label>
    <g:textField name="body_type" value="${vehicleInstance?.body_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'seats', 'error')} ">
    <label for="seats">
        <g:message code="vehicle.seats.label" default="Seats" />

    </label>
    <g:textField name="seats" value="${vehicleInstance?.seats}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'price', 'error')} ">
    <label for="price">
        <g:message code="vehicle.price.label" default="Price" />

    </label>
    <g:textField name="price" value="${vehicleInstance?.price}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'engine_type', 'error')} ">
    <label for="engine_type">
        <g:message code="vehicle.engine_type.label" default="Enginetype" />

    </label>
    <g:textField name="engine_type" value="${vehicleInstance?.engine_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'engine_size', 'error')} ">
    <label for="engine_size">
        <g:message code="vehicle.engine_size.label" default="Enginesize" />

    </label>
    <g:textField name="engine_size" value="${vehicleInstance?.engine_size}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'cylinders', 'error')} ">
    <label for="cylinders">
        <g:message code="vehicle.cylinders.label" default="Cylinders" />

    </label>
    <g:textField name="cylinders" value="${vehicleInstance?.cylinders}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'max_torque', 'error')} ">
    <label for="max_torque">
        <g:message code="vehicle.max_torque.label" default="Maxtorque" />

    </label>
    <g:textField name="max_torque" value="${vehicleInstance?.max_torque}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'max_power', 'error')} ">
    <label for="max_power">
        <g:message code="vehicle.max_power.label" default="Maxpower" />

    </label>
    <g:textField name="max_power" value="${vehicleInstance?.max_power}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'bore_stroke', 'error')} ">
    <label for="bore_stroke">
        <g:message code="vehicle.bore_stroke.label" default="Borestroke" />

    </label>
    <g:textField name="bore_stroke" value="${vehicleInstance?.bore_stroke}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'compression_ratio', 'error')} ">
    <label for="compression_ratio">
        <g:message code="vehicle.compression_ratio.label" default="Compressionratio" />

    </label>
    <g:textField name="compression_ratio" value="${vehicleInstance?.compression_ratio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'transmission', 'error')} ">
    <label for="transmission">
        <g:message code="vehicle.transmission.label" default="Transmission" />

    </label>
    <g:textField name="transmission" value="${vehicleInstance?.transmission}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'drive_type', 'error')} ">
    <label for="drive_type">
        <g:message code="vehicle.drive_type.label" default="Drivetype" />

    </label>
    <g:textField name="drive_type" value="${vehicleInstance?.drive_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'fuel_type', 'error')} ">
    <label for="fuel_type">
        <g:message code="vehicle.fuel_type.label" default="Fueltype" />

    </label>
    <g:textField name="fuel_type" value="${vehicleInstance?.fuel_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'fuel_tank_capacity', 'error')} ">
    <label for="fuel_tank_capacity">
        <g:message code="vehicle.fuel_tank_capacity.label" default="Fueltankcapacity" />

    </label>
    <g:textField name="fuel_tank_capacity" value="${vehicleInstance?.fuel_tank_capacity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'fuel_consumption', 'error')} ">
    <label for="fuel_consumption">
        <g:message code="vehicle.fuel_consumption.label" default="Fuelconsumption" />

    </label>
    <g:textField name="fuel_consumption" value="${vehicleInstance?.fuel_consumption}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'kerb_weight', 'error')} ">
    <label for="kerb_weight">
        <g:message code="vehicle.kerb_weight.label" default="Kerbweight" />

    </label>
    <g:textField name="kerb_weight" value="${vehicleInstance?.kerb_weight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'height', 'error')} ">
    <label for="height">
        <g:message code="vehicle.height.label" default="Height" />

    </label>
    <g:textField name="height" value="${vehicleInstance?.height}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'length', 'error')} ">
    <label for="length">
        <g:message code="vehicle.length.label" default="Length" />

    </label>
    <g:textField name="length" value="${vehicleInstance?.length}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'width', 'error')} ">
    <label for="width">
        <g:message code="vehicle.width.label" default="Width" />

    </label>
    <g:textField name="width" value="${vehicleInstance?.width}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'ground_clearance', 'error')} ">
    <label for="ground_clearance">
        <g:message code="vehicle.ground_clearance.label" default="Groundclearance" />

    </label>
    <g:textField name="ground_clearance" value="${vehicleInstance?.ground_clearance}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'towing_capacity', 'error')} ">
    <label for="towing_capacity">
        <g:message code="vehicle.towing_capacity.label" default="Towingcapacity" />

    </label>
    <g:textField name="towing_capacity" value="${vehicleInstance?.towing_capacity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'steering_type', 'error')} ">
    <label for="steering_type">
        <g:message code="vehicle.steering_type.label" default="Steeringtype" />

    </label>
    <g:textField name="steering_type" value="${vehicleInstance?.steering_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'front_rim_size', 'error')} ">
    <label for="front_rim_size">
        <g:message code="vehicle.front_rim_size.label" default="Frontrimsize" />

    </label>
    <g:textField name="front_rim_size" value="${vehicleInstance?.front_rim_size}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'rear_rim_size', 'error')} ">
    <label for="rear_rim_size">
        <g:message code="vehicle.rear_rim_size.label" default="Rearrimsize" />

    </label>
    <g:textField name="rear_rim_size" value="${vehicleInstance?.rear_rim_size}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'front_tyre', 'error')} ">
    <label for="front_tyre">
        <g:message code="vehicle.front_tyre.label" default="Fronttyre" />

    </label>
    <g:textField name="front_tyre" value="${vehicleInstance?.front_tyre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'rear_tyre', 'error')} ">
    <label for="rear_tyre">
        <g:message code="vehicle.rear_tyre.label" default="Reartyre" />

    </label>
    <g:textField name="rear_tyre" value="${vehicleInstance?.rear_tyre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'wheel_base', 'error')} ">
    <label for="wheel_base">
        <g:message code="vehicle.wheel_base.label" default="Wheelbase" />

    </label>
    <g:textField name="wheel_base" value="${vehicleInstance?.wheel_base}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'front_brake', 'error')} ">
    <label for="front_brake">
        <g:message code="vehicle.front_brake.label" default="Frontbrake" />

    </label>
    <g:textField name="front_brake" value="${vehicleInstance?.front_brake}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'rear_brake', 'error')} ">
    <label for="rear_brake">
        <g:message code="vehicle.rear_brake.label" default="Rearbrake" />

    </label>
    <g:textField name="rear_brake" value="${vehicleInstance?.rear_brake}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'front_suspension', 'error')} ">
    <label for="front_suspension">
        <g:message code="vehicle.front_suspension.label" default="Frontsuspension" />

    </label>
    <g:textField name="front_suspension" value="${vehicleInstance?.front_suspension}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'rear_suspension', 'error')} ">
    <label for="rear_suspension">
        <g:message code="vehicle.rear_suspension.label" default="Rearsuspension" />

    </label>
    <g:textField name="rear_suspension" value="${vehicleInstance?.rear_suspension}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'comfort', 'error')} ">
    <label for="comfort">
        <g:message code="vehicle.comfort.label" default="Comfort" />

    </label>
    <g:textField name="comfort" value="${vehicleInstance?.comfort}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'control_handling', 'error')} ">
    <label for="control_handling">
        <g:message code="vehicle.control_handling.label" default="Controlhandling" />

    </label>
    <g:textField name="control_handling" value="${vehicleInstance?.control_handling}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'driver', 'error')} ">
    <label for="driver">
        <g:message code="vehicle.driver.label" default="Driver" />

    </label>
    <g:textField name="driver" value="${vehicleInstance?.driver}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'entertainment', 'error')} ">
    <label for="entertainment">
        <g:message code="vehicle.entertainment.label" default="Entertainment" />

    </label>
    <g:textField name="entertainment" value="${vehicleInstance?.entertainment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'safety', 'error')} ">
    <label for="safety">
        <g:message code="vehicle.safety.label" default="Safety" />

    </label>
    <g:textField name="safety" value="${vehicleInstance?.safety}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'security', 'error')} ">
    <label for="security">
        <g:message code="vehicle.security.label" default="Security" />

    </label>
    <g:textField name="security" value="${vehicleInstance?.security}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'service_interval', 'error')} ">
    <label for="service_interval">
        <g:message code="vehicle.service_interval.label" default="Serviceinterval" />

    </label>
    <g:textField name="service_interval" value="${vehicleInstance?.service_interval}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'warranty', 'error')} ">
    <label for="warranty">
        <g:message code="vehicle.warranty.label" default="Warranty" />

    </label>
    <g:textField name="warranty" value="${vehicleInstance?.warranty}"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'filename', 'error')} ">--}%
    %{--<label for="filename">--}%
        %{--<g:message code="vehicle.filename.label" default="Filename" />--}%

    %{--</label>--}%
    %{--<g:textField name="filename" value="${vehicleInstance?.filename}"/>--}%
%{--</div>--}%

