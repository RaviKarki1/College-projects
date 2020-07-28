<%@ page import="gadinepal_v1.Rent_Rreg_Det" %>



<div class="fieldcontain ${hasErrors(bean: rent_Rreg_DetInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="rent_Rreg_Det.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${rent_Rreg_DetInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rent_Rreg_DetInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="rent_Rreg_Det.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${rent_Rreg_DetInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rent_Rreg_DetInstance, field: 'phone_num', 'error')} required">
	<label for="phone_num">
		<g:message code="rent_Rreg_Det.phone_num.label" default="Phonenum" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phone_num" id="phone_num" type="text" value="${rent_Rreg_DetInstance.phone_num}" required="" onchange="checkPhoneNumber();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rent_Rreg_DetInstance, field: 'email_id', 'error')} required">
	<label for="email_id">
		<g:message code="rent_Rreg_Det.email_id.label" default="Emailid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email_id" required="" value="${rent_Rreg_DetInstance?.email_id}" id="email" onchange="ValidateForm();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rent_Rreg_DetInstance, field: 'pick_up_date', 'error')} required">
	<label for="pick_up_date">
		<g:message code="rent_Rreg_Det.pick_up_date.label" default="Pickupdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="pick_up_date" id="pickupDate" precision="day"  value="${rent_Rreg_DetInstance?.pick_up_date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: rent_Rreg_DetInstance, field: 'drop_off_date', 'error')} required">
	<label for="drop_off_date">
		<g:message code="rent_Rreg_Det.drop_off_date.label" default="Dropoffdate" />
		<span class="required-indicator">*</span>
	</label>

	<g:datePicker name="drop_off_date" precision="day" id="dropOffDate" value="${rent_Rreg_DetInstance?.drop_off_date}"  onchange="checkDate();"  />
</div>

<div class="fieldcontain" ${hasErrors(bean: rent_Rreg_DetInstance, field: 'rental', 'error')} required">

%{--              commented the field rental          --}%
	%{--<label for="rental">--}%
		%{--<g:message code="rent_Rreg_Det.rental.label" default="Rental" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%

	%{--<g:select id="rental" name="rental.id" from="${gadinepal_v1.Rental.list()}" optionKey="id" required="" value="${rent_Rreg_DetInstance?.rental?.id=session.rental_id}" class="many-to-one"/>--}%
    %{--<input type="text" id="rental" name="rental.id" value="${rental_id}" readonly/>--}%

         <g:hiddenField name="rental.id" type="text" id="rental" value="${rental_id}" />
         %{--<g:hiddenField name="rental.id" type="text" id="rental" value="${session.rentalId}" />  --}%

</div>

