<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-20
  Time: 오전 4:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="uploadFiles.do" enctype="multipart/form-data" method="post">
        번호: <input type="text" name="no"><br/>
        작성자: <input type="text" name="author"><br/>
        <input type="file" name="filename1"><br/>
        <input type="file" name="filename2"><br/>
        <input type="file" name="filename3"><br/>
        <input type="Submit" value="uploads"><br/>
    </form>
</body>
</html>
