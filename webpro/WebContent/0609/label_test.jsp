<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href="../css/mycss.css">
<style>
	table{
		border : 2px solid blue;
	}
	td{
		width : 200px;
		height : 40px;
		padding : 2px;
		text-aling : center;
		font-size : 1.2em;
	}
	span{
		display : inline-block;
		margin : 3px;
		width : 150px;
		height : 40px;
		padding : 5px;
	}
</style>
</head>
<body>
<h3>클라이언트 전송시 입력한 데이터 값을 전달받는다</h3>
<p> request.getParameter('name이름')</p>
<% 
	//클라이언트 전송시 입력한 데이터 값을 전달받는다
	  request.setCharacterEncoding("UTF-8");

	
	 String sname = request.getParameter("name");
	 String sId = request.getParameter("id");
  	 String sPass = request.getParameter("pass");
  	 String saddr = request.getParameter("addr");
  	 String stel = request.getParameter("tel");
  		
  	 out.print( "<span>이름 : </span><span class='data'>" + sname + "</span><br>" );
  	 out.print( "<span>아이디 : </span><span class='data'>" + sId + "</span><br>");
  	 out.print( "<span>전화번호 : </span><span class='data'>" + stel + "</span><br>");
  	 out.print( "<span>주소 : </span><span class='data'>" + saddr + "</span><br>");
%>
 <table border = "1">
    <tr>
      <td>아이디</td>
      <td><%= sId %></td>
    </tr>

    <tr>
      <td>이름</td>
      <td><%= sname %></td>
    </tr>

    <tr>
      <td>전화번호</td>
      <td><%= stel %></td>
    </tr>


    <tr>
      <td>주소</td>
      <td><%= saddr %></td>
    </tr>
    
    

    
  </table>
</body>
</html>
