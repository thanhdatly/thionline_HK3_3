package com.javaweb.service;

import java.util.List;

import com.javaweb.model.Test_QuestionModel;

public interface ITest_QuestionService {
	List<Test_QuestionModel> findAll(Long testId);
	Test_QuestionModel findOne(Long questionId);
	List<Long> sortIdQuestion(Long testId);
	int resultTest(Long testId,List<String> answer);
}
