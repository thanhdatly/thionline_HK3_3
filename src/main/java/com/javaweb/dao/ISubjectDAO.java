package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.SubjectModel;

public interface ISubjectDAO extends GenericDAO<SubjectModel>{
	List<SubjectModel> findAll();
	
}
