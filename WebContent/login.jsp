<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" /> 
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<!-- ▼頁面標題 -->
<title>登入畫面</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="components/css/default.css" rel="stylesheet" type="text/css" />
<script src="components/js/jquery-1.6.1.min.js" type="text/javascript"></script>
<script src="components/js/slide.js" type="text/javascript"></script>
<script type="text/javascript">
var imgTracker='a';
function change(){
	  
	  var img=document.getElementById("change");
	  
	  if(imgTracker=='a')
	  {
	  img.src="img/menu_01.jpg";
		  imgTracker='b';
	  }
	  
	  else{
		  img.src="img/menu_02.jpg";
			  imgTracker='a';
	  }
}

setInterval('change()',2000);
</script>

</head>
<body id="contents_04">
        <div id="wrap">
             <div id="header">
                <!-- ▼文案 -->
			   <p class="copy">註冊頁面</p>
			    <!-- ▼LOGO圖片 -->
			     <h1><a href="index.html"><img src="img/logo.gif" alt="Comfortable Cafe" /></a></h1>
			    <ul id="navi">
				  <!-- ▼▼導覽列從此開始▼▼ -->
				  <li id="navi_01"><a href="index.html">Home</a></li>
				  <li id="navi_02"><a href="news.html">News</a></li>
				  <li id="navi_03"><a href="concept.html">Concept</a></li>
				  <li id="navi_04"><a href="menu.html">Menu</a></li>
				  <li id="navi_05"><a href="shop.html">Shop</a></li>
				  <li id="navi_06"><a href="register.jsp">register</a></li>
				  <li id="navi_07"><a href="login.jsp">login</a></li>
				    <!-- ▲▲導覽列到此結束▲▲ -->
			    </ul>
		      </div>
		      <div id="contents" class="clearfix">
                
              </div>
             <ul id="login_text" class="clearfix">
              </ul> 
         <s:if test="%{#parameters.error != null}">
            <div style="color: red">Invalid User</div>
        </s:if>
      <c:if test="${'fail' eq param.auth}">
        <div style="color:red">
                Login Failed!!!<br />
                Reason : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
         </div>
    </c:if>
        <s:form name="loginForm" action="/login" method="post">
            <s:textfield name="user.id" label="ID"/>
            <s:password name="user.password" label="Password"/>
            <s:submit value="Login"/>
        </s:form>
             
              <p id="concept_img"><img src="img/concept_01.jpg" width="360" height="430" alt="餐點照片" id="change" onclick="change();"/></p>
			<ul id="concept_photos" class="clearfix">
				<!-- ▼▼小型概念照片從此開始▼▼ -->
				<li class="photo"><img src="img/concept_02.jpg" width="160" height="160" alt="店內照片" /></li>
				<li class="photo"><img src="img/concept_03.jpg" width="160" height="160" alt="餐點照片" /></li>
				<li class="photo"><img src="img/concept_04.jpg" width="160" height="160" alt="店內照片" /></li>
				<li><img src="img/concept_05.jpg" width="160" height="160" alt="店內照片" /></li>
				<!-- ▲▲小型概念照片到此結束▲▲ -->
			</ul>  
        
        </div>
               
	
	<div id="footer">
		<!-- ▼版權聲明 -->
		<address>&copy; 2014  個人公司名稱版權聲明 All rights reserved.</address>
	</div>

</body>
</html>