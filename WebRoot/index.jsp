<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>  
 <title>My JSP 'ex3_index.jsp' starting page</title>
  </head> 
  <body>  
  <p>快来猜我心 1到100之间的整数</p> 
  <P>输入你所猜的数：  <FORM action="result.jsp" method="post" name=form > 
  <input type="text"name="guess">  <input type="submit"name="submit"value="猜！"> </FORM>  
  <% int number=(int)(Math.random()*100+1);  
  session.setAttribute("count",new Integer(0));//猜数次数  
  session.setAttribute("save",new Integer(number));//存储正确的数
  session.setAttribute("minNumber",new Integer(1));//最小值存储 
  session.setAttribute("maxNumber",new Integer(100));//最大值存储      %>
   </body> 
</html>
