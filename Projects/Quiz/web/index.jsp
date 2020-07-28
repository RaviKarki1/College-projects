<%--
  Created by IntelliJ IDEA.
  User: Ravi
  Date: 04/07/2016
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <script src="js/login.js"></script>
      <link href="css/login.css" type="text/css" rel="stylesheet">
    <title></title>
  </head>
  <body>
  <form class="login" action="login" method="post">

      <fieldset>

          <legend class="legend">Login</legend>

          <div class="input">
              <input type="text" placeholder="Username" required name="username"/>
              <span><i class="fa fa-envelope-o"></i></span>
          </div>

          <div class="input">
              <input type="password" placeholder="Password" required name="password"/>
              <span><i class="fa fa-lock"></i></span>
          </div>

          <input type="submit" class="submit" value="Login">

      </fieldset>


  </form>
  </body>
</html>
