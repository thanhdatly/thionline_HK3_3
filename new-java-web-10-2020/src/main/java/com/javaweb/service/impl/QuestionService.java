package com.javaweb.service.impl;

import com.javaweb.dao.IQuestionDAO;
import com.javaweb.model.QuestionModel;
import com.javaweb.service.IQuestionService;

import javax.inject.Inject;
import java.util.List;

public class QuestionService implements IQuestionService {
    @Inject
    private IQuestionDAO questionDAO;
    @Override
    public List<QuestionModel> findAll(Long testId) {
        return questionDAO.findAll(testId);
    }

    @Override
    public QuestionModel findOne(Long id) {
        return questionDAO.findOne(id);
    }
}
