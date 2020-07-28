package service.quiz;

import domains.question.Question;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

/**
 * Created by Roshan on 8/3/2016.
 */
public class QuizService {

    public Question getQuestion() {
        Question question = null;
        try {
            String query = "select * from question where id=?";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);

           // pstm.setInt(1, 1);
            Random rand = new Random();
            int n = rand.nextInt(5)+1;
            pstm.setInt(1,n);

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
}
