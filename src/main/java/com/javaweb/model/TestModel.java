package com.javaweb.model;

import java.sql.Time;
import java.sql.Timestamp;

public class TestModel extends AbstractModel<TestModel> {
	private String name;
	private Long classId;
	private Time testTime;
	private Timestamp dateStart;
	private Timestamp dateEnd;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getClassId() {
		return classId;
	}

	public void setClassId(Long classId) {
		this.classId = classId;
	}

	public Time getTestTime() {
		return testTime;
	}

	public void setTestTime(Time testTime) {
		this.testTime = testTime;
	}

	public Timestamp getDateStart() {
		return dateStart;
	}

	public void setDateStart(Timestamp dateStart) {
		this.dateStart = dateStart;
	}

	public Timestamp getDateEnd() {
		return dateEnd;
	}

	public void setDateEnd(Timestamp dateEnd) {
		this.dateEnd = dateEnd;
	}

}
