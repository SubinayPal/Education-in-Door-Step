<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="p1.Connect" %>
    
    
    
<%
	Connect c1 = new Connect();
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	
	boolean b = c1.checkUserRecord(email,pwd);
		if(b==true){
			session.setAttribute("email",email);
			System.out.println("Correct...");
			response.sendRedirect("freeUserDashboard.jsp");	
		}
		else{
			System.out.println("incorrect");
			response.sendRedirect("index.jsp?result=false");
		}
	//System.out.println(b);
%>