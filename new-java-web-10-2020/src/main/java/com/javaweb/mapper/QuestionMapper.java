package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.QuestionModel;

public class QuestionMapper implements RowMapper<QuestionModel> {

	@Override
	public QuestionModel mapRow(ResultSet rs) {
		try {
			QuestionModel question = new QuestionModel();
			question.setId(rs.getLong("id"));
			question.setContent(rs.getString("content"));
			question.setA(rs.getString("a"));
			question.setB(rs.getString("b"));
			question.setC(rs.getString("c"));
			question.setD(rs.getString("d"));
			try {
				question.setCorrect(rs.getString("correct"));
				question.setSubjectId(rs.getLong("subjectid"));
				question.setLevel(rs.getInt("level"));
				question.setCreateDate(rs.getTimestamp("createdate"));
				if (rs.getTimestamp("modifieddate") != null) {
					question.setModifiedDate(rs.getTimestamp("modifieddate"));
				}
			}catch (Exception e){
				System.out.println(e.getMessage());
			}

			return question;
		} catch (SQLException e) {
			return null;
		}

	}

}
