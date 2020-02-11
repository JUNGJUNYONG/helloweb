<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action ='/helloweb/join' method='post'>
		이메일: <input type = 'text' name = 'email' value='' />
		<br/><br/>
		비밀번호:  <input type ='password' name = 'password' value=''/>
		<br/><br/>
		<select name='birthYear'>
		<option value = '1990'>1990</option>
		<option value = '1991'>1991</option>
		<option value = '1992'>1992</option>
		<option value = '1993'>1993</option>
		<option value = '1994'>1994</option>
		<option value = '1995'>1995</option>
		<option value = '1996'>1996</option>
		</select>
		성별: 
		남<input type = "radio" name='gender' value ='male' checked='checked'/>
		여<input type = "radio" name='gender' value ='female'/>
		<Br/><br/>
		취미:
		코딩<input type = "checkbox" name= 'hobby' value ='coding'/>
		수영<input type = "checkbox" name= 'hobby' value ='swimming'/>
		잠자기<input type = "checkbox" name= 'hobby' value ='sleeping'/>
		요리<input type = "checkbox" name= 'hobby' value ='cooking'/>
		<Br/><br/>
		내소개:
		<textarea name = "desc"></textarea>
		
		<br/><br/>
		<input type = 'submit' value='가입하기'/>
		 
	</form>

</body>
</html>