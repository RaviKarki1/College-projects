<%@ page import="gadinepal_v1.Rental" %>



<div class="fieldcontain ${hasErrors(bean: rentalInstance, field: 'vecname', 'error')} required">
	<label for="vecname">
		<g:message code="rental.vecname.label" default="Vecname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="vecname" required="" value="${rentalInstance?.vecname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rentalInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="rental.category.label" default="Category" />
		
	</label>
	<g:textField name="category" value="${rentalInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rentalInstance, field: 'noofseat', 'error')} required">
	<label for="noofseat">
		<g:message code="rental.noofseat.label" default="Noofseat" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="noofseat" type="number" value="${rentalInstance.noofseat}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: rentalInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="rental.price.label" default="Price" />(Rs.)
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${rentalInstance.price}" required=""/> /day
</div>

<div class="fieldcontain ${hasErrors(bean: rentalInstance, field: 'user_id', 'error')} required">
	<label for="user_id">
		%{--<g:message code="rental.user_id.label" default="Userid" />--}%
		%{--<span class="required-indicator">*</span>--}%
	</label>
	%{--<g:textField name="user_id" required="" value="${rentalInstance?.user_id=session.user.id}"/>--}%
    <g:hiddenField name="user_id" required="" value="${rentalInstance?.user_id=session.user.id}"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: rentalInstance, field: 'rent_Rreg_Det', 'error')} ">--}%
	%{--<label for="rent_Rreg_Det">--}%
		%{--<g:message code="rental.rent_Rreg_Det.label" default="Rent Rreg Det" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select name="rent_Rreg_Det" from="${gadinepal_v1.Rent_Rreg_Det.list()}" multiple="multiple" optionKey="id" size="5" value="${rentalInstance?.rent_Rreg_Det*.id}" class="many-to-many"/>--}%
%{--</div>--}%

