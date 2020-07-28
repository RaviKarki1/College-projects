
<%@ page import="gadinepal_v1.Bidder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bidder.label', default: 'Bidder')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bidder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="show-bidder" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bidder">
			
				<g:if test="${bidderInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="bidder.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label">
                            NRs.<g:fieldValue bean="${bidderInstance}" field="amount"/>
                        </span>
					
				</li>
				</g:if>
			
				<g:if test="${bidderInstance?.auction}">
				<li class="fieldcontain">
					<span id="auction-label" class="property-label"><g:message code="bidder.auction.label" default="Auction" /></span>
					
						<span class="property-value" aria-labelledby="auction-label"><g:link controller="auction" action="show" id="${bidderInstance?.auction?.id}">${bidderInstance?.auction?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bidderInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="bidder.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label">
                            <g:link controller="user" action="s_show" id="${bidderInstance?.user?.id}">
                                ${bidderInstance?.user?.encodeAsHTML()}
                            </g:link>
                        </span>
					
				</li>
				</g:if>

			</ol>
			%{--<g:form>--}%
				%{--<fieldset class="buttons">--}%
					%{--<g:hiddenField name="id" value="${bidderInstance?.id}" />--}%
					%{--<g:link class="edit" action="edit" id="${bidderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				%{--</fieldset>--}%
			%{--</g:form>--}%
		</div>
	</body>
</html>
