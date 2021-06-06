package com.javaweb.service;

import com.javaweb.model.QuestionModel;

import java.util.List;

public interface IQuestionService {
	List<QuestionModel> findAll(Long testId);
	QuestionModel findOne(Long id);
}
