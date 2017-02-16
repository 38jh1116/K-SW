<%--
  Created by IntelliJ IDEA.
  User: jeonjin-il
  Date: 2017. 2. 11.
  Time: 오후 7:14
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
    <form action="modify.do" method="post">
        <input type="hidden" name="bId" value="${content_view.bId}">
        <tr>
            <td> 번호 </td>
            <td> ${content_view.bId}</td>
        </tr>
        <tr>
            <td> 조회수 </td>
            <td> ${content_view.bHit}</td>
        </tr>
        <tr>
            <td> 이름 </td>
            <td> ${content_view.bName} </td>
        </tr>
        <tr>
            <td> 제목 </td>
            <td> <input type="text" name="bTitle" value="${content_view.bTitle} "/></td>
        </tr>
        <tr>
            <td> 내용 </td>
            <td> <textarea rows="10" name="bContent">${content_view.bContent}</textarea></td>
        </tr>
        <tr>
            <td colspan="2"> <input type="submit" value="수정허기" > &nbsp;&nbsp; <a href="list.do">목록보기</a>
                &nbsp;&nbsp; <a href="delete.do?bId=${content_view.bId}">삭제 </a>
            </td>
        </tr>
    </form>
</table>
    </div>
</body>
</html>
