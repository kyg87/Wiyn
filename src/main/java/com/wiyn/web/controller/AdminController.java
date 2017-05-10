package com.wiyn.web.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wiyn.web.dao.BigCategoryDao;
import com.wiyn.web.dao.SmallCategoryDao;
import com.wiyn.web.entity.BigCategory;
import com.wiyn.web.entity.SmallCategory;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private BigCategoryDao bigCategoryDao;
	
	@Autowired
	private SmallCategoryDao smallCategoryDao;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	@RequestMapping(value="admin-bcadd", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String BigCatedogy(
			BigCategory bigCategory,
			@RequestParam(value="name")String name){
		
		
		bigCategory.setName(name);
		
		
	
		bigCategoryDao.add(bigCategory);
		
		System.out.println("  " + name);
		
		return "admin.admin";		
	}
	
	@RequestMapping(value="admin-scadd", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String SmallCategory(
			SmallCategory smallCategory,
			@RequestParam(value="name")String name,
			@RequestParam(value="bigCategoryId")String bigCategoryId){
		
		smallCategory.setName(name);
		smallCategory.setBigCategoryId(bigCategoryId);
		
		smallCategoryDao.add(name, bigCategoryId);
		
		return "admin.admin";
		
	}
	
	@RequestMapping("admin")
	public String admin(Model model) {
		
		List<BigCategory> bcList = sqlSession.getMapper(BigCategoryDao.class).getList();
		model.addAttribute("bcList", bcList);

		return "admin.admin";
	}
	
}
