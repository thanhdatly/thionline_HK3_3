package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.QuestionModel;
import com.javaweb.model.Test_QuestionModel;

public class Test_QuestionMapper implements RowMapper<Test_QuestionModel> {

    @Override
    public Test_QuestionModel mapRow(ResultSet rs) {
        try {
            Test_QuestionModel t_s = new Test_QuestionModel();
            t_s.setId(rs.getLong("id"));
            t_s.setTestId(rs.getLong("testid"));
            t_s.setQuestionId(rs.getLong("questionid"));
            QuestionModel question = new QuestionModel();
            try {

                if (rs.getString("correct") != null) {
                    question.setCorrect(rs.getString("correct"));
                if (rs.getString("content") != null)
                    question.setContent(rs.getString("content"));
                if (rs.getString("a") != null)
                    question.setA(rs.getString("a"));
                if (rs.getString("b") != null)
                    question.setB(rs.getString("b"));
                if (rs.getString("c") != null)
                    question.setC(rs.getString("c"));
                if (rs.getString("d") != null)
                    question.setD(rs.getString("d"));

                }


            } catch (Exception e) {
                System.out.println(e.getMessage());
            } finally {
                t_s.setQuestion(question);
            }
            return t_s;
        } catch (SQLException e) {
            return null;
        }

    }

}
