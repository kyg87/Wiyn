package com.wiyn.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.wiyn.web.dao.FreeCommentDao;
import com.wiyn.web.entity.FreeComment;

public class MyBatisFreeCommentDao implements FreeCommentDao {


	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FreeComment> getList() {
	      FreeCommentDao freeCommentDao;
	      freeCommentDao = sqlSession.getMapper(FreeCommentDao.class);
		return freeCommentDao.getList();
	}

	@Override
	public int add(FreeComment freecomment) {
	      FreeCommentDao freeCommentDao;
	      freeCommentDao = sqlSession.getMapper(FreeCommentDao.class);
		return freeCommentDao.add(freecomment);
	}


}