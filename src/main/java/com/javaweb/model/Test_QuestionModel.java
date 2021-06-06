package com.javaweb.model;

import java.util.List;

public class Test_QuestionModel extends AbstractModel<Test_QuestionModel> {
    private Long testId;
    private Long questionId;

    private QuestionModel question = new QuestionModel();
    private String []answer;
    private  Integer position;
    private List<Long> idQuestion;

    public List<Long> getIdQuestion() {
        return idQuestion;
    }

    public void setIdQuestion(List<Long> idQuestion) {
        this.idQuestion = idQuestion;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public String[] getAnswer() {
        return answer;
    }

    public void setAnswer(String[] answer) {
        this.answer = answer;
    }

    public QuestionModel getQuestion() {
        return question;
    }

    public void setQuestion(QuestionModel question) {
        this.question = question;
    }

    public Long getTestId() {
        return testId;
    }

    public void setTestId(Long testId) {
        this.testId = testId;
    }

    public Long getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Long questionId) {
        this.questionId = questionId;
    }

}
