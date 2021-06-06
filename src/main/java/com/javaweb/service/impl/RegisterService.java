package com.javaweb.service.impl;

import com.javaweb.dao.IRegisterDAO;
import com.javaweb.dao.IUserDAO;
import com.javaweb.model.UserModel;
import com.javaweb.service.IRegisterService;
import com.javaweb.service.IUserService;

import javax.inject.Inject;
import java.util.List;

public class RegisterService implements IRegisterService {

	
	@Inject
	private IRegisterDAO registerDAO;

	@Override
	public UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return null;
	}

	@Override
	public List<UserModel> findAll() {
		return null;
	}

	@Override
	public UserModel findUserName(String userName) {
		return registerDAO.findUser(userName);
	}

	@Override
	public UserModel save(UserModel userModel) {
		Long userId = registerDAO.save(userModel);
		return registerDAO.findOne(userId);
	}


}
