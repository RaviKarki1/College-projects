
<%@ page import="gadinepal_v1.Brand" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%

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
		<a href="#show-brand" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="show-brand" class="content scaffold-show" role="main">
			<h1>${brandInstance.vec_brand} Vehicles </h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list brand">

                %{--<g:if test="${brandInstance?.filename}">--}%
                    %{--<li class="fieldcontain">--}%
                        %{--<img src="${createLinkTo(dir:'images/payload/brand_logo/'+brandInstance.vec_brand+"/",--}%
                                %{--file:''+brandInstance.filename)}"--}%
                             %{--alt="${brandInstance.filename}"--}%
                             %{--title="${brandInstance.filename}"--}%
                             %{--height="100" width="auto" align="center"/>--}%
                    %{--</li>--}%
                %{--</g:if>--}%

                <g:if test="${vehicleInstanceList}">
                    <table>
                        <g:each in="${vehicleInstanceList}" var="vecIns" status="i">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <div class="gallery">
                                        <g:link controller="vehicle" action="user_show" id="${vecIns.id}">
                                            <img src="${createLinkTo(dir: 'images/payload/vehicle_pictures/' +
                                                    vecIns.brand.vec_brand + '/' + vecIns.model + '/',
                                                    file: '' + vecIns.filename)}"
                                                 alt="${vecIns.filename}"
                                                 title="${vecIns.model}"
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
