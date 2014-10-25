<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<title>结果页</title>
</head>
<body> 
	 <%
		String str=request.getParameter("guess");//从文本框中获取字符串 
		int guessNumber=Integer.parseInt(str);//将字符串转换成整数 
		int max=((Integer)session.getAttribute("maxNumber")).intValue();
		int min=((Integer)session.getAttribute("minNumber")).intValue();
		Integer integer=(Integer)session.getAttribute("save");
		int realnumber=integer.intValue();
		if(guessNumber==realnumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n=n+1;
			session.setAttribute("count",new Integer(n));
  			response.sendRedirect("success.jsp");
  		}
  		else if(guessNumber>realnumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n=n+1;
			max=guessNumber;
			session.setAttribute("count",new Integer(n));
			session.setAttribute("maxNumber",new Integer(max));
			response.sendRedirect("larger.jsp");
		}
		else if(guessNumber<realnumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n=n+1;
			min=guessNumber;
			session.setAttribute("count",new Integer(n));
			session.setAttribute("minNumber",new Integer(min));
			response.sendRedirect("smaller.jsp");
		}
		
			%> 
			</body>
  
</html>
