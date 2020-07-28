<%@ page import="gadinepal_v1.Rental_acpt" %>



<div class="fieldcontain ${hasErrors(bean: rental_acptInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="rental_acpt.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${rental_acptInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rental_acptInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="rental_acpt.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${rental_acptInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rental_acptInstance, field: 'phone_num', 'error')} required">
	<label for="phone_num">
		<g:message code="rental_acpt.phone_num.label" default="Phonenum" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phone_num" type="number" min="10" value="${rental_acptInstance.phone_num}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: rental_acptInstance, field: 'email_id', 'error')} required">
	<label for="email_id">
		<g:message code="rental_acpt.email_id.label" default="Emailid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email_id" required="" value="${rental_acptInstance?.email_id}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rental_acptInstance, field: 'pick_up_date', 'error')} required">
	<label for="pick_up_date">
		<g:message code="rental_acpt.pick_up_date.label" default="Pickupdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="pick_up_date" precision="day"  value="${rental_acptInstance?.pick_up_date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: rental_acptInstance, field: 'drop_off_date', 'error')} required">
	<label for="drop_off_date">
		<g:message code="rental_acpt.drop_off_date.label" default="Dropoffdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="drop_off_date" precision="day"  value="${rental_acptInstance?.drop_off_date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: rental_acptInstance, field: 'rental_id', 'error')} ">
	<label for="rental_id">
		<g:message code="rental_acpt.rental_id.label" default="Rentalid" />
		
	</label>
	<g:textField name="rental_id" value="${rental_acptInstance?.rental_id}"/>
</div>

