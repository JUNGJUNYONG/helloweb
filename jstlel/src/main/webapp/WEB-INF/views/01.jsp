<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 받아오기</h1>
	${ival } <br/>
	${lval } <br/>
	${fval } <br/>
	${bival } <br/>
	${bival } <br/>
	-${obj }- <br/>
	${vo.no } <br/>
	${vo.name } <br/>
	<h1>요청 파라미터 값 받아보기</h1>
	${param.a } <br/>
	${param.email } <br/>
	${param } <br/>
	
	<h1>연산 해보기</h1>
	${3+10*20 } <br/>
	${ival+10 } <br/>
	${ival == 10 } <br/>
	${ival < 5 } <br/>
	${obj == null } <br/>
	${vo == null } <br/>
	${empty obj } <br />
	${not empty obj } <br />
	
		
	<h1>요청 파라미터 값 받아보기</h1>
	${map.ival } <br/>
	${map.lval } <br/>
	${map.fval } <br/>
	${map.bval } <br/>
		
</body>
</html>