<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>`$`으로 가게 이름 넣기</title>
<style type="text/css">
.whole-container {
	min-height: 800px;
	background: #fafafa;
}

.info-form {
	width: 1100px;
	margin: 20px auto;
	min-height: 300px;
	display: flex;
	justify-content: center;
	gap: 20px;
}

.res-info {
	width: 65%;
	min-height: 100px;
}

.cart-info {
	border: 1px solid black;
	width: 30%;
	min-height: 100px;	
}

.res-title {
	border: 1px solid #d9d9d9;
	width: 100%;
	background: white;
}

.res-name {
	background: #d9d9d9;
	padding: 10px;
	color: #333;
	font-weight: bold;
	font-size: 15.4px;
	border-bottom: 1px solid #d9d9d9;
}

.res-main {
	display: flex;
	padding : 10px;
	gap: 10px;
}

.res-img {
	width: 80px;
	height: 80px;
	background-size: cover;
	border: 1px solid #d9d9d9;
}

.res-center {
	display: flex;
	align-items: center;
	font-size: 14px;
}

.res-rank {
	color: #FFA800;
}

.res-999 {
	color: #999;
}

.res-333 {
	color: #333;
}

.choice-form {
	display: flex;
	margin-top: 20px;
}

.choice-detail {
	width: 33.3%;
	height: 60px;
	background: white;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 16px;
	border-collapse: collapse;
	border: 1px solid #d9d9d9;
	cursor: pointer;
}

.choice-menu.active {
	color: white;
	background: #fa0050;
	border: none;
}

.choice-review.active {
	color: white;
	background: #fa0050;
	border: none;
}

.choice-info.active {
	color: white;
	background: #fa0050;
	border: none;
}

.review-rank {
	display: flex;
	justify-content: center;
	align-items: center;
	background: white;
	border: 1px solid #d9d9d9;
	margin-bottom: 20px;
	padding: 10px 0 20px 0;
}

.review {
	background: white;
	border:1px solid #d9d9d9;
	padding: 20px 15px;
}

.review-top {
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
}

.review-name {
	display: flex;
	gap: 5px;
}

.report-btn {
	border:none;
	background: none;
	color: #999999;
	font-size: 14px;
}

.review-date {
	font-size: 12px; 
	color: #999999;
	padding-top: 5px;
}

.review-img {
	width: 100%;
	border: 1px solid #d9d9d9;
}

.review-content {
	font-size: #14;
	color: #6666666;
	margin: 20px 0 0 0;
}

.res-information {
	background: white;
	border: 1px solid #d9d9d9;
	min-height: 300px;
	padding: 20px;
}

.information-category {
	min-height: 100px;
	margin-bottom: 20px;
}

.information-category-head {
	padding: 10px;
	border-bottom: 1px solid #666;
	font-weight: bold;
}

.information-category-head > i {
	color: #666;
}

.information-category-body {
	padding: 10px;
}

.information-category-body > img {
	width: 100%;
	margin-bottom: 10px;
}

.information-table {
	border-collapse: collapse;
	width: 100%;
}

.information-table td:first-child {
	width: 150px;
	color: #999;
}

.information-table td:nth-child(2) {
}

.information-table td {
	padding: 5px;
}

