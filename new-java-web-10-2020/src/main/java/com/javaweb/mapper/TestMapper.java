package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.model.TestModel;

public class TestMapper implements RowMapper<TestModel> {

	@Override
	public TestModel mapRow(ResultSet rs) {
		try {
			TestModel test = new TestModel();
			test.setId(rs.getLong("id"));
			test.setName(rs.getString("name"));
			test.setClassId(rs.getLong("classid"));
			test.setTestTime(rs.getTime("testtime"));
			/*
			 * test.setDateStart(rs.getTimestamp("datestart"));
			 * test.setDateEnd(rs.getTimestamp("dateend"));
			 * test.setCreateDate(rs.getTimestamp("createdate"));
			 */
			
			
			return test;
		} catch (SQLException e) {
			return null;
		}

	}

}
