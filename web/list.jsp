<%--
  Created by IntelliJ IDEA.
  User: jeonjin-il
  Date: 2017. 1. 24.
  Time: 오후 8:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <tr>
            <td>번호</td>
            <td>이름</td>
            <td>제목</td>
            <td>날짜</td>
            <td>조회수</td>
        </tr>
        <c:forEach items="${list}" var="dto">
            <tr>
                <td>${dto.bId}</td>
                <td>${dto.bName}</td>
                <td>
                    <a href = "content_view.do?bId=${dto.bId}">${dto.bTitle}</a>
                </td>
                <td>${dto.bDate}</td>
                <td>${dto.bHit}</td>
            </tr>
        </c:forEach>

        <tr>
            <td colspan="5"> <a href="write_view.do">글작성</a></td>
        </tr>
    </table>
</div>
</body>
</html>
