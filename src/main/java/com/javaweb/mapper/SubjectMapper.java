package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.SubjectModel;

public class SubjectMapper implements RowMapper<SubjectModel> {

	@Override
	public SubjectModel mapRow(ResultSet rs) {
		try {
			SubjectModel sub = new SubjectModel();
			sub.setId(rs.getLong("id"));
			sub.setName(rs.getString("name"));
			sub.setCode(rs.getString("code"));
			sub.setCreateDate(rs.getTimestamp("createdate"));
			if (rs.getTimestamp("modifieddate") != null)
				sub.setModifiedDate(rs.getTimestamp("modifieddate"));
			return sub;
		} catch (SQLException e) {
			return null;
		}

	}

}
