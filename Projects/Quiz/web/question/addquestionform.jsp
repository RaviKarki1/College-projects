<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 7/11/2016
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Question</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/table.css" rel="stylesheet" type="text/css" />
</head>
<body>
<body>
<div class="menu-wrapper">
    <%@include file="../includes/menu.jsp"%>

</div>
<div class="content">

    <form method="post" action="addquestion">

        <input type="hidden" name="page" value="addquestion">


        <table class="responstable">
            <tr>
                <th>Question</th><td><input type="text" name="question"></td>
            </tr>
            <tr>
                <th>Option 1</th><td><input type="text" name="option1"></td>
            </tr>
            <tr>
                <th>Option 2</th><td><input type="text" name="option2"></td>
            </tr>
            <tr>
                <th>Option 3</th><td><input type="text" name="option3"></td>
            </tr>
            <tr>
                <th>Option 4</th><td><input type="text" name="option4"></td>
            </tr>
            <tr>
                <th>Category</th><td><input type="text" name = "category"></td>
            </tr>
            <tr>
                <th>Right answer</th><td><input type="text" name="rightanswer"></td>
            </tr>

            <tr>
                <td><input type="Submit" value="Add Question"></td>
            </tr>

        </table>
    </form>
</div>


</body>
</html>


</body>
</html>
