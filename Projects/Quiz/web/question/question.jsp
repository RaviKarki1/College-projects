<%@ page import="domains.question.Question" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 7/11/2016
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Questions</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>TMPH00043</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/table.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div clas="menu-wapper">
    <%@include file="../includes/menu.jsp"%>

</div>
<div class="content">

    <%
        List<Question> questionList = (List<Question>)request.getAttribute("questionList");
    %>
    <h2><a href="addquestionform?page=addquestionform">Add New Question</a></h2>

    <table class="responstable">
        <tr>
            <th>Question</th>
            <th>Category</th>
            <th>Option 1</th>
            <th>Option 2</th>
            <th>Option 3</th>
            <th>Option 4</th>
            <th>Right Answer</th>
        </tr>


        <%
            for (Question question : questionList) {


        %>
        <tr>
            <td><%=question.getQuestion()%></td>
            <td><%=question.getCategory()%></td>
            <td><%=question.getOption1()%></td>
            <td><%=question.getOption2()%></td>
            <td><%=question.getOption3()%></td>
            <td><%=question.getOption4()%></td>
            <td><%=question.getRightanswer()%></td>
            <td><a href="editquestion?page=editquestion&id=<%=question.getId()%>"><img src="image/edit.jpg" alt="Edit" height="10px" width="20px"/></a></td>
            <td><a href="deletequestion?page=deletequestion&id=<%=question.getId()%>"><img src="image/delete.png" alt="Delete"  height="10px" width="20px"/></a></td>
        </tr>

        <%}%>
    </table>

</div>


</body>
</html>