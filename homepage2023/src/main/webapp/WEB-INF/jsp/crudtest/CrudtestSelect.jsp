<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<title>데이터 가져오기</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>
table{border-collapse : collapse;}
th{font-weight:bold;}
th, td{padding:5px;border:1px solid #000;}
</style>
</head>
<body>
접속 계정 : <c:out value="${USER_INFO.id}"/>
<hr>
<table>
	<tbody>
		<tr>
			<th>제목</th>
			<td><c:out value="${result.sj}"/></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><c:out value="${result.userNm}"/></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><fmt:formatDate value="${result.frstRegistPnttm}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><c:out value="${result.cn}"/></td>
		</tr>
	</tbody>
</table>

<div class="box-btn">
	<c:url var="uptUrl" value="/crudtest/crudtestRegist.do">
		<c:param name="testId" value="${result.testId}"/>
	</c:url>
	<a href="${uptUrl}">수정</a>
	
	<c:url var="delUrl" value="/crudtest/delete.do">
		<c:param name="testId" value="${result.testId}"/>
	</c:url>
	<a href="${delUrl}" class="btn-del">삭제</a>
		
	<a href="/crudtest/selectList.do">목록</a>
</div>
<script>
$(document).ready(function(){
	$("#btn-del").click(function(){
		if(!confirm("삭제하시겠습니까?")){
			return false;
		}
	});
});	
</script>
</body>
</html>