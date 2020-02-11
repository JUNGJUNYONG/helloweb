package jstlel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class _01Servlet
 */
@WebServlet("/03")
public class _03Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<UserVo> list = new ArrayList<>();
		UserVo vo1 = new UserVo();
		vo1.setNo(1L);
		vo1.setName("정준용1");
		request.setAttribute("vo", vo1);
		
		//session scope
		UserVo vo2 = new UserVo();
		vo2.setNo(2L);
		vo2.setName("정준용2");
		request.getSession(true).setAttribute("vo", vo2);
		
		
		UserVo vo3 = new UserVo();
		vo3.setNo(2L);
		vo3.setName("정준용2");
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/WEB-INF/views/03.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
