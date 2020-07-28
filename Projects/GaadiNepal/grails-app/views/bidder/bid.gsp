<%@ page import="gadinepal_v1.Bidder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bidder.label', default: 'Bidder')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-bidder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="create-bidder" class="content scaffold-create" role="main">
			<h1>Place Your Bid Amount</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${bidderInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${bidderInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="s_save" >
				<fieldset class="form">
                    <div class="fieldcontain">
                        <label>
                            <span>Item Name:</span>
                        </label>
                        ${gadinepal_v1.Auction.executeQuery("select item_name from Auction where id=$bidderInstance.auction.id").get(0)}
                    </div>
                    <div class="fieldcontain">
                        <label>
                            <span>Current MaxPrice:</span>
                        </label>
                        NRs.${gadinepal_v1.Bidder.executeQuery("select max(amount) from Bidder where auction=$bidderInstance.auction.id").get(0)}
                    </div>
					<g:render template="f_form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Bid" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
