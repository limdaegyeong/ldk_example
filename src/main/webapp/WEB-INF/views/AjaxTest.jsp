<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>

table, th, td
{
    border: 1px solid black;
}
</style>



</head>
<body>

<div class="container">
	<div>
		<table>
			<thead>
				<tr>
					<th>countryNm</th>
					<th>totalCnt</th>
					<th>recCnt</th>
					<th>deathCnt</th>
					<th>isolCnt</th>
					<th>qurRate</th>
					<th>incDec</th>
					<th>incDecK</th>
					<th>incDecF</th>
				</tr>
			</thead>
			<tbody id="corona">
				
			</tbody>
		</table>
	</div>
	<div>
		<button id = "urlData">url로 가져오기</button>
		<button id = "clientData">client로 가져오기</button>
	</div>
</div>


</body>
</html>
<script src="/resource/js/cmm/com.js"></script>
<script type="text/javascript">
$("#urlData").on("click",function(){

	ajaxAction("GET","/url","",function(data){
		var html = "";
		var rData = JSON.parse(data);
		
		// api는 제외하고 나머지만 출력
 		var api = JSON.parse(data).API;
		var korea = JSON.parse(data).korea;
		var seoul = JSON.parse(data).seoul;
		var busan = JSON.parse(data).busan;
		var daegu = JSON.parse(data).daegu;
		var incheon = JSON.parse(data).incheon;
		var gwangju = JSON.parse(data).gwangju;
		var daejeon = JSON.parse(data).daejeon;
		var ulsan = JSON.parse(data).ulsan;
		var sejong = JSON.parse(data).sejong;
		var gyeonggi = JSON.parse(data).gyeonggi;
		var gangwon = JSON.parse(data).gangwon;
		var chungbuk = JSON.parse(data).chungbuk;
		var chungnam = JSON.parse(data).chungnam;
		var jeonbuk = JSON.parse(data).jeonbuk;
		var jeonnam = JSON.parse(data).jeonnam;
		var gyeongbuk = JSON.parse(data).gyeongbuk;
		var gyeongnam = JSON.parse(data).gyeongnam;
		var jeju = JSON.parse(data).jeju;
		var quarantine = JSON.parse(data).quarantine;
		
 		var arr = [];
 		arr.push(korea,seoul,busan,daegu,incheon,gwangju,daejeon,ulsan,sejong,gyeonggi,
 				gangwon,chungbuk,chungnam,jeonbuk,jeonnam,gyeongbuk,gyeongnam,jeju,quarantine);
		
 		arr.forEach(function(i){
 			html += "<tr>"
 	        html += '<td>' + i.countryNm + '</td><td>' + i.totalCnt + '</td><td>' + i.recCnt + '</td><td>' + i.deathCnt + '</td><td>' + i.isolCnt + '</td><td>' + i.qurRate + '</td><td>' + i.incDec + '</td><td>' + i.incDecK + '</td><td>' + i.incDecF + '</td>'
 	        html += '</tr>';
 		})

		$("#corona").html(html);  

	});
});
$("#clientData").on("click",function(){

	ajaxAction("GET","/client","",function(data){
		var html = "";
		var rData = JSON.parse(data);
		
		// api는 제외하고 나머지만 출력
 		var api = JSON.parse(data).API;
		var korea = JSON.parse(data).korea;
		var seoul = JSON.parse(data).seoul;
		var busan = JSON.parse(data).busan;
		var daegu = JSON.parse(data).daegu;
		var incheon = JSON.parse(data).incheon;
		var gwangju = JSON.parse(data).gwangju;
		var daejeon = JSON.parse(data).daejeon;
		var ulsan = JSON.parse(data).ulsan;
		var sejong = JSON.parse(data).sejong;
		var gyeonggi = JSON.parse(data).gyeonggi;
		var gangwon = JSON.parse(data).gangwon;
		var chungbuk = JSON.parse(data).chungbuk;
		var chungnam = JSON.parse(data).chungnam;
		var jeonbuk = JSON.parse(data).jeonbuk;
		var jeonnam = JSON.parse(data).jeonnam;
		var gyeongbuk = JSON.parse(data).gyeongbuk;
		var gyeongnam = JSON.parse(data).gyeongnam;
		var jeju = JSON.parse(data).jeju;
		var quarantine = JSON.parse(data).quarantine;
		
 		var arr = [];
 		arr.push(korea,seoul,busan,daegu,incheon,gwangju,daejeon,ulsan,sejong,gyeonggi,
 				gangwon,chungbuk,chungnam,jeonbuk,jeonnam,gyeongbuk,gyeongnam,jeju,quarantine);
		
 		arr.forEach(function(i){
 			html += "<tr>"
 	        html += '<td>' + i.countryNm + '</td><td>' + i.totalCnt + '</td><td>' + i.recCnt + '</td><td>' + i.deathCnt + '</td><td>' + i.isolCnt + '</td><td>' + i.qurRate + '</td><td>' + i.incDec + '</td><td>' + i.incDecK + '</td><td>' + i.incDecF + '</td>'
 	        html += '</tr>';
 		})

		$("#corona").html(html);  

	});
});


</script>
