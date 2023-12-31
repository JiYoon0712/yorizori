<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<style type="text/css">
.whole-container {
	min-height: 800px;
	background: #fafafa;
}

.container {
	background: white;
	margin: 30px auto;
}

.body-main {
	text-align: center;
	vertical-align: center;
}

.body-title{
	font-weight: 600;
	font-size: 25px;
	color: #012970;
}


.subjectdiv{
	cursor:pointer;
}
</style>


<div class="whole-container">
	<div class="container" style="max-width: 800px; padding : 20px 15px 20px 15px ;">
	<div class="body-container">	
		<div class="body-title">1:1 문의</div>
		<hr><br>
		
		<div class="body-main">

	        <div class="row board-list-header">
	            <div class="col-auto me-auto">
	            	${dataCount}개(${page}/${total_page} 페이지)
	            </div>
	            <div class="col-auto">&nbsp;</div>
	        </div>				
			
			<table class="table table-hover board-list">
				<thead class="table-light">
					<tr>
						<th class="bw-100">분류</th>
						<th>제목</th>
						<th class="bw-100">작성자</th>
						<th class="bw-90">문의일자</th>
						<th class="bw-90">처리결과</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.category}</td>
							<td class="left">
								<div onclick="location.href='${articleUrl}&num=${dto.qnum}'" class="subjectdiv">${dto.subject}</div>
							</td>
							<td>${sessionScope.member.userName}</td>
							<td>${dto.reg_date}</td>
							<td>${(empty dto.answer)?"답변대기":"답변완료"}</td>
						</tr>
					</c:forEach>
					
						
				</tbody>
			</table>
			
			<div class="page-navigation">
				${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
			</div>

			<div class="row board-list-footer">
				<div class="col">
					<button type="button" class="btn btn-light" style="vertical-align: left;" onclick="location.href='${pageContext.request.contextPath}/faq/home';" title="새로고침"><i class="bi bi-arrow-counterclockwise"></i></button>
				</div>
				<div class="col-6 text-center">
					<form class="row" name="searchForm" action="${pageContext.request.contextPath}/faq/home" method="post">
						<div class="col-auto p-1">
							<select name="condition" class="form-select">
								<option value="all" ${condition=="all"?"selected='selected'":""}>제목+내용</option>
								<option value="reg_date" ${condition=="reg_date"?"selected='selected'":""}>등록일</option>
								<option value="subject" ${condition=="subject"?"selected='selected'":""}>제목</option>
								<option value="userName" ${condition=="userName"?"selected='selected'":""}>작성자</option>
							</select>
						</div>
						<div class="col-auto p-1">
							<input type="text" name="keyword" value="${keyword}" class="form-control">
						</div>
						<div class="col-auto p-1">
							<button type="button" class="btn btn-light" onclick="searchList()"> <i class="bi bi-search"></i> </button>
						</div>
					</form>
				</div>
				<div class="col text-end">
					<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/faq/write';">질문등록</button>
				</div>
			</div>

		</div>
	</div>
	</div>

</div>

<script type="text/javascript">
function searchList() {
	const f = document.searchForm;
	f.submit();
}
</script>