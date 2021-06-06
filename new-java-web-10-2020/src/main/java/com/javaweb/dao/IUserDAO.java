package com.javaweb.dao;

import com.javaweb.model.UserModel;

import java.util.List;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findUserNameAndPasswordAndStatus(String userName,String password,Integer status);
	List<UserModel> findAll();

}
