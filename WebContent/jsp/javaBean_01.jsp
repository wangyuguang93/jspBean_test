
<%@page import="java.util.Date"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@page import="com.sun.corba.se.impl.javax.rmi.CORBA.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="guang" scope="page" class="javaBean01.SimpleBean"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP开发学习</title>
</head>
<body>
<%
guang.setName("王玉广");
guang.setAge(18);
out.print("我的第一个JSP应用");
%>

<h3>姓名：<%=guang.getName() %></h3>
<h3>年龄：<%=guang.getAge() %></h3>
<h5>不好意思年龄错了，改下</h5>
<jsp:setProperty name="guang" property="age" value="16"/>
<jsp:getProperty property="age" name="guang"/>
<p>
今天的日期是：<%= (new java.util.Date()).toLocaleString()%>
 
</p>
<h3>if...else循环</h3>
<!--  <%!int i,num=3;%>
<%if(i==1 | i==7){%>
<p>今天是周末</p>
<% } else{%>
<p>今天不是周末</p>
<% }%>
-->
<%
	if(num==1|num==7){
		out.println("今天是周末");
	}else{
		out.println("今天不是周末");
	}
%>
<h3>for循环</h3>
<%for(i=1;i<=3;i++){ %>
<font color="green" size="<%=i%>">
王玉广是好人
</font><br />
<%} %>

<jsp:setProperty name="guang" property="zhuanye" value="软件技术"/>
<jsp:getProperty property="zhuanye" name="guang"/>

</body>
</html>