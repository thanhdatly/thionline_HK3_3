package com.javaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import com.javaweb.dao.ITest_QuestionDAO;
import com.javaweb.model.Test_QuestionModel;
import com.javaweb.service.ITest_QuestionService;

public class Test_QuestionService implements ITest_QuestionService {


    @Inject
    private ITest_QuestionDAO test_QuestionDAO;

    @Override
    public List<Test_QuestionModel> findAll(Long testId) {
        return test_QuestionDAO.findAll(testId);
    }

    @Override
    public Test_QuestionModel findOne(Long questionId) {
        return test_QuestionDAO.findOne(questionId);
    }

    @Override
    public List<Long> sortIdQuestion(Long testId) {
        List<Test_QuestionModel> tq = test_QuestionDAO.sortIdQuestion(testId);
        List<Long> result = new ArrayList<>();
        Long t = tq.get(0).getQuestionId();
        for (int i = 0; i < tq.size(); i++) {
            result.add(tq.get(i).getQuestionId());
        }
        return result;
    }

    @Override
    public int resultTest(Long testId, List<String> answer) {
        List<Test_QuestionModel> test_questionModels = test_QuestionDAO.findAnswerCorrect(testId);
        int s = 0;
            for (int i = 0; i < test_questionModels.size(); i++) {
                if(answer.size()==i)
                    break;
                if (test_questionModels.get(i).getQuestion().getCorrect().equals(answer.get(i)))
                    s++;
            }
        return s;
    }


}
