<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="components/js/jquery-1.8.0.js" type="text/javascript"></script>
<script src="components/js/jquery-migrate-1.1.0.js" type="text/javascript"></script>
</head>
<body>
<script language="javascript">
function userlogout(){
	var yyy= $.parseJSON('{"test":"test"}');
	alert('yyy資訊'+yyy.test);
$.ajax({
    type:'GET',
    url:'TestAjaxData.jsp',
   // dataType: 'json',
    
    success: function(data){
    	// var x= $.parseJSON($(data).filter('#msg').html());
    	 var x= $.parseJSON($(data).filter('#error_msg').html());
         // console.log(stringify(data));
         //var x= $(data).filter('#msg').html();
        //  var yy= $(data).filter('#error_msg').html();
        // alert('X value='+x.msg);
         
       //   var x= $.parseJSON(yy.toString());
       //   console.trace();
       //   console.log();
      //    alert(''+'\"'+yy.toString()+'\"');
         alert('Y value='+x.abc);
         alert('X value='+data);
      
         // alert('X value='+x.msg);
         
     },
     error:function(xhr, status, error){
          alert('Ajax request 發生錯誤'+xhr);
          alert('error 發生錯誤'+error);
     }
     });

}
</script>

<div id="div1"><h2>Let jQuery AJAX Change This Text</h2></div>

<button onclick='userlogout();'>Get External Content</button>
</body>
</html>