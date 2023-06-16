<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    


  <main id="main" class="main">
    <div class="pagetitle">
      <h1>주문리스트</h1>
    </div><!-- End Page Title -->

    <section class="section dashboard">

        <!-- Left side columns -->
          <div class="row">

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">접수대기<span> | 승현이네 국밥집</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">주문번호</th>
                        <th scope="col">유저아이디</th>
                        <th scope="col">배달지</th>
                        <th scope="col">메뉴</th>
                        <th scope="col">금액</th>
                        <th scope="col">전화번호</th>
                        <th scope="col">요청사항</th>
                        <th scope="col">주문상태</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#">1</a></th>
                        <td>test123</td>
                        <td>서울시 마포구 서교동 쌍용</td>
                        <td><a href="${pageContext.request.contextPath}/owner/order/orderDetail" class="text-primary">국밥 1개 외 3건 ...</a></td>
                        <td>55,000원</td>
                        <td>010-1234-2345</td>
                        <td>고기많이주세요고기많이주세요고기많이주세요고기많이주세요</td>
                        <td>
							<button type="button" class="btn btn-secondary" disabled>접수대기</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">2</a></th>
                        <td>test000</td>
                        <td>서울시 구로구 구로동</td>
                        <td><a href="${pageContext.request.contextPath}/owner/order/orderDetail" class="text-primary">국밥 3개  외 3건 ...</a></td>
                        <td>30,000원</td>
                        <td>010-1234-2345</td>
                        <td>국물많이주세요</td>
                        <td>
                        	<button type="button" class="btn btn-secondary" disabled>접수대기</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">3</a></th>
                        <td>id1212</td>
                        <td>서울시 마포구 서교동 쌍용</td>
                        <td><a href="${pageContext.request.contextPath}/owner/order/orderDetail" class="text-primary">국밥 2개  외 3건 ...</a></td>
                        <td>32,000원</td>
                        <td>010-1234-2345</td>
                        <td>요청사항 x</td>
                        <td>
                        	<button type="button" class="btn btn-secondary" disabled>접수대기</button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div><!-- End Recent Sales -->
            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">완료<span> | 승현이네 국밥집</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">주문번호</th>
                        <th scope="col">유저아이디</th>
                        <th scope="col">배달지</th>
                        <th scope="col">메뉴</th>
                        <th scope="col">금액</th>
                        <th scope="col">전화번호</th>
                        <th scope="col">요청사항</th>
                        <th scope="col">주문상태</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#">1</a></th>
                        <td>test123</td>
                        <td>서울시 마포구 서교동 쌍용</td>
                        <td><a href="${pageContext.request.contextPath}/owner/order/orderDetail" class="text-primary">국밥 1개 외 3건 ...</a></td>
                        <td>15,000원</td>
                        <td>010-1234-2345</td>
                        <td>고기많이주세요고기많이주세요고기많이주세요고기많이주세요</td>
                        <td>
                        	<button type="button" class="btn btn-success" disabled>배달완료</button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div><!-- End Recent Sales -->
          </div>
    </section>

  </main><!-- End #main -->