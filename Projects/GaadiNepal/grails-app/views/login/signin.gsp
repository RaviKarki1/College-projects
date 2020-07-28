<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>tmp_home</title>
    <meta name="layout" content="main">
</head>

<body>
<div id="create-user" class="content scaffold-create" role="main">
    <h1>Login</h1>

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:form action="login" controller="login">
        <g:render template="login"/>
        <div class="buttons" style="margin-top: 20px" >
                <g:submitButton class="buttons" name="submit" value="Login" style="margin-left:200px"/>
        </div>
    </g:form>
</div>
</body>
</html>