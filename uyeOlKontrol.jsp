<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="ilanSitesi.connect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%


String ad=request.getParameter("ad");
String soyad=request.getParameter("soyad");
String eMail=request.getParameter("eMail");
String cepTelefonu=request.getParameter("cepTelefonu");
String sifre=request.getParameter("sifre");
String sifreTekrar=request.getParameter("sifreTekrar");

if	(!(sifre.equals(sifreTekrar))){
	%> <script type="text/javascript">
	window.alert("Şifreleriniz Uyuşmuyor... ");

</script>
<meta http-equiv="Refresh" content="0;url=index.jsp?id=13">
<% 
	
}else{




//out.println(ad+soyad+eMail+cepTelefonu+sifre);


Connection con=connect.getConnection();
Statement st=con.createStatement();
st.executeUpdate("INSERT INTO uyeler (ad,soyad,mail,telefon,sifre) VALUES ('"+ad+"','"+soyad+"','"+eMail+"','"+cepTelefonu+"','"+sifre+"');");
out.println("kayit basarili");
con.close();
st.close();

response.sendRedirect("index.jsp?id=12");


}

%>

