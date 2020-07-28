<%@ page import="gadinepal_v1.Bidder" %>



<div class="fieldcontain ${hasErrors(bean: bidderInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="bidder.amount.label" default="Amount" />(NRs)
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="amount" required="" value="${bidderInstance?.amount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bidderInstance, field: 'auction', 'error')} required">
	<g:select id="auction" name="auction.id" from="${gadinepal_v1.Auction.list()}" optionKey="id" required="" value="${bidderInstance?.auction?.id}" class="many-to-one" hidden=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bidderInstance, field: 'user', 'error')} required">
	<g:select id="user" name="user.id" from="${gadinepal_v1.User.list()}" optionKey="id" required="" value="${bidderInstance?.user?.id}" class="many-to-one" hidden=""/>
</div>

