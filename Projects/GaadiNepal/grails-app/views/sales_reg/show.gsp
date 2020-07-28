
<%@ page import="gadinepal_v1.Sales_reg" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales_reg.label', default: 'Sales_reg')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sales_reg" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%
                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
            %{--</ul>--}%
		%{--</div>--}%
		<div id="show-sales_reg" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sales_reg">
			
				<g:if test="${sales_regInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="sales_reg.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${sales_regInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sales_regInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="sales_reg.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${sales_regInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sales_regInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="sales_reg.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${sales_regInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sales_regInstance?.phone_num}">
				<li class="fieldcontain">
					<span id="phone_num-label" class="property-label"><g:message code="sales_reg.phone_num.label" default="Phonenum" /></span>
					
						<span class="property-value" aria-labelledby="phone_num-label"><g:fieldValue bean="${sales_regInstance}" field="phone_num"/></span>
					
				</li>
				</g:if>
			
				%{--<g:if test="${sales_regInstance?.sales}">--}%
				%{--<li class="fieldcontain">--}%
					%{--<span id="sales-label" class="property-label"><g:message code="sales_reg.sales.label" default="Sales" /></span>--}%
					%{----}%
						%{--<span class="property-value" aria-labelledby="sales-label"><g:link controller="sales" action="show" id="${sales_regInstance?.sales?.id}">${sales_regInstance?.sales?.encodeAsHTML()}</g:link></span>--}%
					%{----}%
				%{--</li>--}%
				%{--</g:if>--}%

                %{--<g:if test="${sales_regInstance?.sales}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<g:link controller="sales_reg" action="buy_req_list" id="${rentalInstance.id}">--}%
                            %{--List registrations--}%
                        %{--</g:link>--}%

                    %{--</li>--}%
                %{--</g:if>--}%
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sales_regInstance?.id}" />
					%{--<g:link class="edit" action="edit" id="${sales_regInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
