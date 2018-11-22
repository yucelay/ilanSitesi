
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ilanSitesi.connect" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%

		PreparedStatement psTm=null;
		Connection con=connect.getConnection();

        psTm=con.prepareStatement("SELECT * FROM ilanlar ORDER BY id DESC");
        ResultSet rs=psTm.executeQuery();
        while(rs.next())
        {
        	String id2=rs.getString("id");
        	out.print("<a href=ilanDetay.jsp?id="+id2+">");
        	out.print("<div id='anasayfaIcerikCerceve'><table border=0><tr>");
            out.print("<td collspan=2>"+"<img width=200 height=140 src='"+rs.getString("fotograf")+"'>"+"</td></tr><tr><td>"); 
            out.print(rs.getString("kategori")+" - "); 
            out.print(rs.getString("durum")+"</td>");
           
            out.print("</tr></table></div>");
        } 
%>



</body>
</html>