</style>
</head>
<body style="padding: 0;">
<div class="whole-container">
	<header>	
		<jsp:include page="/WEB-INF/views/fragment/header.jsp"/>
	</header>
	
	<div class="info-form">
		<div class="res-info">
			<div class="res-title">
				<div class="res-name">
					버거킹 홍대점
				</div>
				<div class="res-main">
					<div>
						<img class="res-img" src="${pageContext.request.contextPath}/resources/picture/burgerking.png">
					</div>
					<div class="res-center">
						<div>
							<span class="res-rank">★ 5.0</span><br>
							<span class="res-999">최소주문금액</span>&nbsp;&nbsp;<span class="res-333">6,000원</span>
						</div>
					</div>
				</div>
			</div>
			
			<div class="res-detail">
				<div class="choice-form">
					<div class="choice-detail choice-menu">메뉴 80</div>
					<div class="choice-detail choice-review">클린리뷰 18</div>
					<div class="choice-detail choice-info">정보</div>
				</div>
				
				<!-- 메뉴 -->
				<div class="res-show1">
				메뉴
				</div>
				
				<!-- 리뷰 -->
				<div class="res-show2" style="display: none;">
					<div class="review-rank">
						<div class="res-rank" style="font-size: 40px;">★</div>
						<div style="font-size: 48px;">5.0</div>
					</div>
					
					<!-- foreach로 돌리기 -->
					<!-- image가 없는 리뷰라면 if로 생략하기 -->
					<div class="review">
						<div class="review-top">
							<div class="review-name">
								<div class="res-333" style="font-weight: bold;">박상훈님</div><div class="review-date">2023-06-13</div>
							</div>
							<div><button class="report-btn">신고</button></div>
						</div>
						<img class="review-img" src="${pageContext.request.contextPath}/resources/picture/burgerking.png">
						<div class="review-content">
							맛있는 버거킹
						</div>
					</div>
					
					<div class="review">
						<div class="review-top">
							<div class="review-name">
								<div class="res-333" style="font-weight: bold;">박상훈님</div><div class="review-date">2023-06-13</div>
							</div>
							<!-- 자신의 리뷰라면 삭제 -->
							<div><button type="button" class="report-btn">신고</button></div>
						</div>
						<img class="review-img" src="${pageContext.request.contextPath}/resources/picture/amazing.png">
						<div class="review-content">
							맛있는 버거킹
						</div>
					</div>
					
				</div>
				
				<!-- 정보 -->
				<div class="res-show3" style="display: none;">
					<div class="res-information">
						<div  class="information-category">
							<div class="information-category-head">
								<i class="fa-solid fa-bullhorn"></i>&nbsp;사장님알림
							</div>
							<div class="information-category-body">
								<!-- img 하는가 없으면 안넣어도 되고 해도 안하면 if로 없애도 되공 -->
								<img src="${pageContext.request.contextPath}/resources/picture/burgerking.png">
								딜리버리 서비스 메뉴의 가격은 매장 가격과 상이할 수 있습니다.
							</div>
						</div>
						<div  class="information-category">
							<div class="information-category-head">
								<i class="fa-solid fa-store"></i>&nbsp;업체정보
							</div>
							<div class="information-category-body">
								<table class="information-table">
									<tr>
										<td>영업시간</td>
										<td>10:00 ~ 24:00</td>
									<tr>
									<tr>
										<td>전화번호</td>
										<td>02-920-0202</td>
									<tr>
									<tr>
										<td>주소</td>
										<td>서울특별시 마포구 월드컵북로 21 풍성빌딩 101호</td>
									<tr>
								</table>
							</div>
						</div>
						<div class="information-category">
							<div class="information-category-head">
								<i class="bi bi-newspaper"></i>&nbsp;사업자정보
							</div>
							<div class="information-category-body">
								<table class="information-table">
									<tr>
										<td>상호명</td>
										<td>(주)비케이알</td>
									<tr>
									<tr>
										<td>사업자등록번호</td>
										<td>102-20-02022</td>
									<tr>
								</table>
							</div>
						</div>
						<div class="information-category">
							<div class="information-category-head">
								<i class="fa-solid fa-sign-hanging"></i>&nbsp;원산지정보
							</div>
							<div class="information-category-body">
								쇠고기<br>
								와퍼,버거패티-뉴질랜드산과 호주산 섞음<br>
								와퍼패티 - 호주산 : 사용 매장 확인 https://burgerk.page.link/nutrition<br>
								스테이크패티-호주산과 뉴질랜드산 섞음 : 몬스터X<br>
								<br>
								돼지고기<br>
								베이컨-미국산<br>
								
								닭고기<br>
								국내산-너겟킹,롱치킨버거,몬스터와퍼,몬스터X,(바비큐)치킨버거<br>
								외국산(덴마크산,스웨덴산,태국산 등)-바삭킹<br>
								외국산(브라질산,태국산,미국산 등)-치킨킹,치킨킹BLT
							</div>						
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="cart-info">
			
		</div>
	</div>

</div>
<footer>
	<jsp:include page="/WEB-INF/views/fragment/footer.jsp"/>		
</footer>

<script type="text/javascript">

// DOM 요소들 가져오기
const choiceMenu = document.querySelector('.choice-menu');
	const choiceReview = document.querySelector('.choice-review');
	const choiceInfo = document.querySelector('.choice-info');
	
	const resShow1 = document.querySelector('.res-show1');
	const resShow2 = document.querySelector('.res-show2');
	const resShow3 = document.querySelector('.res-show3');
  
	// choice-menu 클릭 시 스타일 변경 및 res-show 숨김 처리
	choiceMenu.addEventListener('click', function() {
	    choiceMenu.classList.add('active');
	    choiceReview.classList.remove('active');
	    choiceInfo.classList.remove('active');
    
	    resShow1.style.display = 'block';
	    resShow2.style.display = 'none';
	    resShow3.style.display = 'none';
	});
  
	// choice-review 클릭 시 스타일 변경 및 res-show 숨김 처리
	choiceReview.addEventListener('click', function() {
	    choiceReview.classList.add('active');
	    choiceMenu.classList.remove('active');
	    choiceInfo.classList.remove('active');
	    
	    resShow1.style.display = 'none';
	    resShow2.style.display = 'block';
	    resShow3.style.display = 'none';
	});
  
	// choice-info 클릭 시 스타일 변경 및 res-show 숨김 처리
	choiceInfo.addEventListener('click', function() {
	    choiceInfo.classList.add('active');
	    choiceMenu.classList.remove('active');
	    choiceReview.classList.remove('active');
	    
	    resShow1.style.display = 'none';
	    resShow2.style.display = 'none';
	    resShow3.style.display = 'block';
	});
	
	choiceMenu.classList.add('active');
</script>

</body>
</html>