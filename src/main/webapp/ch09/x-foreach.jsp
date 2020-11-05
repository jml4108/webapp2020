<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
<head>
    <title>x-foreach</title>
</head>
<body>
<c:import var="xmlDoc" url="x-member.xml" charEncoding="utf-8"/>
<x:parse var="doc" doc="${xmlDoc}" />
<table border=1 width="500px">
    <tr><th>xMember.xml 파일 읽기</th></tr>
    <tr><td valign="top"><pre><c:out value="${xmlDoc}"/></pre></td></tr>
    <tr><th>x:forEach로 선택해서 읽기</th></tr>
    <x:forEach var="item" select="$doc//member" begin="0" end="2" step="1">
        <tr><td>
            <x:out select="$item/name" /><br/>
            <x:out select="$item/phone" /><br/>
            <x:out select="$item/department" /><br/>
        </td></tr>
    </x:forEach>
</table>
</body>
</html>
