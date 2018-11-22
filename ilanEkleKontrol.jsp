<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ilanSitesi.connect" %>
<%@page import="java.io.*" %>





<%




String id=request.getParameter("id");
String ad=request.getParameter("ad");
String soyad=request.getParameter("soyad");
String cepTelefonu=request.getParameter("telefon");
String aciklama=request.getParameter("aciklama");
String kategori=request.getParameter("kategori");
String durum=request.getParameter("durum");
String fotograf=request.getParameter("fotograf");
 fotograf="ilanFoto/"+fotograf;
 
 
// fotograf="WebContent/ilanFoto/"+fotograf;





//out.println(id+ad+soyad+cepTelefonu+aciklama+kategori+durum+fotograf);


Connection con=connect.getConnection();
Statement st=con.createStatement();
st.executeUpdate("INSERT INTO ilanlar (profil_id,kategori,fotograf,aciklama,tel,durum,ad,soyad) VALUES ('"+id+"','"+kategori+"','"+fotograf+"','"+aciklama+"','"+cepTelefonu+"','"+durum+"','"+ad+"','"+soyad+"');");
out.println("kayit basarili");
con.close();
st.close();

response.sendRedirect("indexP.jsp?id=2");



%>






