<%--
  Created by IntelliJ IDEA.
  User: jeonjin-il
  Date: 2017. 2. 11.
  Time: 오후 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
     if(session.getAttribute("user") != null){ %>
<jsp:forward page="index.jsp" ></jsp:forward>
<%}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h1>login page</h1>
    <form class="form-horizontal" action="/login.do" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2" for="uId">ID :</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="uId" id="uId" placeholder="Enter Your ID">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="uPass">Password:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="uPass" id="uPass" placeholder="Enter password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label><input type="checkbox"> Remember me</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </form>
</div>



</body>
</html>




