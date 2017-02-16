<%--
  Created by IntelliJ IDEA.
  User: jeonjin-il
  Date: 2017. 1. 25.
  Time: 오후 10:51
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
        <form action="ismodify.do" method="post">
            <input type="hidden" name="bId" value="${content_view.bId}">
            <input type="hidden" name="bName" value="${content_view.bName}">
            <input type="hidden" name="bHit" value="${content_view.bHit}">
            <input type="hidden" name="bTitle" value="${content_view.bTitle}">
            <input type="hidden" name="bContent" value="${content_view.bContent}">

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
                <td> ${content_view.bTitle} </td>
            </tr>
            <tr>
                <td> 내용 </td>
            </tr>
            <tr>
                <td height="300" > ${content_view.bContent}</td>
            </tr>
            <tr>
                <td colspan="2"> <input type="submit" value="수정" > &nbsp;&nbsp; <a href="list.do">목록보기</a>
                    &nbsp;&nbsp; <input type="button" value="삭제하기" onclick="button_event();">
                </td>
            </tr>
        </form>
    </table>
</div>
</body>
<script type="text/javascript">
    function button_event(){
        if (confirm("정말 삭제하시겠습니까??") == true){    //확인
            location.href="delete.do?bId=${content_view.bId}&bName=${content_view.bName}";
            return true;
        }else{   //취소
            return false;
        }}
</script>
</html>
