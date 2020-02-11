package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class _01Servlet
 */
@WebServlet("/01")
public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int iVal = 10;
		long lVal =10;
		float fVal = 1.4f;
		boolean bVal = true;
		Object obj = null;
		UserVo vo = new UserVo();
		vo.setNo(10L);
		vo.setName("�젙以��슜");
		
		
		//map�쓣 �궗�슜�빐�꽌 �뿬�윭 媛믪쓣 �븳踰덉뿉 �꽆湲곕뒗 諛⑸쾿
		Map<String, Object> map = new HashMap<>();
		map.put("ival", iVal);
		map.put("lval", lVal);
		map.put("fval", fVal);
		map.put("bval", bVal);
		request.setAttribute("map", map);
		
		
		
		request.setAttribute("vo", vo);
		request.setAttribute("obj", obj);
		request.setAttribute("ival", iVal);
		request.setAttribute("lval", lVal);
		request.setAttribute("fval", fVal);
		request.setAttribute("bval", bVal);
		request.getRequestDispatcher("/WEB-INF/views/01.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
