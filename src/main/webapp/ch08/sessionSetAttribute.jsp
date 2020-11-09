<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-06
  Time: 오전 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>세션에 정보 저장</title>
</head>
<body>
<%
    session.setAttribute("id", "dream");
    session.setAttribute("name", "cometrue");

%>
session.setAttribute("id", "dream");와 <br>
session.setAttribute("name", "cometrue");를 실행하여<br>
아이디와 이름을 세션 객체에 저장하였습니다.<br>
<a href="sessionGetAttribute.jsp">세션 객체 확인하기</a>
</body>
</html>
