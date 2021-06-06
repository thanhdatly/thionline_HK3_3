package com.javaweb.controller.admin;

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
import com.javaweb.model.UserModel;
import com.javaweb.service.IUserService;
import com.javaweb.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-home" })
public class HomeController extends HttpServlet {

	@Inject
	private IUserService userService;
	
	private static final long serialVersionUID = -374774350676466657L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserModel model = FormUtil.toModel(UserModel.class, request);
		model.setListResult(userService.findAll());
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd =request.getRequestDispatcher("/views/admin/home.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {

	}
}
