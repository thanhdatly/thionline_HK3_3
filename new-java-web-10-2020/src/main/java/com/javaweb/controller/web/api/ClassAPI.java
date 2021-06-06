package com.javaweb.controller.web.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.javaweb.model.ClassModel;
import com.javaweb.service.IClassService;
import com.javaweb.utils.HttpUtil;

@WebServlet(urlPatterns = { "/api-class" })
public class ClassAPI extends HttpServlet {

	@Inject
	private IClassService classService;

	private static final long serialVersionUID = -8512912920356057537L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();

		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ClassModel classModel = HttpUtil.of(request.getReader()).toModel(ClassModel.class);
		classModel = classService.save(classModel);
		mapper.writeValue(response.getOutputStream(), classModel);
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ClassModel updateClass = HttpUtil.of(request.getReader()).toModel(ClassModel.class);
		updateClass = classService.update(updateClass);
		mapper.writeValue(response.getOutputStream(), updateClass);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ClassModel classModel = HttpUtil.of(request.getReader()).toModel(ClassModel.class);
		classService.delete(classModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}

}
