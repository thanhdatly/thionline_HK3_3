package com.javaweb.service;

import com.javaweb.model.UserModel;

import java.util.List;

public interface IRegisterService {
	UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status);
	List<UserModel> findAll();
	UserModel findUserName(String userName);
	UserModel save(UserModel userModel);

}
