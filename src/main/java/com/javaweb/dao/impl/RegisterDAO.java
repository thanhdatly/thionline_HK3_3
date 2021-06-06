package com.javaweb.dao.impl;

import com.javaweb.dao.IRegisterDAO;
import com.javaweb.dao.IUserDAO;
import com.javaweb.mapper.ClassMapper;
import com.javaweb.mapper.UserMapper;
import com.javaweb.model.ClassModel;
import com.javaweb.model.UserModel;

import java.util.List;

public class RegisterDAO extends AbstractDAO<UserModel> implements IRegisterDAO {

	@Override
	public UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
		sql.append(" INNER JOIN role AS r ON r.id=u.roleid");
		sql.append(" WHERE username = ? and password = ? and status = ?");

		List<UserModel> user = query(sql.toString(), new UserMapper(), userName, password, status);
		return user.isEmpty() ? null : user.get(0);	
	}

	@Override
	public List<UserModel> findAll() {
		String sql = "SELECT * FROM user";
		return query(sql,new UserMapper());
	}

	@Override
	public UserModel findUser(String userName) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user WHERE username = ? ");
		List<UserModel> user = query(sql.toString(), new UserMapper(), userName);
		return user.isEmpty() ? null : user.get(0);
	}

	@Override
	public Long save(UserModel userModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO user(username,password,fullname,roleid)");
		sql.append(" VALUES(?, ?, ?, ?)");
		// String sql = "call insert_class(?,?,?,?,?)";
		return insert(sql.toString(), userModel.getUserName(), userModel.getPassword(),
				userModel.getFullName(),userModel.getRoleId());
	}

	@Override
	public UserModel findOne(Long id) {
		String sql = "SELECT * FROM user WHERE id = ?";
		List<UserModel> userr = query(sql, new UserMapper(), id);
		return userr.isEmpty() ? null : userr.get(0);
	}

}
