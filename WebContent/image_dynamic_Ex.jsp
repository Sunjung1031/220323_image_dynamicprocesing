<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입이미지 동적교체</title>
<script>
var imgs = new Array();
imgs.push("./images/img1.jpg" ) // 상대경로
imgs.push("./images/img2.jpg" ) // 상대경로
imgs.push("./images/img3.jpg" ) // 상대경로
imgs.push("./images/img4.jpg" ) // 상대경로

var index = 0;

window.onload = function(){
   setInterval("imageChange()", 2000);       // 2초마다 imageChange 함수 호출
}
function imageChange() {
   //var currentDate = new Date();
   var img = document.getElementById("img");
   //img.src = imgs[currentDate.getSeconds()%8%5]; 
   
   img.src = imgs[index];
   index++;
   
   if(index == imgs.length){
	   index = 0; 
   }
		
}
</script>
</head>
<body>
<center>
<h1>(주)휴먼 소프트웨어</h1>
<img id = "img"/>
</center>

</body>
</html>