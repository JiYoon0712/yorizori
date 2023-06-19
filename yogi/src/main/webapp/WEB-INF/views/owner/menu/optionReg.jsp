<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<script type="text/javascript">

$(function(){
    $(".optionRemoveBtn").hide();
    
    $(".optionAddBtn").click(function(){
        $(".optionRemoveBtn").show();
        
        // const p = $(this).parent().parent().find("div:first-child  :first").html();
        // const p = $(this).parent().parent().find("div:first-child").children("p").html();
        // $(this).parent().parent().find("div:first").append("<p>"+p+"</p>");
        
        // 자신의 html : 첫번째 p태그를 복제하여 div로 감싼후 div안의 html요소가져 오기
        // const p = $(this).parent().parent().find("div:first-child  :first").clone().wrapAll("<div>").parent().html();
        // $(this).parent().parent().find("div:first").append(p);

        const p = $(this).parent().parent().find("div:first-child  :first").clone();
        $(p).find("input").each(function(){
        	$(this).val("");
        });
        $(this).parent().parent().find("div:first").append(p);
    });
    
    $("body").on("click", ".optionRemoveBtn", function(){
        if($(this).closest("div").find("p").length<=1) { // closest("태그") : 가장가까운 부모태그
            return;
        }
        
        $(this).parent().remove();
        
        if($(".optionRemoveBtn").closest("div").find("p").length<=1) {
            $(".optionRemoveBtn").hide();
        }
    });
});
</script>


<style type="text/css">
.option-box input[type=text] {
	width: 40%;
	display: inline-block;
}
</style>


<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">

		<div class="modal-content">

			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">옵션 그룹 추가</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>


			<div class="modal-body">
				<form class="row g-3">

					<div class="col-md-12">
						<label class="col-form-label">옵션그룹명</label> <input type="text"
							class="form-control" placeholder="GroupName">
					</div>

					<div class="col-md-12">
						<label class="col-form-label">옵션 추가</label>
					</div>

					<div class="option-box">
						<div class="col-md-12">
							<p>
								<input type="text" class="form-control" placeholder="이름">
								<input type="text" class="form-control" placeholder="가격"
									style="margin-left: 5px;"> 
								<span class="optionRemoveBtn" style="display: inline-block; margin-left: 5px;"> 
								<i class="bi bi-x-square"></i></span>
							</p>
						</div>

						<div style="text-align: center; margin-top: 10px;">
							<button type="button" class="btn optionAddBtn">추가</button>
						</div>
					</div>


				</form>

			</div>

			<div class="text-center modal-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
			</div>


		</div>
	</div>
</div>




<main id="main" class="main">

	<div class="pagetitle">
		<h1>옵션 메뉴</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/admin">admin</a></li>
				<li class="breadcrumb-item active">RestaurantList</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->


	<!-- list 조회 -->
	<section class="section">
		<div class="card">
			<div class="card-body" style="padding: 10px;">
				<h2 class="card-title"
					style="display: inline-block; margin-left: 20px;">옵션그룹 설정</h2>
				<button type="button" class="btn btn-primary btn-sm"
					style="margin-left: 10px;" data-bs-toggle="modal"
					data-bs-target="#exampleModal">추가</button>

			</div>
		</div>

		<div class="card">
			<div class="card-body">

				<!-- foreach 돌려야 하는 div 태그 -->
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseOne"
								aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
								옵션 #1</button>
						</h2>
						<div id="panelsStayOpen-collapseOne"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingOne">
							<div class="accordion-body" style="display: inline-block;">
								<span>대 - 5000원</span><br> <span>중 - 3000원</span><br>
								<span>소 - 1000원</span><br>
							</div>
							<div style="display: inline-block; float: right; padding: 20px;">
							<button type="button" class="btn btn-secondary btn-sm" >삭제</button>
							</div>
						</div>
					</div>
					
					
					
					
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseTwo"
								aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
								옵션 #2</button>
						</h2>
						<div id="panelsStayOpen-collapseTwo"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingTwo">
							<div class="accordion-body">
								<span>대 - 5000원</span><br> <span>중 - 3000원</span><br>
								<span>소 - 1000원</span><br>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="panelsStayOpen-headingThree">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseThree"
								aria-expanded="false"
								aria-controls="panelsStayOpen-collapseThree">옵션 #3</button>
						</h2>
						<div id="panelsStayOpen-collapseThree"
							class="accordion-collapse collapse"
							aria-labelledby="panelsStayOpen-headingThree">
							<div class="accordion-body">
								<span>대 - 5000원</span><br> <span>중 - 3000원</span><br>
								<span>소 - 1000원</span><br>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</section>

</main>
<!-- End #main -->