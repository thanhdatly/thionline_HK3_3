package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.IQuestionDAO;
import com.javaweb.mapper.QuestionMapper;
import com.javaweb.model.QuestionModel;

public class QuestionDAO extends AbstractDAO<QuestionModel> implements IQuestionDAO {

	@Override
	public List<QuestionModel> findAll(Long testId) {
		String sql = "SELECT * FROM test WHERE classid = ?";
		return query(sql, new QuestionMapper(), testId);
	}

	@Override
	public QuestionModel findOne(Long id) {
		String sql = "SELECT id,content,a,b,c,d FROM question WHERE id = ?";
		List<QuestionModel> questionModelList = query(sql, new QuestionMapper(), id);
		return questionModelList.isEmpty() ? null : questionModelList.get(0);
	}

	
}
