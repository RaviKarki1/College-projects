
<%@ page import="gadinepal_v1.Rent_Rreg_Det" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-rent_Rreg_Det" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                <li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
                <li><g:link controller="login" action="logout">logout</g:link></li>


			</ul>
		</div>
		<div id="list-rent_Rreg_Det" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'rent_Rreg_Det.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'rent_Rreg_Det.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="phone_num" title="${message(code: 'rent_Rreg_Det.phone_num.label', default: 'Phonenum')}" />
					
						<g:sortableColumn property="email_id" title="${message(code: 'rent_Rreg_Det.email_id.label', default: 'Emailid')}" />
					
						<g:sortableColumn property="pick_up_date" title="${message(code: 'rent_Rreg_Det.pick_up_date.label', default: 'Pickupdate')}" />
					
						<g:sortableColumn property="drop_off_date" title="${message(code: 'rent_Rreg_Det.drop_off_date.label', default: 'Dropoffdate')}" />

                        %{--<g:sortableColumn default="accept/reject" />--}%
                        <th colspan="2">accept/reject</th>


					
					</tr>
				</thead>
				<tbody>
				%{--<g:each in="${rent_Rreg_DetInstanceList}" status="i" var="rent_Rreg_DetInstance">--}%
					%{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
					%{----}%
						%{--<td><g:link action="show" id="${rent_Rreg_DetInstance.id}">${fieldValue(bean: rent_Rreg_DetInstance, field: "name")}</g:link></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: rent_Rreg_DetInstance, field: "address")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: rent_Rreg_DetInstance, field: "phone_num")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: rent_Rreg_DetInstance, field: "email_id")}</td>--}%
					%{----}%
						%{--<td><g:formatDate date="${rent_Rreg_DetInstance.pick_up_date}" /></td>--}%
					%{----}%
						%{--<td><g:formatDate date="${rent_Rreg_DetInstance.drop_off_date}" /></td>--}%
					%{----}%
					%{--</tr>--}%
				%{--</g:each>--}%

                <g:each in="${rentalInstanceList.rent_Rreg_Det}" var="r">
                    <g:each in="${r}" var="i">
                        <tr>
                            <td>
                                %{--<g:link controller="rent_Rreg_Det" action="show" id="${i.id}">--}%
                                    ${i.name}
                                %{--</g:link>--}%
                            </td>
                            <td>${i.address}</td>
                            <td>${i.phone_num}</td>
                            <td>${i.email_id}</td>
                            <td>${i.pick_up_date}</td>
                            <td>${i.drop_off_date}</td>

                            <td><g:link controller="Rent_Rreg_Det" action="sendEmail_acpt" params="${[email:i.email_id,address:i.address,name:i.name,phone_num:i.phone_num,pick_up_date:i.pick_up_date,drop_off_date:i.drop_off_date,rental_id:session.rental_id]}">accept</g:link></td>
                            <td><g:link controller="Rent_Rreg_Det" action="sendEmail_rjt" params="${[email:i.email_id]}">reject</g:link></td>

                        </tr>
                    </g:each>
                </g:each>


				</tbody>
			</table>
			%{--<div class="pagination">--}%
				%{--<g:paginate total="${rent_Rreg_DetInstanceTotal}" />--}%
			%{--</div>--}%
		</div>
	</body>
</html>
