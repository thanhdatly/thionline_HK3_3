package com.javaweb.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.javaweb.dao.ITestDAO;
import com.javaweb.model.TestModel;
import com.javaweb.service.ITestService;

public class TestService implements ITestService{

	
	@Inject
	private ITestDAO testDAO;

	@Override
	public List<TestModel> findAll(Long classId) {
		return testDAO.findAll(classId);
	}

	
	
	


}
