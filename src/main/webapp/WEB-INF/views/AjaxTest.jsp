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
	<div> ����Ʈ
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>�̸�</th>
					<th>��ȭ��ȣ</th>
					<th>���Գ�¥</th>
					<th>�����ѳ�¥</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${members}">
				   <tr>
				     <td class="editMemInfo">${item.mem_id}</td>
				     <td>${item.mem_name}</td>
				     <td>${item.mem_tel}</td>
				     <td>${item.mem_regDate}</td>
				     <td>${item.mem_uptDate}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<button id = "test">������ ��������</button>
	</div>
</div>


</body>
</html>
<script src="/resource/js/cmm/com.js"></script>
<script type="text/javascript">
$("#test").on("click",function(){

	ajaxAction("POST","/url","",function(data){
		console.log("������ ������ : "+data );
	});
});


</script>
