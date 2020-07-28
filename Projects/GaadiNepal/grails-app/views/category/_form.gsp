<%@ page import="gadinepal_v1.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'vecName', 'error')} ">
	<label for="vecName">
		<g:message code="category.vecName.label" default="Vec Name" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.vecName?}" var="v">
    <li><g:link controller="vehicle" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="vehicle" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'vehicle.label', default: 'Vehicle')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'vec_category', 'error')} ">
	<label for="vec_category">
		<g:message code="category.vec_category.label" default="Veccategory" />
		
	</label>
	<g:textField name="vec_category" value="${categoryInstance?.vec_category}"/>
</div>

