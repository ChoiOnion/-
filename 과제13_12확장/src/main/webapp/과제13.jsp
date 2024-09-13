<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>GCD LCM 프로그램</title>
	</head>
	<body>
		<%@ page import="java.util.Date" %>
		<%!
		int gcd(int num1, int num2){
			int temp, n;
			
			if(num1<num2){
				temp = num1;
				num1 = num2;
				num2 = temp;
			}
			
			while(num2!=0){
				n = num1%num2;
				num1 = num2;
				num2 = n;
			}
			return num1;
		}
		%>		<%!
		int lcm(int num1, int num2){
			return (num1*num2)/gcd(num1,num2);
		}
		%>
		GCD, LCM 프로그램
		<hr>
		<%! int count=0; %>
		<% 
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
		%>
		<% out.print("NUM1 : "); %>
		<%= num1 %>
		<br>
		<% out.print("NUM2 : "); %>
		<%= num2 %>
		<br>
		<% out.print("GCD("+num1+", "+num2+") : "); %>
		<%out.print(gcd(num1,num2)); %>
		<br>
		<% out.print("LCM("+num1+", "+num2+") : "); %>
		<%out.print(lcm(num1,num2)); %>
		<hr>
		<% Date date = new Date();
  		int hours = date.getHours();
  		int minutes = date.getMinutes();
  		if(hours>12){
  			out.print("오후 "+(hours-12)+"시 "+minutes+"분 ");
  		}else{
  			out.print("오전 "+hours+"시 "+minutes+"분 ");
  		}
  		%>
		<%count=count+1; %>
		<%out.print("현재 "+count+"번 실행되었습니다."); %>
	</body>
</html>