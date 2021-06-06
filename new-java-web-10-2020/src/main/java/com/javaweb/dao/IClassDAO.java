package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.ClassModel;
import com.javaweb.paging.Pageble;

public interface IClassDAO extends GenericDAO<ClassModel>{
	List<ClassModel> findAll(Pageble pageble);
	List<ClassModel> findAllIndex(Pageble pageble);
	List<ClassModel> findBySubjectId(Long subjectId,Pageble pageble);
	Long save(ClassModel classModel);
	ClassModel findOne(Long id);
	void update(ClassModel updateClass);
	void delete(Long id);
	int getTotalItem();
	int getTotalItem(Long subjectId);
}
