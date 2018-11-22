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
<link href="style.css" rel="stylesheet" type="text/css" />


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>İlanlar</title>
</head>
<body>


				<%
		String id=request.getParameter("id");
		PreparedStatement psTm=null;
		Connection con=connect.getConnection();

        psTm=con.prepareStatement("SELECT * FROM ilanlar WHERE id="+id+"");
        ResultSet rs=psTm.executeQuery();
        rs.next();
        
        	String ilanid=rs.getString("id");
        	String ilanKategori=rs.getString("kategori");
        	String ilanFotograf=rs.getString("fotograf");
        	String ilanAciklama=rs.getString("aciklama");
        	String ilanTel=rs.getString("tel");
        	String ilanDurumu=rs.getString("durum");
        	String ilanSahibiAdi=rs.getString("ad");
        	String ilanSahibiSoyadi=rs.getString("soyad");
        
%>



<div id="cerceve">
	<div id="banner">
	
	
		<table border=0 width=1000>
	<tr>
	<td ><img src="imagesSite/bannerYeni.png" ></td>
	<td width="40"></td>
	<td align=left></td>
	<td width=250>




</td>
	
	
	</tr>
	
	
	</table>
	
	
	
	</div>
		<div id="menuIcerik">
				<div id="menu">
				
				
						<ul>
					        <li><a href="index.jsp">Anasayfa</a></li>
							
			      		</ul>
				
				
				</div>
	
				<div id="icerik">
				<center>
				<br/>
				
				<table border=0 ><tr><td><div id="ilanDetayFoto">
				
				<img src="<%=ilanFotograf %>" width=350 height=220>
			
				
				</div></td>
				<td width=400>
				
				

				
				
				
				<table width="326" height="233" border="0">
  <tr>
    <td width="116">İlan ID </td>
    <td width="194">: <b> <%= ilanid %> </b></td>
  </tr>
  <tr>
    <td>Kategori</td>
    <td>:<b> <%=ilanKategori%></b></td>
  </tr>
  <tr>
    <td>İlan Sahibi</td>
    <td>: <b><%=ilanSahibiAdi%> <%=ilanSahibiSoyadi%></b></td>
  </tr>
  <tr>
    <td>Cep Telefonu</td>
    <td>: <b><%=ilanTel%></b></td>
  </tr>
  <tr>
    <td>Durum</td>
    <td>:<b> <%=ilanDurumu%></b></td>
  </tr>
  
    <tr>
    <td>Açıklama</td>
    <td>:<b> <%=ilanAciklama%></b></td>
  </tr>

</table>
				
			
			
			

			
				
				</td>
				
				
				</tr>
				</table>
				</center>
				</div>
	
	</div><div id="clear"></div>






</div>
</body>
</html>