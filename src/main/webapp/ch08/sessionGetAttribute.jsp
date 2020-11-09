<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-06
  Time: 오전 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>세션에 정보 저장</title>
</head>
<body>
session.getAttribute("id")와 <br>
session.getAttribute("name")을 실행하여 <br>
세션 객체로부터 정보를 가져왔습니다.<br>
아이디 : <%= session.getAttribute("id") %>
이름 : <%= session.getAttribute("name") %>
</body>
</html>
