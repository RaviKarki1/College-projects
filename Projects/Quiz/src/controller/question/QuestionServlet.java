package controller.question;

import domains.question.Question;
import domains.user.User;
import service.question.QuestionService;
import service.user.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by DELL on 7/8/2016.
 */
public class QuestionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("qlist")) {

            List<Question> questionList = new QuestionService().getQuestionList();
            request.setAttribute("questionList", questionList);
            RequestDispatcher rd = request.getRequestDispatcher("question/question.jsp");
            rd.forward(request, response);
        }


        if (page.equalsIgnoreCase("addquestionform")) {
            RequestDispatcher rd = request.getRequestDispatcher("question/addquestionform.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("addquestion")) {

            Question question= new Question();
            question.setQuestion(request.getParameter("question"));
            question.setOption1(request.getParameter("option1"));
            question.setOption2(request.getParameter("option2"));
            question.setOption3(request.getParameter("option3"));
            question.setOption4(request.getParameter("option4"));
            question.setRightanswer(request.getParameter("rightanswer"));
            question.setCategory(request.getParameter("category"));


            new QuestionService().addQuestion(question);

            List<Question> questionList = new QuestionService().getQuestionList();
            request.setAttribute("questionList", questionList);
            RequestDispatcher rd = request.getRequestDispatcher("question/question.jsp");
            rd.forward(request, response);





        }

        if (page.equalsIgnoreCase("deletequestion")) {
            int id = Integer.parseInt(request.getParameter("id"));

            new QuestionService().delete(id);

            List<Question> questionList = new QuestionService().getQuestionList();
            request.setAttribute("questionList", questionList);
            RequestDispatcher rd = request.getRequestDispatcher("question/question.jsp");
            rd.forward(request, response);

        }

        if (page.equalsIgnoreCase("editquestion")) {
            int id = Integer.parseInt(request.getParameter("id"));

            Question question =  new QuestionService().getQuestion(id);

            request.setAttribute("question",question);
            RequestDispatcher rd = request.getRequestDispatcher("question/edit.jsp");
            rd.forward(request,response);
        }

        if (page.equalsIgnoreCase("updatequestion")) {

            Question question= new Question();
            question.setId(Integer.parseInt(request.getParameter("id")));
            question.setQuestion(request.getParameter("question"));
            question.setOption1(request.getParameter("option1"));
            question.setOption2(request.getParameter("option2"));
            question.setOption3(request.getParameter("option3"));
            question.setOption4(request.getParameter("option4"));
            question.setRightanswer(request.getParameter("rightanswer"));
            question.setCategory(request.getParameter("category"));


            new QuestionService().update(question);

            List<Question> questionList = new QuestionService().getQuestionList();
            request.setAttribute("questionList", questionList);
            RequestDispatcher rd = request.getRequestDispatcher("question/question.jsp");
            rd.forward(request, response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
