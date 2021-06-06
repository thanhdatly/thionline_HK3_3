package com.javaweb.service;

import java.util.List;

import com.javaweb.model.TestModel;

public interface ITestService {
	List<TestModel> findAll(Long classId);
	
}
