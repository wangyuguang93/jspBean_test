<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>你的ip地址</title>
</head>
<body>
<%
response.setIntHeader("Refresh", 1);
out.print("你的ip地址为："+request.getRemoteAddr()+"<br>端口为："+request.getRemotePort()+"<br>");
Calendar calendar=new GregorianCalendar();
String am_pm,stringminute="",stringsecond="";
int hour=calendar.get(Calendar.HOUR);
if(hour==0){
	hour=12;
}
int minute=calendar.get(Calendar.MINUTE);
if(minute<10){
	stringminute="0"+minute;
}else{
	stringminute=""+minute;
}
int second=calendar.get(Calendar.SECOND);
if(second<10){
	stringsecond="0"+second;
}
else{
	stringsecond=""+second;
}
if(calendar.get(Calendar.AM_PM)==0){
	am_pm="上午";
}else{
	am_pm="下午";
}
String ct="现在的时间为："+am_pm+":"+hour+"."+stringminute+"."+stringsecond;
//out.println(stringminute);
out.println(ct);
%>
</body>
</html>