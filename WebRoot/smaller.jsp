<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>My JSP 'smaller.jsp' starting page</title>
  </head>
   <body> 
	<% int max=((Integer)session.getAttribute("maxNumber")).intValue();
	   int min=((Integer)session.getAttribute("minNumber")).intValue();%>   
	   <br>
    
   小了哟，从<%=min%>到<%=max%>继续猜。
     <FORM action="result.jsp"method="post"name=form>
     <INPUT type="text"name="guess"> 
     <INPUT type="submit"value="猜！"name="submit"> </FORM>   
   </body>
</html>
