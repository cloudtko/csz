<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
	<title>My JSP 'success.jsp' starting page</title>
 </head>
	<body> 
    <% int count=((Integer)session.getAttribute("count")).intValue();
       int num=((Integer)session.getAttribute("save")).intValue();
       long startTime=session.getCreationTime();
       long endTime=session.getLastAccessedTime(); %> 
	<P>不容易啊，猜了<%=count%>次，才猜对</P> 
	<P>花了<%=(endTime-startTime)/1000%>秒</P> <P>这个数字就是<%=num%>，笨死了</P> 
	 </body>
</html>
