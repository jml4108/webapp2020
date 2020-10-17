<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-10-17
  Time: 오후 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>JSP 2.0 Expression Language - Basic Arithmetic</title>
</head>
<body>
<h1>JSP 2.0 Expression Language - Basic Arithmetic</h1>
<hr>
This example illustrates basic Expression Language arithmethic.
Adition (+), substraction(-), multiplication(*), division (/ or div),
and modulus (% or mod), are all supported.  Error conditions, like
division by zero, ard handled gracefully.
<br>
<blockquote>
    <code>
        <table border="1">
            <thead>
            <td><b>EL Expression</b></td>
            <td><b>Result</b></td>
            </thead>
            <tr>
                <td>\${1 + 2}</td>
                <td>${1 + 2}</td>
            </tr>
            <tr>
                <td>\${1.2 + 2.3}</td>
                <td>${1.2 + 2.3}</td>
            </tr>
            <tr>
                <td>\${1.2E4 + 1.4}</td>
                <td>${1.2E4 + 1.4}</td>
            </tr>
            <tr>
                <td>\${-4 - 2}</td>
                <td>${-4 - 2}</td>
            </tr>
            <tr>
                <td>\${3/4}</td>
                <td>${3/4}</td>
            </tr>
            <tr>
                <td>\${3 div 4}</td>
                <td>${3 div 4}</td>
            </tr>
            <tr>
                <td>\${3/0}</td>
                <td>${3/0}</td>
            </tr>
            <tr>
                <td>\${10%4}</td>
                <td>${10%4}</td>
            </tr>
            <tr>
                <td>\${10 mod 4}</td>
                <td>${10 mod 4}</td>
            </tr>
            <tr>
                <td>\${(1==2) ? 3 : 4}</td>
                <td>${(1==2) ? 3 : 4}</td>
            </tr>
        </table>
    </code>
</blockquote>
</body>
</html>
