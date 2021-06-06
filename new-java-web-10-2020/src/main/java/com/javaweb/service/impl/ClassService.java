package com.javaweb.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.javaweb.dao.IClassDAO;
import com.javaweb.model.ClassModel;
import com.javaweb.paging.Pageble;
import com.javaweb.service.IClassService;

public class ClassService implements IClassService{

	
	@Inject
	private IClassDAO classDAO;

	@Override
	public List<ClassModel> findAll(Pageble pageble) {
		return classDAO.findAll(pageble);
	}

	@Override
	public List<ClassModel> findAllIndex(Pageble pageble) {
		return classDAO.findAllIndex(pageble);
	}

	@Override
	public List<ClassModel> findBySubjectId(Long subjectId,Pageble pageble) {
		return classDAO.findBySubjectId(subjectId,pageble);
	}

	@Override
	public ClassModel save(ClassModel classModel) {
		classModel.setCreateDate(new Timestamp(System.currentTimeMillis()));
		//classModel.setCode("");
		Long classId = classDAO.save(classModel);
		return classDAO.findOne(classId);
	}

	@Override
	public ClassModel update(ClassModel updateClass) {
		ClassModel oldClass = classDAO.findOne(updateClass.getId());
		updateClass.setCreateDate(oldClass.getCreateDate());
		updateClass.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		classDAO.update(updateClass);
		return classDAO.findOne(updateClass.getId());
	}

	@Override
	public void delete(Long[] ids) {
		for (Long id:ids) {
			classDAO.delete(id);
		}
	}

	@Override
	public int getTotalItem() {
		return classDAO.getTotalItem();
	}

	@Override
	public int getTotalItem(Long subjectId) {
		return classDAO.getTotalItem(subjectId);
	}


}
