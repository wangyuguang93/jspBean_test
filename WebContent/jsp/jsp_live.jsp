<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>life.jsp</title>
</head>
<body>
<%!
private int chushihuanum;
private int qingqiunum;
private int xiaohuinum;
%>
<%!
public void jspInit(){
	chushihuanum++;
	System.out.println("初始化次数："+chushihuanum);
}
public void jspDestroy(){
	xiaohuinum++;
	System.out.println("销毁次数："+chushihuanum);
}
%>
<%
qingqiunum++;
System.out.println("请求次数:"+qingqiunum+"次请求");
String content1="初始化次数："+chushihuanum;
String content2="请求次数："+qingqiunum;
String content3="销毁次数："+xiaohuinum;

%>
<h1>JSP 测试实例</h1>
<p><%=content1 %></p>
<p><%=content2 %></p>
<p><%=content3 %></p>

</body>
</html>