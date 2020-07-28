<%@ page import="gadinepal_v1.Sales_reg" %>



<div class="fieldcontain ${hasErrors(bean: sales_regInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="sales_reg.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${sales_regInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_regInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="sales_reg.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${sales_regInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_regInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="sales_reg.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${sales_regInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_regInstance, field: 'phone_num', 'error')} required">
	<label for="phone_num">
		<g:message code="sales_reg.phone_num.label" default="Phonenum" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phone_num" type="number" value="${sales_regInstance.phone_num}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sales_regInstance, field: 'sales', 'error')} required">
	%{--<label for="sales">--}%
		%{--<g:message code="sales_reg.sales.label" default="Sales" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="sales" name="sales.id" from="${gadinepal_v1.Sales.list()}" optionKey="id" required="" value="${sales_regInstance?.sales?.id}" class="many-to-one"/>--}%

    %{--<g:hiddenField name="sales.id" type="text" id="sales" value="${sales_id}" ></g:hiddenField>--}%

    %{--<g:hiddenField name="rental.id" type="text" id="rental" value="${rental_id}" ></g:hiddenField>--}%
        <g:hiddenField name="sales.id" type="text" id="sales" value="${id}" ></g:hiddenField>
</div>

