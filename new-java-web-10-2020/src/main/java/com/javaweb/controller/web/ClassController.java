package com.javaweb.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.constant.SystemConstant;
import com.javaweb.model.ClassModel;
import com.javaweb.paging.PageRequest;
import com.javaweb.paging.Pageble;
import com.javaweb.service.IClassService;
import com.javaweb.utils.FormUtil;

@WebServlet(urlPatterns = { "/class" })
public class ClassController extends HttpServlet {

	@Inject
	private IClassService classService;
	private static final long serialVersionUID = -374774350676466657L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String subjectId = request.getParameter("subjectId");
		ClassModel model = FormUtil.toModel(ClassModel.class, request);
		Pageble page = new PageRequest( model.getPage(), model.getMaxPageItem());
		switch (subjectId){
			case "all":
				model.setListResult(classService.findAll(page));
				model.setTotalItem(classService.getTotalItem());
				break;
			case "1":
				model.setListResult(classService.findBySubjectId(1L,page));
				model.setTotalItem(classService.getTotalItem(1L));
				break;
			case "5":
				model.setListResult(classService.findBySubjectId(5L,page));
				model.setTotalItem(classService.getTotalItem(5L));
				break;
			case "7":
				model.setListResult(classService.findBySubjectId(7L,page));
				model.setTotalItem(classService.getTotalItem(7L));
				break;
		}
		//model.setListResult(classService.findAll(page));

		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
		request.setAttribute(SystemConstant.MODEL, model);
		request.setAttribute("subjectId",subjectId);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/class/list.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
