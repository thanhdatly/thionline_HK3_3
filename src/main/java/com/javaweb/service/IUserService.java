package com.javaweb.service;

import com.javaweb.model.UserModel;

import java.util.List;

public interface IUserService {
	UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status);
	List<UserModel> findAll();
}
