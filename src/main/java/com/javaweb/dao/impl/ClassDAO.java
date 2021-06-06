package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.IClassDAO;
import com.javaweb.mapper.ClassMapper;
import com.javaweb.model.ClassModel;
import com.javaweb.paging.Pageble;

public class ClassDAO extends AbstractDAO<ClassModel> implements IClassDAO {

	@Override
	public List<ClassModel> findAll(Pageble pageble) {
		//String sql = "SELECT * FROM class LIMIT ?, ?";
		StringBuilder sql = new StringBuilder("SELECT * FROM class");
		sql.append(" WHERE status =1 ORDER BY id desc");
		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" LIMIT "+pageble.getOffset()+", "+pageble.getLimit()+"");
		} 
		return query(sql.toString(), new ClassMapper());
		
	}

	@Override
	public List<ClassModel> findAllIndex(Pageble pageble) {
		StringBuilder sql = new StringBuilder("SELECT c.id,c.name,c.code,c.status,t.name teacher,");
		sql.append("s.name subject,c.level,c.createdate,c.modifieddate");
		sql.append(" FROM class c join teacher t on c.teacherid = t.id");
		sql.append(" JOIN subject s ON c.subjectid = s.id");

		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" LIMIT "+pageble.getOffset()+", "+pageble.getLimit()+"");
		}
		return query(sql.toString(), new ClassMapper());
	}

	@Override
	public List<ClassModel> findBySubjectId(Long subjectId,Pageble pageble) {
		StringBuilder sql = new StringBuilder("SELECT * FROM class WHERE subjectid = ?");
		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" LIMIT "+pageble.getOffset()+", "+pageble.getLimit()+"");
		}
		return query(sql.toString(), new ClassMapper(), subjectId);
	}

	@Override
	public Long save(ClassModel classModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO class(name,code,teacherid,"); 
		sql.append("subjectid,level)") ;
		sql.append(" VALUES(?, ?, ?, ?, ?)");
		// String sql = "call insert_class(?,?,?,?,?)";
		return insert(sql.toString(), classModel.getName(), classModel.getCode(),
				classModel.getTeacherId(), classModel.getSubjectId(), classModel.getLevel());
	}

	@Override
	public ClassModel findOne(Long id) {
		String sql = "SELECT * FROM class WHERE id = ?";
		List<ClassModel> classs = query(sql, new ClassMapper(), id);
		return classs.isEmpty() ? null : classs.get(0);
	}

	@Override
	public void update(ClassModel updateClass) {
		StringBuilder sql = new StringBuilder("UPDATE class SET name = ?,teacherid = ?,");
		sql.append(" subjectid = ?, level = ? , createdate = ? , modifieddate = ? WHERE id = ?");
		update(sql.toString(), updateClass.getName(), updateClass.getTeacherId(),
				updateClass.getSubjectId(),updateClass.getLevel(), 
				updateClass.getCreateDate(),updateClass.getModifiedDate(), updateClass.getId());
	}

	@Override
	public void delete(Long id) {
		String sql = "DELETE FROM class WHERE id = ?";
		update(sql, id);
	}

	@Override
	public int getTotalItem() {
		String sql = "SELECT count(*) FROM class";
		return count(sql);
	}

	@Override
	public int getTotalItem(Long subjectId) {
		String sql = "SELECT count(*) FROM class "+subjectId+"";
		return count(sql);
	}


}
