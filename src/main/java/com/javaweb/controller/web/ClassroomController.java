package com.javaweb.controller.web;

import com.javaweb.constant.SystemConstant;
import com.javaweb.model.TestModel;
import com.javaweb.service.ITestService;
import com.javaweb.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(urlPatterns = { "/classroom" })
public class ClassroomController extends HttpServlet {

	@Inject
	private ITestService testService;
	private static final long serialVersionUID = -374774350676466657L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TestModel model = FormUtil.toModel(TestModel.class, request);
		model.setListResult(testService.findAll(model.getId()));
		/*if (model.getListResult().size()!=0)
			//request.setAttribute("date",model.getListResult().get(0).getTestTime());
			request.setAttribute("date",model.getListResult());*/
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/class/classroom.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
