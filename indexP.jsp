<%
HttpSession anasayfa = request.getSession(true);
if(anasayfa.getValue("kullanici_giris")!="ycl"){
response.sendRedirect("index.jsp");

}else{
	%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css" />


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>İlanlar</title>
</head>
<body background="imagesSite/bg2.jpg">
<div id="cerceve">
	<div id="banner">
	<table border=0 width=1000>
	<tr>
	<td ><img src="imagesSite/bannerYeni.png" ></td>
	<td width="40"></td>
	<td align=left></td>
	<td width=250>
Hos Geldiniz :<b>
<a href="indexP.jsp?id=2"><%=anasayfa.getValue("ad") %> <%=anasayfa.getValue("soyad") %></a></b>


</td>
	
	
	</tr>
	
	
	</table>
	
	
	
	
	</div>
		<div id="menuIcerik">
				<div id="menu">
				
				
								<img src="imagesSite/profil.png" width=100 height=100>
				<br/>
					<h3><%=anasayfa.getValue("ad") %> <%=anasayfa.getValue("soyad") %></h3>
				
				
						<ul>
					        <li><a href="indexP.jsp?id=0">Anasayfa</a></li>
					        <li><a href="indexP.jsp?id=1">Son İlanlar</a></li>
					        <li><a href="indexP.jsp?id=2">İlanlarım</a></li>
					        <li><a href="indexP.jsp?id=3">İlan Ekle</a></li>
					        <li><a href="indexP.jsp?id=4">Şifre Değiştir</a></li>
					        <li><a href="cikis.jsp">Çıkış Yap</a></li>
			      		</ul>
				</div>
	
				<div id="icerik">
				

			
			
 <%
 String ids=request.getParameter("id");

 int id;
if(ids==null || ids==""){
	id=10;
}else{
   id=Integer.valueOf(request.getParameter("id"));
}
  switch (id){

    case 0: %><jsp:include page="anasayfa.jsp" flush="true"/><% break;

    case 1: %><jsp:include page="sonilanlar.jsp" flush="true"/><% break;

    case 2: %><jsp:include page="ilanlarim.jsp" flush="true"/><% break;
    case 3: %><jsp:include page="ilanEkle.jsp" flush="true"/><% break;
    case 4: %><jsp:include page="sifreDegistir.jsp" flush="true"/><% break;


    default: %><jsp:include page="anasayfa.jsp" flush="true"/><% break;

  };

%>
				
				
				
				
				
		
				
				</div>
	
	</div><div id="clear"></div>






</div>

<br/>
</body>
</html>


<%
} %>