<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-20
  Time: 오전 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="thumbCtrl.do" enctype="multipart/form-data">
        <h3>이미지 파일</h3>
        원본 파일: <input type="file" name="sourceImage"><br/>
        축소 비율: <input type="text" name="ratio" size="4"> %<br/>
        <input type="submit" value="썸네일만들기">
    </form>
</body>
</html>
