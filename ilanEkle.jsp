<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="ilanSitesi.connect" %>
<%@page import="java.io.*" %>
<%
HttpSession anasayfa = request.getSession(true);
if(anasayfa.getValue("kullanici_giris")!="ycl"){
response.sendRedirect("index.jsp");

}else{
 String fotoUrl="";
	%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



<style type="text/css">
body {
	/*background-image: url(arkaplan.jpg);*/
}
#cerceve_giris_uyelik {
	height: auto;
	width: 650px;
	margin-top: 10px;
	margin-right: auto;
	margin-bottom: 10px;
	margin-left: auto;
}

#uyeOl {

	height: auto;
	width: 600px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 2px;
	margin-left: auto;
	padding: 0px;

	border-radius: 10px;
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
	width: 120px;
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
	border-radius: 5px;
	
	width: 250px;
	font-size: 25x;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
	color: #009;
}

.tb13 {
	border: 2px solid #456879;
	border-radius: 5px;

	font-size: 18px;
	font-family: Verdana, Geneva, sans-serif;
	color: #009;
}

</style>





</head>
<body>






<div id="uyeOl">

<form method="post" action="indexP.jsp?id=3" encType="multipart/form-data">
<table width="520"  border="0" align="center">
      <tr>
        <td colspan="2" align="center"><h3>Yeni İlan Ekle</h3></td>
      </tr>
 <tr>
        <td align="right" width="148"><h3>Fotoğraf </h3></td>
        <td>
          
          <input name="fotograf" type="file" class="tb11" id="textfield11" name="file" size="30"  />
        
       </td>
      </tr>
      
       <tr>
        <td align="right"><h3></h3></td>
        <td>
          
          <input type="submit" value="Yükle"/> 
        
       </td>
      </tr>
      
      
             <tr>
        <td align="right"><h3></h3></td>
        <td>
          
          
          
<%
 String saveFile=new String();
String contentType=request.getContentType();

if((contentType !=null ) && (contentType.indexOf("multipart/form-data")>=0)){
	DataInputStream in=new DataInputStream(request.getInputStream());
	int formDataLength=request.getContentLength();
	byte dataBytes[]=new byte[formDataLength];
	int byteRead=0;
	int totalBytesRead=0;
	
	while(totalBytesRead<formDataLength){
		byteRead=in.read(dataBytes,totalBytesRead,formDataLength);
		totalBytesRead+=byteRead;
		
	}
	
	String file=new String(dataBytes);
	saveFile=file.substring(file.indexOf("filename=\"")+10);
	saveFile=saveFile.substring(0,saveFile.indexOf("\n"));
	saveFile=saveFile.substring(saveFile.lastIndexOf("\\")+1,saveFile.indexOf("\""));
	
	
	int lastIndex=contentType.lastIndexOf("=");
	String boundary=contentType.substring(lastIndex+1,contentType.length());
	
	int pos;
	
	
	pos=file.indexOf("filename=\"");
	pos=file.indexOf("\n",pos)+1;
	pos=file.indexOf("\n",pos)+1;
	pos=file.indexOf("\n",pos)+1;
	
	int boundaryLocation=file.indexOf(boundary,pos)-4;
	int startPos=((file.substring(0,pos)).getBytes()).length;
	int endPos=((file.substring(0, boundaryLocation)).getBytes()).length;
	
	fotoUrl=saveFile;
	
	
	saveFile="C:/apache-tomcat-9.0.1/webapps/ilanSitesi/ilanFoto/"+saveFile;
	
	
	
	
	File ff=new File(saveFile);
	


	try{
		FileOutputStream fileOut=new FileOutputStream(ff);
		fileOut.write(dataBytes,startPos,(endPos-startPos));
		fileOut.flush();
		fileOut.close();

		out.println("<font color='green'>Fotograf yüklendi.</font>");
	} catch (Exception e){
		out.print("");
	}
	
	
	
	
}

%>


       </td>
      </tr>
</table>
</form>








  <form  method="post" name="ilanEkleForm" action="ilanEkleKontrol.jsp">
  
    <table width="520"  border="0" align="center">

      <tr>
        <td width="148" align="right"><h3>Profil ID </h3></td>
        <td width="362" style="height: 24px; ">
          
          <input name="id" type="text" class="tb11" id="textfield2" style="tb1" size="35" value="<%=anasayfa.getValue("id") %>" readonly/>
        
       </td>
      </tr>
      <tr>
        <td align="right" style="height: 16px; "><h3>Ad - Soyad </h3></td>
        <td>
          
          <input name="ad" type="text" class="tb1" id="textfield8"  size="100"  value="<%=anasayfa.getValue("ad") %>" readonly/>
          <input name="soyad" type="text" class="tb1" id="textfield9" size="10" height="25" value="<%=anasayfa.getValue("soyad") %>" readonly/>
        
       </td>
      </tr>

      <tr>
        <td align="right"><h3>Kategori</h3></td>
        <td>
         
                   <select class="tb11" name="kategori">
  <option value="ev">Ev</option>
  <option value="arac">Araç</option>

</select>
        </td>
      </tr>
      
      
            <tr>
        <td align="right"><h3>Durum</h3></td>
        <td>
         
          <select class="tb11" name="durum">
  <option value="kiralik">Kiralık</option>
  <option value="satilik">Satılık</option>

</select>
        </td>
      </tr>
     
      <tr>
        <td align="right"><h3>Cep Telefonu </h3></td>
        <td>
          
          <input name="telefon" type="text" class="tb11" id="textfield12" size="30" value="<%=anasayfa.getValue("tel") %>" readonly/>
        
        </td>
      </tr>
      
      
            <tr>
        <td align="right"><h3>Açıklama </h3></td>
        <td>
          
         <textarea name="aciklama" rows="6" cols="24" class="tb13"></textarea>
        
        </td>
      </tr>
      
      
                  <tr>
        <td align="right"><h3> </h3></td>
        <td>
           <input name="fotograf" type="text" class="tb11" id="fotograf"  hidden="true" size="30" value="<%=fotoUrl%>"/>
         
        
        </td>
      </tr>
      
      
      
      
      <tr>
        <td align="right">&nbsp;</td>
        <td>(*) zorunlu alanlar</td>
      </tr>
      <tr>
        <td align="right">&nbsp;</td>
        <td align="right">
            <input type="submit" name="ggg" id="myButton21"  class="myButton21" value="Kaydet">
          
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

<% } %>