package controller.user;

import domains.user.User;
import service.user.UserService;

import javax.servlet.RequestDispatcher;
import java.io.IOException;

/**
 * Created by Ravi on 04/07/2016.
 */
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String message = "";

        User user = null;
        try {
            user = new UserService().getUser(username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (user != null) {
            message = "Login Success!";
            request.setAttribute("message", message);
            request.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
            rd.forward(request, response);


        }else{
            message = "Invalid Username or Password!!";
            request.setAttribute("message", message);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
        rd.forward(request, response);

    }
}
