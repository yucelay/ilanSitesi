<%
HttpSession anasayfa = request.getSession(true);
if(anasayfa.getValue("kullanici_giris")=="ycl"){
response.sendRedirect("indexP.jsp");

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

<a href="index.jsp?id=12">Giriş Yap </a> / <a href="index.jsp?id=13"> Üye Ol</a></b>


</td>
	
	
	</tr>
	
	
	</table>
	
	
	
	
	</div>
		<div id="menuIcerik">
				<div id="menu">
				
				
				
				
				
						<ul>
					        <li><a href="index.jsp?id=10">Anasayfa</a></li>
					        <li><a href="index.jsp?id=11">Son İlanlar</a></li>
					       <li><a href="index.jsp?id=12">Giriş Yap</a></li>
					        <li><a href="index.jsp?id=13">Üye Ol</a></li>
			
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

    case 10: %><jsp:include page="anasayfa.jsp" flush="true"/><% break;

    case 11: %><jsp:include page="sonilanlar.jsp" flush="true"/><% break;

    case 12: %><jsp:include page="uyeGirisi.jsp" flush="true"/><% break;

    case 13: %><jsp:include page="uyeOl.jsp" flush="true"/><% break;

    default: %><jsp:include page="anasayfa.jsp" flush="true"/><% break;

  };

%>
				
				
				
				
				
		
				
				</div>
	
	</div><div id="clear"></div>






</div>
</body>
</html>

<% }
 %>