<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<style type="text/css">
	.whole-container {
		min-height: 1000px;
		background: #fafafa;
	}
	
	.food-container {
		width: 100%;
		height: 250px;
		position: relative;
		display: flex;
		justify-content: center;
		align-content: center;
	}
	
	.mainfood {
		object-fit: cover;
		width: 100%;
		height: 100%;
		filter: brightness(65%);
	}
	
	.searchbox {
		width: 50%;
		height: 100%;
		position: absolute;
		top: 0;
		margin: 0 auto;
	}
	
	.inputbox {
		display: flex;
		justify-content: center;
		gap: 5px;
	}
	
	.ment-div {
		justify-content: center;
		display: flex;
	}
	.ment-pic {
		justify-content: center;
		margin: 0 auto;
	}
	
	.inputbox > button {
		border: none;
		border-radius: 5px;
		height: 40px;
		width: 40px;
		font-size: 20px;
	}
	
	.inputbox > button:hover {
		cursor: pointer;
	}
	
	.search-btn {
		background: #ff843A;
		color: white;
	}
	
	.address-search {
		height: 40px;
		outline: none;
		border: none;
		border-radius: 5px;
		width: 280px;
		padding-left: 15px;
		padding-right: 15px;
		background: white;
	}
	
	.category-box {
		margin: 0 auto;
		width: 1100px;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		grid-auto-rows: 250px;
		padding: 20px;
		gap: 10px;
		height: 90%;
		overflow: auto;
	}
	
	.category-info {
		border: 1px solid #818181;
		background: white;
		width: 250px;
		position: relative;
		overflow: hidden;
	}
	
	.category-info:hover {
		cursor: pointer;
	}
	
	.category-info-title {
		font-weight: bold;
		font-size: 15px;
		color: #333333;
		position: absolute;
		top: 20px;
    	left: 20px;
		width: 100px;
	}
	
	.category-info-img {
		position: absolute;
		right: 0;
		bottom: 0;
		width: 230px;
		transition: transform 0.5s ease;
	}
	
	.category-info:hover .category-info-img {
		transform: scale(1.05);
		transform-origin: right bottom;
	}
	.address-button {
		width: 100%;
		background: white;
		text-align: center;
		display: flex;
		align-items: center;
		margin: 0 auto;
		border: none;
	}
	
	.address-button:focus {
		border: none;
	}
	
	.dropdown-content {
		width: 350px;
		text-align: center;
		cursor: pointer;
	}
	
	.dropdiv {
		height: 20px;
		margin: 0 auto;
		font-size: 20x;
		width: 100px;
		color: #333;
	}
	
</style>
<div class="whole-container">
	
	<form class="searchForm">
	<div class="food-container">
		<img class="mainfood" src="${pageContext.request.contextPath}/resources/picture/mainfood.jpg">
		<div class="searchbox">
			<div class="ment-div">
				<img class="ment-pic" src="${pageContext.request.contextPath}/resources/picture/deliverment.png">
			</div>
			<div class="inputbox">
				<div class="dropdown address-search">
				 	<button class="btn address-button dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    	<div class="dropdiv">배달지 선택</div>
					</button>
					<div class="dropdown-menu">
						<c:if test="${not empty sessionScope.member}">
					    	<c:forEach var="addr" items="${addr}">
					    		<div class="dropdown-content" onclick="location.href='${pageContext.request.contextPath}/restaurant/list';">${addr.addr1}</div>
					    	</c:forEach>
							<c:if test="${empty addr}">
								<div class="dropdown-content">주소록을 추가하세요.</div>
							</c:if>
						</c:if>
						<c:if test="${empty sessionScope.member}">
							<div class="dropdown-content">로그인 후 이용하세요.</div>
						</c:if>
			  		</div>
		  		</div>
				<button type="button" class="search-btn" onclick="location.href='${pageContext.request.contextPath}/mypage/addrList';"><i class="bi bi-plus-lg"></i></button>		 
			</div>
		</div>
	</div>
	</form>
		
	<div class="category-box">
		<a class="category-info" href="${pageContext.request.contextPath}/event/eventList">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/event.png">
			<span class="category-info-title">이벤트</span>
		</a>
		<a class="category-info" href="${pageContext.request.contextPath}/restaurant/list">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-01.png">
			<span class="category-info-title">전체보기</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-onedish.png">
			<span class="category-info-title">1인분 주문</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-10.png">
			<span class="category-info-title">프랜차이즈</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-02.png">
			<span class="category-info-title">치킨</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-03.png">
			<span class="category-info-title">피자/양식</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-04.png">
			<span class="category-info-title">중국집</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-05.png">
			<span class="category-info-title">한식</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-06.png">
			<span class="category-info-title">일식/돈까스</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-07.png">
			<span class="category-info-title">족발/보쌈</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-08.png">
			<span class="category-info-title">야식</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-09.png">
			<span class="category-info-title">분식</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-11.png">
			<span class="category-info-title">카페/디저트</span>
		</a>
		<a class="category-info">
			<img class="category-info-img" src="${pageContext.request.contextPath}/resources/picture/category-convenience-store.png">
			<span class="category-info-title">편의점/마트</span>
		</a>
	</div>

</div>
