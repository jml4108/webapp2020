<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-10-16
  Time: 오전 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp-param.jsp</title>
</head>
<body>
<h3>이 파일은 jsp-param.jsp입니다.</h3>
<jsp:include page="jsp-param-target.jsp">
    <jsp:param name="name" value="jsp servlet" />   <!-- param 넘기기 -->
</jsp:include>
<p>include 표준 액션과 param 표준 액션을 사용하였습니다.</p>
</body>
</html>
