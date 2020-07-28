<%@ page import="gadinepal_v1.Sales" %>



<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'vehicle_name', 'error')} required">
    <label for="vehicle_name">
        <g:message code="sales.vehicle_name.label" default="Vehiclename"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="vehicle_name" required="" value="${salesInstance?.vehicle_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'brand', 'error')} required">
    <label for="brand">
        <g:message code="sales.brand.label" default="Brand"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="brand" required="" value="${salesInstance?.brand}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'category', 'error')} required">
    <label for="category">
        <g:message code="sales.category.label" default="Category"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="category" required="" value="${salesInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'model_year', 'error')} required">
    <label for="model_year">
        <g:message code="sales.model_year.label" default="Modelyear"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="model_year" type="number" value="${salesInstance.model_year}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'engine_type', 'error')} required">
    <label for="engine_type">
        <g:message code="sales.engine_type.label" default="Enginetype"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="engine_type" required="" value="${salesInstance?.engine_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'drive_type', 'error')} required">
    <label for="drive_type">
        <g:message code="sales.drive_type.label" default="Drivetype"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="drive_type" required="" value="${salesInstance?.drive_type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'ground_clearence', 'error')} required">
    <label for="ground_clearence">
        <g:message code="sales.ground_clearence.label" default="Groundclearence"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="ground_clearence" type="number" value="${salesInstance.ground_clearence}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'height', 'error')} required">
    <label for="height">
        <g:message code="sales.height.label" default="Height"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="height" type="number" value="${salesInstance.height}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'seats', 'error')} required">
    <label for="seats">
        <g:message code="sales.seats.label" default="Seats"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="seats" type="number" value="${salesInstance.seats}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'cost', 'error')} required">
    <label for="cost">
        <g:message code="sales.cost.label" default="Cost"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="cost" type="number" value="${salesInstance.cost}" required=""/>
</div>

