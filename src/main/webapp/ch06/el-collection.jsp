<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-10-17
  Time: 오후 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("egyou", 95);
    map.put("shhan", 97);
    map.put("sj-ko", 96);
    request.setAttribute("hashmap", map);
%>
${hashmap.egyou}<br/>
${hashmap["shhan"]}<br/>
${hashmap["sj-ko"]}<br/>
${hashmap.sj-ko} <%-- 정상적으로 처리되지 않음 --%>
</body>
</html>
