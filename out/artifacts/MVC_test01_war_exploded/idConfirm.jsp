<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: jeonjin-il
  Date: 2017. 1. 13.
  Time: 오후 6:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="dao.BDao" %>
<%
    String id = request.getParameter("user_id");
    System.out.println(id);
    BDao dao = new BDao();
    boolean result = dao.idConfirm(id) ;

%>
<?xml version='1.0' encoding='UTF-8'?>
<id_check>
    <result><%=result%></result>
</id_check>