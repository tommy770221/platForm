<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="struts"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	</head>

	<body>

		文件已经保存到：
		<a href="upload/<struts:property value="pictureFileName" />"
			target=_blank><struts:property value="pictureFileName" />
		</a>
		<br/>
		<br/>
		<a href="upload.action">继续上传</a>

	</body>
</html>
