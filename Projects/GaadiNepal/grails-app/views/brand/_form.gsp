<%@ page import="gadinepal_v1.Brand" %>



<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'vecName', 'error')} ">
	<label for="vecName">
		<g:message code="brand.vecName.label" default="Vec Name" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${brandInstance?.vecName?}" var="v">
    <li><g:link controller="vehicle" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="vehicle" action="create" params="['brand.id': brandInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'vehicle.label', default: 'Vehicle')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'vec_brand', 'error')} ">
	<label for="vec_brand">
		<g:message code="brand.vec_brand.label" default="Vecbrand" />
		
	</label>
	<g:textField name="vec_brand" value="${brandInstance?.vec_brand}"/>
</div>

