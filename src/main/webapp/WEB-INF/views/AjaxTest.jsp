<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>

<div class="container">
	<div>
		<table>
			<thead>
				<tr>
					<th>1 : </th>
					<th>2 : </th>
					<th>3 : </th>
					<th>4 : </th>
					<th>5 : </th>
					<th>6 : </th>
					<th>7 : </th>
					<th>8 : </th>
				</tr>
			</thead>
			<tbody id="corona">

			</tbody>
		</table>
	</div>
	<div>
		<button id = "test">데이터 가져오기</button>
	</div>
</div>


</body>
</html>
<script src="/resource/js/cmm/com.js"></script>
<script type="text/javascript">
$("#test").on("click",function(){

	ajaxAction("GET","/url","",function(data){
		var html = "";
		var rData = JSON.parse(data);
 		var api = JSON.parse(data).API;
		var kor = JSON.parse(data).korea; 
		
/* 		var arr = Array.from(kor);
		console.log(arr);
		
		Array.from(rData).forEach(function(ele){
			console.log(ele);
		}); */
		function f() {
		    let arr = Array.from(rData);
		    arr.forEach((value, key) => {
		        console.log(`${value} : ${key}`);
		    });
		}
		console.log("함수 : "+f());
		     
		     
		     
		     
		     
		
	

	});
});


</script>
