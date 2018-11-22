<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="ilanSitesi.connect" %>
<%
HttpSession anasayfa = request.getSession(true);
if(anasayfa.getValue("kullanici_giris")!="ycl"){
response.sendRedirect("index.jsp");

}else{
	%>






<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ilanSitesi.connect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		

        psTm=con.prepareStatement("SELECT * FROM ilanlar WHERE profil_id='"+anasayfa.getValue("id")+"'");
        ResultSet rs=psTm.executeQuery();
        while(rs.next())
        {
        	String id=rs.getString("id");
        	
        	out.print("<div id='anasayfaIcerikCerceve'><table border=0><tr>");
            out.print("<td collspan=2>"+"<a href=ilanDetay.jsp?id="+id+"><img width=200 height=140 src='"+rs.getString("fotograf")+"'>"+"</a></td></tr><tr><td>"); 
            out.print(rs.getString("kategori")+" - "); 
            out.print(rs.getString("durum")+"</td>");
            out.print("<tr><td><a href='silOnay.jsp?id="+id+"'><div id='sil'>Sil</div></a><a href='#'> <div id='duzenle'> Düzenle</div></a><td></tr>");
           
            out.print("</tr></table></div></a>");
        } 
%>




 
</body>
</html>

<%
}
%>
