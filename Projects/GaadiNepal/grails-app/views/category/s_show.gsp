
<%@ page import="gadinepal_v1.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        <style>

        div.gallery {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 180px;
            height: 180px;
        }

        div.gallery:hover {
            border: 1px solid #777;
        }

        div.gallery img {
            width: 100%;
            height: auto;
        }

        div.desc {
            padding: 15px;
            text-align: center;
        }
        </style>
	</head>
	<body>
		<a href="#show-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="show-category" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list category">
			

                <g:if test="${vehicleInstanceLst}">
                    <table>
                        <g:each in="${vehicleInstanceLst}" var="vecIns" status="i">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <div class="gallery">
                                    <g:link controller="vehicle" action="user_show" id="${vecIns.id}">
                                        <img src="${createLinkTo(dir: 'images/payload/vehicle_pictures/' +
                                                vecIns.brand.vec_brand + '/' + vecIns.model + '/',
                                                file: '' + vecIns.filename)}"
                                             alt="${vecIns.filename}"
                                             title="${vecIns.filename}"
                                             height="60" width="auto"/>
                                    </g:link>

                                    <div class="desc">
                                        ${fieldValue(bean: vecIns, field: "model")}
                                    </div>
                                </div>
                            </tr>
                        </g:each>
                    </table>
                </g:if>
			</ol>
		</div>
	</body>
</html>
