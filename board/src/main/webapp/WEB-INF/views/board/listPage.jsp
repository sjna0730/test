<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>insert title here</title>
	</head>
	
<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp" %>
	</div>

	<div id="root">
		<section id="container">
			<h1>게시글 목록</h1>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>작성자</th>
						<th>조회수</th>
					</tr>
				</thead>
			 
				<tbody>
				<!-- 게시물 목록 -->
					<c:forEach items="${list}" var="list">
						<tr>
							<td>${list.bno}</td>
							<td>
							<a href="/board/view?bno=${list.bno}">${list.title}</a>
							</td>
							<td>
							<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" />				
							</td>
							<td>${list.writer}</td>
							<td>${list.viewCnt}</td>
						</tr>
					</c:forEach>
			  
				</tbody>

			</table>
			<!-- 게시물 페이징 카운트 -->
			<div>
 				<ul>
 					<c:if test="${pageMaker.prev}">
 						<li><a href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
 					</c:if> 
 					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
	 					<li><a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a></li>
 					</c:forEach>
	 				
 					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	 					<li><a href="listPage${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
 					</c:if>
 				</ul>
			</div>
		</section>
	</div>
</body>
</html>