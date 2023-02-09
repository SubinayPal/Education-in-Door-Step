<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.Connect" %>
<%
	Connect c1=new Connect();
	String uname=request.getParameter("uname");
	String email=request.getParameter("email");
	String phnno=request.getParameter("phnno");
	String pwd=request.getParameter("pwd");
	
	boolean b=c1.saveFreeRegRecord(uname,email,phnno,pwd);
	response.sendRedirect("FreeReg.jsp?result=duplicate email");	

%>
