<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="p1.Connect" %>
<%
	Connect c1=new Connect();
%>
<%
	String email=request.getParameter("email");
	
	boolean b=c1.checkDuplicateUser(email.trim());
	String s="";
	if(b)
	{
		s="User already exists!!!";
	}
	out.println(s);
%>