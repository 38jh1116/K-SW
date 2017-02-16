<%--
  Created by IntelliJ IDEA.
  User: jeonjin-il
  Date: 2017. 1. 26.
  Time: 오후 1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
<table class="table table-striped" width="500" cellpadding="0" cellspacing="0" border="1">
    <form action="write.do" method="post">

        <tr>
            <td> 제목 </td>
            <td> <input type="text" name="bTitle" > </td>
        </tr>
        <tr>
            <td> 내용 </td>
            <td> <textarea rows="10" name="bContent"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"> <input type="submit" value="글쓰기" > &nbsp;&nbsp; <a href="list.do">목록보기</a>
            </td>
        </tr>
    </form>
</table>
</div>
</body>
</html>
