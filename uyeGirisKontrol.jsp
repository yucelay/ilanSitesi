<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ilanSitesi.connect" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%
		String email=request.getParameter("eMail");
		String sifre=request.getParameter("sifre");
		
		PreparedStatement psTm=null;
		
		Connection con=connect.getConnection();

        psTm=con.prepareStatement("SELECT * FROM uyeler WHERE mail='"+email+"' AND sifre='"+sifre+"' ");
        ResultSet rs=psTm.executeQuery();
        
        
      
        if(rs.next())
        {
        	out.print("kayit var");
        	HttpSession anasayfa = request.getSession(true);
    		anasayfa.putValue("kullanici_giris", "ycl");
    		anasayfa.putValue("id",rs.getString("id"));
    		anasayfa.putValue("ad",rs.getString("ad"));
    		anasayfa.putValue("soyad",rs.getString("soyad"));
    		anasayfa.putValue("tel",rs.getString("telefon"));
    		
    		response.sendRedirect("indexP.jsp");
        	
        	
        	
        } else{
        	%> <script type="text/javascript">
        	window.alert("Kullanıcı Adınız veya Şifreniz Hatalı... ");

</script>
<meta http-equiv="Refresh" content="0;url=index.jsp?id=12">
<%
       //	response.sendRedirect("index.jsp?id=12");
        }
%>








