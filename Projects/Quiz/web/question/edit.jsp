<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 7/11/2016
  Time: 3:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/table.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="menu-wrapper">
    <%@include file="../includes/menu.jsp"%>

</div>
<div class="content">

    <form method="post" action="addquestion">

        <input type="hidden" name="page" value="updatequestion">
        <input type="hidden" name="id" value="${question.id}">


        <table class="responstable">
            <tr>
                <th>Question</th><td><input type="text" name="question" value="${question.question}"></td>
            </tr>
            <tr>
                <th>Option 1</th><td><input type="text" name="option1" value="${question.option1}"></td>
            </tr>
            <tr>
                <th>Option 2</th><td><input type="text" name="option2" value="${question.option2})"></td>
            </tr>
            <tr>
                <th>Option 3</th><td><input type="text" name="option3" value="${question.option3}"></td>
            </tr>
            <tr>
                <th>Option 4</th><td><input type="text" name="option4" value="${question.option4}"></td>
            </tr>
            <tr>
                <th>Category</th><td><input type="text" name = "category" value="${question.category}"></td>
            </tr>
            <tr>
                <th>Right answer</th><td><input type="text" name="rightanswer" value="${question.rightanswer}"></td>
            </tr>

            <tr>
                <td><input type="Submit" value="Update Question"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
