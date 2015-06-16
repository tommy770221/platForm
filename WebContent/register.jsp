<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" /> 
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<!-- ▼頁面標題 -->
<title>註冊頁面</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="components/css/default.css" rel="stylesheet" type="text/css" />
</head>
<body id="contents_05">
	<div id="wrap">
		<div id="header">
			<!-- ▼文案 -->
			<p class="copy">實體商店主要資訊</p>
			<!-- ▼LOGO圖片 -->
			<h1><a href="index.html"><img src="img/logo.gif" alt="Comfortable Cafe" /></a></h1>
			<ul id="navi">
				<!-- ▼▼導覽列從此開始▼▼ -->
				<li id="navi_01"><a href="index.html">Home</a></li>
				<li id="navi_02"><a href="news.html">News</a></li>
				<li id="navi_03"><a href="concept.html">Concept</a></li>
				<li id="navi_04"><a href="menu.html">Menu</a></li>
				<li id="navi_05"><a href="shop.html">Shop</a></li>
				<li id="navi_06"><a href="shop.html">register</a></li>
				<li id="navi_07"><a href="login.jsp">login</a></li>
				<!-- ▲▲導覽列到此結束▲▲ -->
			</ul>
		</div>
		<div id="contents" class="clearfix">
			<div id="title">
				<!-- ▼內容標題 -->
				<h2>註冊資訊</h2>
		    </div>
		    <dl id="register_info">
		      <s:form action='saveUser'>    
		          <s:textfield name="user.userId" label="帳號"></s:textfield>
                  <s:textfield name="user.username" label="姓名"></s:textfield>   
                  <s:textfield name="user.password" label="密碼"></s:textfield>
                  <s:textfield name="user.email" label="email"></s:textfield>
                  <s:textfield name="user.post_no" label="郵遞區號"></s:textfield>
                  <s:textfield name="user.address" label="地址"></s:textfield>                 
                  <s:radio name="user.sex" list="#{0:'男',1:'女'}" label="性別"></s:radio>   
                  <s:submit value="註冊" style="color:#669900"></s:submit>   
              </s:form>
		    </dl>
		    <ul id="register_info_img">
				<!-- ▼加入會員優惠 -->
				<li><img src="img/register_01.jpg" width="400" height="280" alt="加入會員好康1" /></li>
				<!-- ▼加入會員優惠2-->
				<li><img src="img/register_02.jpg" width="400" height="280" alt="加入會員好康2" /></li>
			</ul>
		</div>
     </div>
       
    <div id="footer">
		<!-- ▼版權聲明 -->
		<address>&copy; 2014  個人公司名稱版權聲明 All rights reserved.</address>
	</div>
</body>
</html>