<%@ page import="domains.question.Question" %>
<%@ page import="java.util.List" %>
<%@ page import="controller.quiz.QuizServlet" %>
<%@ page import="domains.RWmessage" %>
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




    <table class="responstable">
        <tr>
            <td>${message1}</td>
        </tr>
        <tr>

            <th colspan="2">${question.question}</th>
         </tr>



        <tr>
            <td><a href="playquiz?page=check1&id=${question.id}&click=${question.option1}" name="option1"> ${question.option1} </a></td>
            <td><a href="playquiz?page=check2&id=${question.id}&click=${question.option2}" name="option2"> ${question.option2} </a></td>
           </tr>
        <tr>
            <td><a href="playquiz?page=check3&id=${question.id}&click=${question.option3}" name="option3"> ${question.option3} </a></td>
            <td><a href="playquiz?page=check4&id=${question.id}&click=${question.option4 }"name="option4"> ${question.option4} </a></td>
        </tr>
    </table>
    <span name="rightanswer" type="hidden"> ${question.rightanswer} </span>

    <!--Out of 100, 50 are right.
    Play Again?-->
</div>


</body>
</html>