package com.wiyn.web.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wiyn.web.dao.FreeBoardDao;
import com.wiyn.web.dao.RequestBoardDao;
import com.wiyn.web.dao.SiteBoardDao;
import com.wiyn.web.dao.UserPageDao;
import com.wiyn.web.entity.AddBoard;
import com.wiyn.web.entity.FreeBoard;
import com.wiyn.web.entity.SiteBoard;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private UserPageDao userPageDao;
	
	@Autowired
	private SiteBoardDao siteBoardDao;
	@Autowired
	private FreeBoardDao freeBoardDao;
	@Autowired
	private RequestBoardDao requestBoardDao;
	
	@RequestMapping("mypage")
	public String UserMain(Authentication auth,Model model, AddBoard addboard, String title) {

		
		System.out.println(auth.getName());
		List<AddBoard> list = sqlSession.getMapper(UserPageDao.class).getList(auth.getName());
		List<AddBoard> list2 = sqlSession.getMapper(UserPageDao.class).getCommentList(auth.getName());
		List<AddBoard> list3 = sqlSession.getMapper(UserPageDao.class).getLikeList(auth.getName());
		
		
		
	/*	for (AddBoard addBoard2 : list3) {
			System.out.println(addBoard2.getTitle());
		}*/
		model.addAttribute("list",list);
		model.addAttribute("list2",list2);
		model.addAttribute("list3",list3);
		

	
		return "user.mypage";
	}
	/*@RequestMapping(value="/check_del", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public void testCheck(@RequestParam(value="valueArrTest[]") List<String> valueArr){
		System.out.println(valueArr);
	}
	*/
	@RequestMapping(value = "del", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	
	public String delList(Authentication auth,Model model,
		
			SiteBoard siteBoard,AddBoard addBoard,
			@RequestParam(value="boardName")String boardname,
			@RequestParam(value="array")String send_array
			){
		
		System.out.println("����");
		System.out.println(send_array);
		
		
		
		/*System.out.println(boardname);
		String[] aa = boardname.split(",");
		for(int i=0;i<aa.length;i++){
		
		
		if(aa[i].equals("free")){		
			freeBoardDao.delete(id);
			
		}
		else if(aa[i].equals("site")){
			siteBoardDao.delete(id);
			
		}
		else{
			requestBoardDao.delete(id);
		}
		}*/
		return "redirect:mypage";
	}

	
	
}
