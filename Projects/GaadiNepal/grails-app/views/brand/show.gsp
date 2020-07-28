
<%@ page import="gadinepal_v1.Brand" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-brand" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="show-brand" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list brand">
			
				<g:if test="${brandInstance?.vecName}">
				<li class="fieldcontain">
					<span id="vecName-label" class="property-label"><g:message code="brand.vecName.label" default="Vec Name" /></span>
					
						<g:each in="${brandInstance.vecName}" var="v">
						<span class="property-value" aria-labelledby="vecName-label"><g:link controller="vehicle" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
				</li>
				</g:if>
			
				<g:if test="${brandInstance?.vec_brand}">
				<li class="fieldcontain">
					<span id="vec_brand-label" class="property-label"><g:message code="brand.vec_brand.label" default="Vecbrand" /></span>
					
						<span class="property-value" aria-labelledby="vec_brand-label"><g:fieldValue bean="${brandInstance}" field="vec_brand"/></span>
					
				</li>
				</g:if>

                <g:if test="${brandInstance?.filename}">
                    <li class="fieldcontain">
                        <span class="property-label">Logo:</span>
                        <img src="${createLinkTo(dir:'images/payload/brand_logo/'+brandInstance.vec_brand+"/",
                                file:''+brandInstance.filename)}"
                             alt="${brandInstance.filename}"
                             title="${brandInstance.filename}"
                             height="100" width="auto"/>
                    </li>
                </g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${brandInstance?.id}" />
					<g:link class="edit" action="edit" id="${brandInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
