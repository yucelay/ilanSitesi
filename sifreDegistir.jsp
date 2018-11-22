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


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Şifre Değiştir</title>





<style type="text/css">
body {
	/*background-image: url(siteFoto/girisYapArkaplan.jpg);*/
}
#cerceve_giris_uyelik {
	height: auto;
	width: 650px;
	margin-top: 10px;
	margin-right: auto;
	margin-bottom: 10px;
	margin-left: auto;
}
#girisYap {

	height: auto;
	width: 600px;
	margin-top: 10px;
	margin-right: auto;
	margin-bottom: 10px;
	margin-left: auto;
	border-radius: 10px;
	padding: 10px;
}

.myButton2 {
	background-image: -webkit-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -moz-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -ms-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -o-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: linear-gradient(to bottom, #55BBD9, #55BBD9);
	-webkit-border-radius: 8;
	-moz-border-radius: 8;
	border-radius: 8px;
	text-shadow: 0px 0px 0px #666666;
	font-family: Arial;
	color: #ffffff;
	font-size: 14px;
	border: solid #1f628d 0px;
	font-style: normal;
	font-style:!important;
	text-decoration: none;
	background-color: #55BBD9;
	padding: 10px;
}
.tb1 {
	border: 2px solid #456879;
	border-radius: 10px;
	height: 25px;
	width: 250px;
	font-size: 25x;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
	color: #009;
}
.myButton21 {	background-image: -webkit-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -moz-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -ms-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: -o-linear-gradient(top, #55BBD9, #55BBD9);
	background-image: linear-gradient(to bottom, #55BBD9, #55BBD9);
	-webkit-border-radius: 8;
	-moz-border-radius: 8;
	border-radius: 8px;
	text-shadow: 0px 0px 0px #666666;
	font-family: Arial;
	color: #ffffff;
	font-size: 20px;
	padding: 11px 14px 12px 20px;
	border: solid #1f628d 0px;
	font-style: normal;
	text-decoration: none;
}
.tb11 {
	border: 2px solid #456879;
	border-radius: 8px;
	height: 20px;
	width: 250px;
	font-size: 12x;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
	color: #009;
}
</style>








</head>
<body>



<br>

<div id="uyeOl">
  <form id="form7" name="gButton" method="post" action="sifreDegistirKontrol.jsp">
  
    <table width="480"  border="0" align="center">
      <tr>
        <td colspan="2" align="center"><h2>Şifre Değiştir</h2></td>
      </tr>


      <tr>
        <td align="right"><h3>Şifre :</h3></td>
         <td><input name="sifreDegistir" type="password" class="tb11" id="textfield9" size="30" height="25" required/></td>
      </tr>


      <tr><td align="right"><h3>Yeni Şifre :</h3></td>
       <td> <input name="yeniSifre" type="password" class="tb11" id="textfield11" size="30" required/></td>
      </tr>
      

            <tr>
        <td align="right"><h3>Yeni Şifre(Tekrar) :</h3></td>
        <td> <input name="yeniSifreTekrar" type="password" class="tb11" id="textfield11" size="30" required/></td>
      </tr>


      <tr>
        <td align="right">&nbsp;</td>
        <td align="right">
            <input type="submit" name="ggg" id="myButton21"  class="myButton21" value="Giriş Yap">
          
        </td>
      </tr>
      <tr>
        <td align="right">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
    </form>
  </div>




</body>
</html>


<%
    
        }
%>
