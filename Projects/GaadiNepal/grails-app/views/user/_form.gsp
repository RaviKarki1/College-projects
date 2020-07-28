<%@ page import="gadinepal_v1.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="role" from="${userInstance.constraints.role.inList}" required="" value="${userInstance?.role}" valueMessagePrefix="user.role"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'auction', 'error')} ">--}%
	%{--<label for="auction">--}%
		%{--<g:message code="user.auction.label" default="Auction" />--}%
		%{----}%
	%{--</label>--}%
	%{----}%
%{--<ul class="one-to-many">--}%
%{--<g:each in="${userInstance?.auction?}" var="a">--}%
    %{--<li><g:link controller="auction" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="auction" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'auction.label', default: 'Auction')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'bidder', 'error')} ">--}%
	%{--<label for="bidder">--}%
		%{--<g:message code="user.bidder.label" default="Bidder" />--}%
		%{----}%
	%{--</label>--}%
	%{----}%
%{--<ul class="one-to-many">--}%
%{--<g:each in="${userInstance?.bidder?}" var="b">--}%
    %{--<li><g:link controller="bidder" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="bidder" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'bidder.label', default: 'Bidder')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%

%{--</div>--}%

