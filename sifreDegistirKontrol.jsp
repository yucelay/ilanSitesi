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
HttpSession anasayfa= request.getSession(true);
//out.println(anasayfa.getValue("id"));
String k_id=(String)anasayfa.getValue("id");

String sifreDegistir=request.getParameter("sifreDegistir");
String yeniSifre=request.getParameter("yeniSifre");
String yeniSifreTekrar=request.getParameter("yeniSifreTekrar");
//out.println(sifreDegistir+" "+yeniSifre+" "+yeniSifreTekrar);




PreparedStatement psTm=null;
Connection con=connect.getConnection();
psTm=con.prepareStatement("SELECT * FROM uyeler WHERE id='"+k_id+"'");
ResultSet rs=psTm.executeQuery();
if(rs.next())
{
	if(rs.getString("sifre").equals(sifreDegistir)){
			if(yeniSifre.equals(yeniSifreTekrar)){
		        Statement stmt = con.createStatement();
		        String sql = "UPDATE uyeler set sifre='"+yeniSifre+"' where ID='"+k_id+"'";
		        stmt.executeUpdate(sql);
				%>
				<script type="text/javascript">window.alert("Şifreniz Başarılı Bir Şekilde Değiştirildi.");</script>
				<meta http-equiv="Refresh" content="0;url=indexP.jsp?id=4">
				<%
			}else{
				%>
				<script type="text/javascript">window.alert("Şifreleriniz birbiriyle uyuşmuyor !!");</script>
				<meta http-equiv="Refresh" content="0;url=indexP.jsp?id=4">
				<%	
			}
	}else{
		%>
		<script type="text/javascript">window.alert("Eski Şifrenizi Yanlış Girdiniz !!");</script>
		<meta http-equiv="Refresh" content="0;url=indexP.jsp?id=4">
		<%
	}
}


%>





</body>
</html>