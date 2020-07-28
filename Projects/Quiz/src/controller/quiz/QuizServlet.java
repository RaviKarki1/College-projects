package controller.quiz;

import domains.question.Question;
import service.quiz.QuizService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

/**
 * Created by Roshan on 8/3/2016.
 */

public class QuizServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        //get question from db using id
        String a="";
        String b="";
        String message1 ="";
        Question ques = new QuizService().getQuestion();


        // compare right ans and clicked ans
           if(page.equalsIgnoreCase("check1"))
           {
                a = ques.getOption1();
                b = ques.getRightanswer();
                if(a==b)
               {
                    message1 = "Answer right";
                   request.setAttribute("message1",message1);
               }
               else if(a!=b){
                   message1 = "Answer wrong";
                   request.setAttribute("message1",message1);
               }
               RequestDispatcher rd = request.getRequestDispatcher("quiz/quiz.jsp");
               rd.forward(request, response);
           }
        if(page.equalsIgnoreCase("check2"))
        {
            a = ques.getOption2();
            b = ques.getRightanswer();
            if(a==b)
            {
                message1 = "Answer right";
                request.setAttribute("message1",message1);
            }
            else if(a!=b){
                message1 = "Answer wrong";
                request.setAttribute("message1",message1);
            }
            RequestDispatcher rd = request.getRequestDispatcher("quiz/quiz.jsp");
            rd.forward(request, response);
        }
        if(page.equalsIgnoreCase("check3"))
        {
            a = ques.getOption3();
            b = ques.getRightanswer();

            if(a==b)
            {
                message1 = "Answer right";
                request.setAttribute("message1",message1);
            }
            else if(a!=b){
                 message1 = "Answer wrong";

                request.setAttribute("message1",message1);
            }
            RequestDispatcher rd = request.getRequestDispatcher("quiz/quiz.jsp");
            rd.forward(request, response);
        }
        if(page.equalsIgnoreCase("check4"))
        {
            a = ques.getOption4();
            b = ques.getRightanswer();

            if(a==b)
            {
                message1 = "Answer right";

                request.setAttribute("message1",message1);
            }
            else if(a!=b){
                message1 = "Answer wrong";

                request.setAttribute("message1",message1);

            }
            RequestDispatcher rd = request.getRequestDispatcher("quiz/quiz.jsp");
            rd.forward(request, response);
        }
        // store record

        Question question = new QuizService().getQuestion();
        request.setAttribute("question", question);

        RequestDispatcher rd = request.getRequestDispatcher("quiz/quiz.jsp");
        rd.forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        doPost(request,response);
    }
}
