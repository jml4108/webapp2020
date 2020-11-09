<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-06
  Time: 오전 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>세션 종료</title>
</head>
<body>
세션 ID가 <%= session.getId()%> 인
<% session.invalidate(); %> 세션 객체를 종료하였습니다.
</body>
</html>
