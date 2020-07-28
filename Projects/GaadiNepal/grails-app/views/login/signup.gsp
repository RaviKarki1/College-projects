<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 18-Jul-17
  Time: 12:58 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>signup</title>
    <meta name="layout" content="main">
</head>

<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<g:form action="save" >
    <fieldset class="form">
        <g:render template="form"/>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save" value="Submit" />
    </fieldset>
</g:form>
</body>
</html>