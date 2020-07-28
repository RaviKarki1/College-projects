
<%@ page import="gadinepal_v1.Brand" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-brand" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="list-brand" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="vec_brand" title="${message(code: 'brand.vec_brand.label', default: 'Vecbrand')}" />

                        <g:sortableColumn property="vec_brand" title="${message(code: 'brand.vec_brand.label', default: 'Logo')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${brandInstanceList}" status="i" var="brandInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${brandInstance.id}">${fieldValue(bean: brandInstance, field: "vec_brand")}</g:link></td>
						<td><img src="${createLinkTo(dir:'images/payload/brand_logo/'+brandInstance.vec_brand+"/",
                                file:''+brandInstance.filename)}"
                                 alt="${brandInstance.filename}"
                                 title="${brandInstance.filename}"
                                 height="50" width="auto"/></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${brandInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
