<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@office.induk.ac.kr
  Date: 2020-10-12
  Time: 오후 7:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>error-handling</title>
</head>
<body>
    <h2>이전 페이지에서 오류가 발생하여 전달되었습니다.</h2>
    <h4> <% exception.getMessage(); %></h4>
</body>
</html>
