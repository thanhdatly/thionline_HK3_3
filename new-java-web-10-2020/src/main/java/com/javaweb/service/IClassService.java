package com.javaweb.service;

import java.util.List;

import com.javaweb.model.ClassModel;
import com.javaweb.paging.Pageble;

public interface IClassService {
	List<ClassModel> findAll(Pageble pageble);
	List<ClassModel> findAllIndex(Pageble pageble);
	List<ClassModel> findBySubjectId(Long subjectId,Pageble pageble);
	ClassModel save(ClassModel classModel);
	ClassModel update(ClassModel updateClass);
	void delete(Long[] ids);
	int getTotalItem();
	int getTotalItem(Long subjectId);
}
