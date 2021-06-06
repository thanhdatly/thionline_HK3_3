package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.Test_QuestionModel;

public interface ITest_QuestionDAO extends GenericDAO<Test_QuestionModel>{
	List<Test_QuestionModel> findAll(Long testId);
	Test_QuestionModel findOne(Long questionId);
	List<Test_QuestionModel> findAnswerCorrect(Long testId);
	List<Test_QuestionModel> sortIdQuestion(Long testId);
	
}
