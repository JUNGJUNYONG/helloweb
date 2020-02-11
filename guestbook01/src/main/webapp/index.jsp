<%@page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int i = 1;
	List<GuestBookVo> list = new GuestBookDao().findAll();	
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook01/add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	<br>
		<%for(GuestBookVo vo : list){ %>
	<table width=510 border=1>
	<form action="/guestbook01/deleteform.jsp" method="post">
		<tr>
			<td><%=i++ %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getRegDate() %></td>
			<td>
			<input type="hidden" name = "no" value=<%=vo.getNo() %>></input>
			
			<input type="submit" value=삭제></input>
			</td>
		</tr>
		<tr>
			<td colspan=4><pre><%=vo.getContents() %></pre></td>
		</tr>
	</table>
	</form>
		<%} %>
</body>
</html>