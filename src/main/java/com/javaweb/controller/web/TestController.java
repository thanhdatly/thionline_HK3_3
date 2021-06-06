package com.javaweb.controller.web;

import com.javaweb.constant.SystemConstant;
import com.javaweb.model.ClassModel;
import com.javaweb.model.QuestionModel;
import com.javaweb.model.Test_QuestionModel;
import com.javaweb.service.IQuestionService;
import com.javaweb.service.ITest_QuestionService;
import com.javaweb.utils.FormUtil;
import com.javaweb.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/test"})
public class TestController extends HttpServlet {

    @Inject
    private ITest_QuestionService test_questionService;
    @Inject
    private IQuestionService questionService;
    private List<String> answer = new ArrayList<>();
    private List<Long> questionId = new ArrayList<>();
    private double time = 0;
    private String classId = "";
    private static final long serialVersionUID = -374774350676466657L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String position = request.getParameter("position");
        String id = request.getParameter("id");
        String questionId = request.getParameter("questionId");
        String submit = request.getParameter("submit");
        String time = request.getParameter("time");
        if(time != null && time != "")
            this.time = Double.parseDouble(time);
        if(classId == "")
            classId = request.getParameter("classId");
        Test_QuestionModel model = FormUtil.toModel(Test_QuestionModel.class, request);
        model.setIdQuestion(test_questionService.sortIdQuestion(Long.valueOf(id)));
        model.setTestId(Long.valueOf(id));
        if(submit != null){
            int correct = Integer.parseInt(request.getParameter("correct"));
            double scores = (double)  10*correct/model.getIdQuestion().size();
            String result = "Đúng "+correct+"/"+model.getIdQuestion().size()+
                    ". Điểm : "+(Math.floor(scores*100)/100);
            request.setAttribute("result",result);
            request.setAttribute(SystemConstant.MODEL, model);
            request.setAttribute("classId",classId);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/class/test.jsp");
            rd.forward(request, response);
            answer.clear();
            this.questionId.clear();
            this.time = 0;
        }else {
            if (questionId == null) {

                request.setAttribute("ques", questionService.findOne(model.getIdQuestion().get(0)));

            } else {

                request.setAttribute("ques", questionService.findOne(Long.valueOf(questionId)));
                if (Integer.parseInt(position) <= answer.size() && answer.get(Integer.parseInt(position) - 1) != null) {
                    request.setAttribute("answer", answer.get(Integer.parseInt(position) - 1));
                } else {
                    request.setAttribute("answer", "");
                }
            }

            request.setAttribute("time",this.time);
            request.setAttribute(SystemConstant.MODEL, model);
            request.setAttribute("position", position);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/class/test.jsp");
            rd.forward(request, response);
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String position = request.getParameter("position");
        String id = request.getParameter("id");
        String questionId = request.getParameter("questionId");
        String answ = request.getParameter("answer");
        String pos = request.getParameter("pos");
        String time = request.getParameter("time");
        if(time != null && time != "")
            this.time = Double.parseDouble(time);
        if (answer.size() < Integer.parseInt(pos)) {
            answer.add(answ);
            this.questionId.add(Long.valueOf(questionId));
        } else {
            answer.set(Integer.parseInt(pos) - 1, answ);
        }
        String sub = request.getParameter("sub");
        if(sub.equals("submit")){
            int correct =test_questionService.resultTest(Long.valueOf(id),answer);

            response.sendRedirect(request.getContextPath() + "/test?id=" + id + "&submit=1&correct="+correct);
        }
        else
            response.sendRedirect(request.getContextPath() + "/test?id=" + id + "&position=" + position + "&questionId=" + questionId);
    }
}
