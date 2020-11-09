<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-06
  Time: 오전 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>cookie-process</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    if(id.equals("cookie") && pw.equals("cometrue")) {
        Cookie cookie_id = new Cookie("id", id);
        Cookie cookie_pw = new Cookie("pw", pw);
        response.addCookie(cookie_id);
        response.addCookie(cookie_pw);
        out.println("로그인에 성공하였습니다.");
        out.println("쿠키 생성을 성공하였습니다.");
        out.println("<a href='cookie-form.jsp'>자동 로그인 </a>");
    }
    else {
        out.println("쿠키 생성을 실패하였습니다.");
    }
%>
</body>
</html>
