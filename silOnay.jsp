
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ilanSitesi.connect" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String silinecekId=request.getParameter("id"); 
Connection con=connect.getConnection();
PreparedStatement st = con.prepareStatement("DELETE FROM ilanlar WHERE id = " + silinecekId + ";");
st.executeUpdate(); 

response.sendRedirect("indexP.jsp?id=2");

%>