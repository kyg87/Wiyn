package com.wiyn.web.dao;

import java.util.List;

import com.wiyn.web.entity.NoticeFile;

public interface NoticeBoardFileDao {
	List<NoticeFile> getList(String noticeId);
	
	int add(NoticeFile file);
	int add(String src, String noticeBoardId);
}
