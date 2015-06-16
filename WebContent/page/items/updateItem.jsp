<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
                         
         
        <body> 
        
          
        <s:form action='updateItem'> 
        <s:textfield name="items.itemNo"   label="itemNo"></s:textfield>     
        <s:textfield name="items.itemName" label="itemName"></s:textfield>   
        <s:textfield name="items.price"    label="price"></s:textfield>   
        <s:textfield name="items.cost"     label="cost"></s:textfield>  
            <s:submit value="修改"></s:submit>   
        </s:form>   
        
         
      </body>                        
</body>
</html>