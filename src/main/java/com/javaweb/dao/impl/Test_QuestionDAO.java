package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.ITest_QuestionDAO;
import com.javaweb.mapper.Test_QuestionMapper;
import com.javaweb.model.Test_QuestionModel;

public class Test_QuestionDAO extends AbstractDAO<Test_QuestionModel> implements ITest_QuestionDAO {

	@Override
	public List<Test_QuestionModel> findAll(Long testId) {
		StringBuilder sql = new StringBuilder("SELECT tq.id ,testid,questionid,content,a,b,c,d");
		sql.append(" FROM question q INNER JOIN test_question tq ON q.id=tq.questionid");
		sql.append(" WHERE testid = ?");
		//sql.append(" ORDER BY  RAND()");
		return query(sql.toString(), new Test_QuestionMapper(), testId);
	}

	@Override
	public Test_QuestionModel findOne(Long questionId) {
		StringBuilder sql = new StringBuilder("SELECT tq.id ,testid,questionid,content,a,b,c,d ");
		sql.append("  FROM question q INNER JOIN test_question tq ON q.id=tq.questionid");
		sql.append(" WHERE questionid = ?");
		List<Test_QuestionModel> tq = query(sql.toString(), new Test_QuestionMapper(),questionId);
		return tq.isEmpty() ? null : tq.get(0);
	}

	@Override
	public List<Test_QuestionModel> findAnswerCorrect(Long testId) {
		StringBuilder sql = new StringBuilder("SELECT tq.id ,testid,questionid,correct");
		sql.append(" FROM question q INNER JOIN test_question tq  ON q.id=tq.questionid");
		sql.append(" WHERE testid = ?");
		return query(sql.toString(),new Test_QuestionMapper(),testId);
	}

	@Override
	public List<Test_QuestionModel> sortIdQuestion(Long testId) {
		StringBuilder sql = new StringBuilder("SELECT tq.id ,testid,questionid");
		sql.append(" FROM test_question tq WHERE testid = ?");
		//sql.append(" ORDER BY  RAND()");
		return query(sql.toString(),new Test_QuestionMapper(),testId);
	}


}
