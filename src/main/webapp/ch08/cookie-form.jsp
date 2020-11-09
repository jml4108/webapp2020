<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-06
  Time: 오전 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>cookie-form</title>
</head>
<body>
<%
    //쿠키가져오기
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("id")){
                //실행흐름이 서버에 있을때 서버코드로써 강제이동한다.
                //특정 page로 이동하라는 정보만 준다.
                response.sendRedirect("cookie-login-check.jsp");
            }
        }
    }
%>
<form action="./cookie-process.jsp" method="post">
    ID : <input type="text" name="id"><br>
    PW : <input type="password" name="pw"><br>
    <input type="submit" value="로그인">
</form>
</body>
</html>
