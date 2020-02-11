package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestBookDao;
import com.douzone.guestbook.vo.GuestBookVo;


public class GuestBookDaoTest {

	public static void main(String[] args) {
		
//		insertTest("정준용","게시글입니다 테스트중입니다." , "0000");
		findAllTest();

	}
	
	public static void findAllTest() {
		List<GuestBookVo> list = new GuestBookDao().findAll();
		for (GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}
	
	
	public static void insertTest(String name,String contents,String password) {
		GuestBookVo vo = new GuestBookVo();
		vo.setName(name);
		vo.setContents(contents);
		vo.setPassword(password);
		new GuestBookDao().insert(vo);
	}
	
	
	public static void deletTest(String name,String password) {
		GuestBookVo vo = new GuestBookVo();
		vo.setName(name);
		vo.setPassword(password);
		new GuestBookDao().delete(vo);
	}
	

}
