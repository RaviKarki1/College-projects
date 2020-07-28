<%@ page import="gadinepal_v1.Transaction_det" %>



<div class="fieldcontain ${hasErrors(bean: transaction_detInstance, field: 'itemname', 'error')} ">
	<label for="itemname">
		<g:message code="transaction_det.itemname.label" default="Itemname" />
		
	</label>
	<g:textField name="itemname" value="${transaction_detInstance?.itemname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transaction_detInstance, field: 'payment', 'error')} required">
	<label for="payment">
		<g:message code="transaction_det.payment.label" default="Payment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="payment" name="payment.id" from="${org.grails.paypal.Payment.list()}" optionKey="id" required="" value="${transaction_detInstance?.payment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transaction_detInstance, field: 'user_id', 'error')} ">
	<label for="user_id">
		<g:message code="transaction_det.user_id.label" default="Userid" />
		
	</label>
	<g:textField name="user_id" value="${transaction_detInstance?.user_id}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transaction_detInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="transaction_det.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${transaction_detInstance?.username}"/>
</div>

