<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>To Do List</title>
        <style>
              ul{list-style : none; pending: 0; margin:0; width: 500px;}
              li{border: 1px solid #ccc; background: #eee; padding: 5px 10px; color:#000;}
        
        </style>

</head>
<body>
  
  
  <h1>To Do List</h1>
  <p><button id="btnAdd"> New Item</button></p>
  <ul id="todoList"></ul>
 
  <script type="text/javascript">
  
   function addNewItem(){
	 var listItem = document.createElement("li");
	 listItem.innerText="Hello";
	 var list =document.getElementById("todoList");
	 list.appendChild(listItem);	   	   
   }
  var btnNew= document.getElementById("btnAdd");
  btnNew.onclick =addNewItem;
  
  var imgTracker='a';
  function change(){
	  
	  var img=document.getElementById("photo");
	  
	  if(imgTracker=='a')
	  {
	  img.src="img/b.jpg";
		  imgTracker='b';
	  }
	  
	  else{
		  img.src="img/a.jpg";
			  imgTracker='a';
	  }
  }
  
  setInterval('change()',2000);
  
  </script>
 <img src="img/a.jpg" id="photo" onclick="change();"></img>
</body>
</html>