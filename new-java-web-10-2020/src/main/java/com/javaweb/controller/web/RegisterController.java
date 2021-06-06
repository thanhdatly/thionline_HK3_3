package com.javaweb.controller.web;

import com.javaweb.model.UserModel;
import com.javaweb.service.IRegisterService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = { "/dang-ky" })
public class RegisterController extends HttpServlet {

	@Inject
	private IRegisterService registerService;

	private static final long serialVersionUID = -374774350676466657L;
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("register")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/dangky.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("Username");
		String fullname = request.getParameter("fullname");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		if(password.equals(password2)){
			if(registerService.findUserName(username) == null){
				UserModel userr= new UserModel();
				userr.setUserName(username);
				userr.setFullName(fullname);
				userr.setPassword(password);
				userr.setRoleId(2L);
				registerService.save(userr);
				response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login&message=account_successfully_created&alert=success");
			}
			else{
				response.sendRedirect(request.getContextPath() + "/dang-ky?action=register&message=username_exist&alert=danger");
			}
		}else{
			response.sendRedirect(request.getContextPath() + "/dang-ky?action=register&message=password_incorrect&alert=danger");
		}

	}
}
