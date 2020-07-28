package service.question;

import domains.question.Question;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 7/8/2016.
 */
public class QuestionService {

    public Question getQuestion(int id){

    Question question = null;
    try {
        String query = "select * from question where id=?";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);

        pstm.setInt(1, id);

        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            question = new Question();
            question.setQuestion(rs.getString("question"));
            question.setOption1(rs.getString("option1"));
            question.setOption2(rs.getString("option2"));
            question.setOption3(rs.getString("option3"));
            question.setOption4(rs.getString("option4"));
            question.setCategory(rs.getString("category"));
            question.setRightanswer(rs.getString("rightanswer"));
            question.setId(rs.getInt("id"));

        }


    } catch (SQLException e) {
        e.printStackTrace();
    }
    return question;
}
    public List<Question> getQuestionList(){

        List<Question> questionList = new ArrayList<Question>();

        try {
            String query = "select * from question";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);

            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Question question = new Question();
                question = new Question();
                question.setQuestion(rs.getString("question"));
                question.setOption1(rs.getString("option1"));
                question.setOption2(rs.getString("option2"));
                question.setOption3(rs.getString("option3"));
                question.setOption4(rs.getString("option4"));
                question.setCategory(rs.getString("category"));
                question.setRightanswer(rs.getString("rightanswer"));
                question.setId(rs.getInt("id"));


                questionList.add(question);

            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return questionList;
    }

    public void addQuestion(Question question){
        try {
            String query = "insert into question(question,option1,option2,option3,option4,rightanswer,category) values(?,?,?,?,?,?,?)";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1,question.getQuestion());
            pstm.setString(2,question.getOption1());
            pstm.setString(3,question.getOption2());
            pstm.setString(4,question.getOption3());
            pstm.setString(5,question.getOption4());
            pstm.setString(6,question.getRightanswer());
            pstm.setString(7,question.getCategory());

            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void delete(int id){
        try {
            String query = "delete from question where id=?";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setInt(1,id);

            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void update(Question question){
        try {
            String query = "update question set question=?,option1=?,option2=?,option3=?,option4=?,rightanswer=?,category=? where id=?";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1,question.getQuestion());
            pstm.setString(2,question.getOption1());
            pstm.setString(3,question.getOption2());
            pstm.setString(4,question.getOption3());
            pstm.setString(5,question.getOption4());
            pstm.setString(6,question.getRightanswer());
            pstm.setString(7,question.getCategory());
            pstm.setInt(8, question.getId());
            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }



}


