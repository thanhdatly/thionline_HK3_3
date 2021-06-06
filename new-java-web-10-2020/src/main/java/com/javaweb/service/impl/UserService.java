package com.javaweb.service.impl;

import javax.inject.Inject;

import com.javaweb.dao.IUserDAO;
import com.javaweb.model.UserModel;
import com.javaweb.service.IUserService;

import java.util.List;

public class UserService implements IUserService{

	
	@Inject
	private IUserDAO userDAO;

	@Override
	public UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDAO.findUserNameAndPasswordAndStatus(userName, password, status);
	}

	@Override
	public List<UserModel> findAll() {
		return userDAO.findAll();
	}


}
