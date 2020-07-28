<%@ page import="gadinepal_v1.Auction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auction.label', default: 'Auction')}" />
		<title>Place Auction</title>
	</head>
	<body>
		<a href="#create-auction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="create-auction" class="content scaffold-create" role="main">
			<h1>Place Auction</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${auctionInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${auctionInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
            
            <g:uploadForm action="s_save" >
				<fieldset class="form">
					<g:render template="f_form"/>
                    <div class="fieldcontain">
                        <label for="payload">
                            Picture:
                        </label>
                        <input type="file" id="payload" name="payload"/>
                    </div>
				</fieldset>

				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Place Auction" />
				</fieldset>
			</g:uploadForm>
		</div>
	</body>
</html>
