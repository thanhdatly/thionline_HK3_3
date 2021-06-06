package com.javaweb.dao;

import com.javaweb.model.UserModel;

import java.util.List;

public interface IRegisterDAO extends GenericDAO<UserModel>{
	UserModel findUserNameAndPasswordAndStatus(String userName,String password,Integer status);
	List<UserModel> findAll();
	UserModel findUser(String userName);
	Long save(UserModel userModel);
	UserModel findOne(Long id);
}
