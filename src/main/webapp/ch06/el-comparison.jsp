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
    <title>JSP 2.0 Expression Language - Basic Comparison</title>
</head>
<body>
<h1>JSP 2.0 Expression Language - Basic Arithmetic</h1>
<hr>
This example illustrates basic Expression Language comparisons.
The following comparison operators are supported.
<ul>
    <li>Less-than (&lt; or lt)</li>
    <li>Greater-than (&gt; or gt)</li>
    <li>Less-than-or-equal (&lt; = or le)</li>
    <li>Greater-than-or-equal (&gt; = or ge)</li>
    <li>Equal (== or eq)</li>
    <li>Not Equal (!= or ne)</li>
</ul>
<blockquote>
    <u><b>Numeric</b></u>
    <code>
        <table border="1">
            <thead>
            <td><b>EL Expression</b></td>
            <td><b>Result</b></td>
            </thead>
            <tr>
                <td>\${1 &lt; 2}</td>
                <td>${1 < 2}</td>
            </tr>
            <tr>
                <td>\${1 lt 2}</td>
                <td>${1 lt 2}</td>
            </tr>
            <tr>
                <td>\${1 &gt; (4/2)}</td>
                <td>${1 > (4/2)}</td>
            </tr>
            <tr>
                <td>\${4.0 &gt; = 3}</td>
                <td>${4.0 >= 3}</td>
            </tr>
            <tr>
                <td>\${4.0 ge = 3}</td>
                <td>${4.0 ge 3}</td>
            </tr>
            <tr>
                <td>\${4 &lt; = 3}</td>
                <td>${4 >= 3}</td>
            </tr>
            <tr>
                <td>\${4 le 3}</td>
                <td>${4 le 3}</td>
            </tr>
            <tr>
                <td>\${100.0 == 100}</td>
                <td>${100.0 == 100}</td>
            </tr>
            <tr>
                <td>\${100.0 eq 100}</td>
                <td>${100.0 eq 100}</td>
            </tr>
            <tr>
                <td>\${(10*10) != 100}</td>
                <td>${(10*10) != 100}</td>
            </tr>
            <tr>
                <td>\${(10*10) ne 100}</td>
                <td>${(10*10) ne 100}</td>
            </tr>
        </table>
        <u><b>Alpabetic</b></u>
        <table border="1">
            <thead>
            <td>EL Expression</td>
            <td>Result</td>
            </thead>
            <tr>
                <td>\${'a' < 'b'}</td>
                <td>${'a' < 'b'}</td>
            </tr>
            <tr>
                <td>\${'hip' < 'hit'}</td>
                <td>${'hip' < 'hit'}</td>
            </tr>
            <tr>
                <td>\${'4' > 3}</td>
                <td>${'4' > '3'}</td>
            </tr>
        </table>
    </code>
</blockquote>
</body>
</html>
