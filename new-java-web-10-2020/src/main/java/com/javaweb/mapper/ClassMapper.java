package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.ClassModel;
import com.javaweb.model.SubjectModel;

public class ClassMapper implements RowMapper<ClassModel> {

	@Override
	public ClassModel mapRow(ResultSet rs) {
		try {
			ClassModel classs = new ClassModel();
			classs.setId(rs.getLong("id"));
			classs.setName(rs.getString("name"));
			classs.setCode(rs.getString("code"));
			classs.setStatus(rs.getInt("status"));

			try {
				classs.setTeacherId(rs.getLong("teacherid"));
				classs.setSubjectId(rs.getLong("subjectid"));
			} catch (Exception e){
				System.out.println(e.getMessage());
			}
			classs.setLevel(rs.getInt("level"));
			classs.setCreateDate(rs.getTimestamp("createdate"));
			if (rs.getTimestamp("modifieddate") != null) {
				classs.setModifiedDate(rs.getTimestamp("modifieddate"));
			}
			try {
				classs.setSubject(rs.getString("subject"));
				classs.setTeacher(rs.getString("teacher"));

			} catch (Exception e) {
				System.out.println(e.getMessage());
			}

			return classs;
		} catch (SQLException e) {
			return null;
		}

	}

}
