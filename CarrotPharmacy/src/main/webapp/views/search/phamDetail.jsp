<%@page import="carrot.vo.SearchPham"%>
<%@page import="carrot.vo.Pharmacy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/header.jsp"%>

<%
SearchPham pham = (SearchPham) request.getAttribute("phamDetail");
%>

<!-- used for shop templates with filters on top-->
<div class="bg-orange pt-4">
	<div class="container pt-2 pb-3 pt-lg-3 pb-lg-4">
		<div class="d-lg-flex justify-content-between pb-3">
			<div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
						<li class="breadcrumb-item"><a class="text-nowrap"
							href="index.html"><i class="ci-home"></i>Home</a></li>
						<li class="breadcrumb-item text-nowrap active" aria-current="page">약국
							상세 정보</li>
					</ol>
				</nav>
			</div>
			<div class="order-lg-1 pe-lg-4 text-center text-lg-start">
				<h1 class="h3 text-light fw-bolder mb-0">약국 상세 정보</h1>
			</div>

		</div>
	</div>
</div>
<!-- Split section: Contact form + Map -->
<div class="container px-20 col-8" id="map">
	<div class="row g-0 d-flex align-items-center">
		<!-- 약국정보 -->
		<div class="col-lg-6 px-4 py-5 border-top d-flex align-items-center">
			<div class="row pt-4">
				<h2 class="h2 text-center fw-bold mb-4"><%=pham.getPham_name()%></h2>
				<div class="col-md-12 col-sm-12 mb-grid-gutter">
					<div class="card border-0 shadow">
						<img class="card-img-top" src="img\mypage\강남제일약국.jpg"
							alt="New York">
						<div class="card-body">
							<h6 class="col-lg-12"><%=pham.getLocation_gu()%></h6>

							<ul class="list-unstyled mb-0">
								<li class="d-flex pb-3 border-bottom"><i
									class=" ci-bookmark fs-lg mt-2 mb-0 text-orange"></i>
									<div class="ps-3">
										<h6 class="col-lg-12 mt-2"><%=pham.getPham_name()%>
										</h6>
									</div></li>
								<li class="d-flex pb-3 border-bottom"><i
									class="ci-location fs-lg mt-2 mb-0 text-orange"></i>
									<div class="ps-3">
										<span class="fs-ms text-muted">주소</span> <a
											class="d-block text-heading fs-sm" href="#"><%=pham.getLocation_address()%></a></li>
								<li class="d-flex pt-2 pb-3 border-bottom"><i
									class="ci-phone fs-lg mt-2 mb-0 text-orange"></i>
									<div class="ps-3">
										<span class="fs-ms text-muted">대표번호</span> <a
											class="d-block text-heading fs-sm" href="tel:+82025557790"><%=pham.getPham_tell()%></a>
									</div></li>
								<li class="pt-2"><i
									class="ci-time fs-lg mt-2 mb-0 text-orange"></i>
									<div class="ps-0 mx-4 mt-sm-n3_n4">
										<h3 class="accordion-header">
											<a class="accordion-button collapsed" href="#time"
												role="button" data-bs-toggle="collapse"
												aria-expanded="false" aria-controls="shoes"><span
												class="fs-ms text-muted">영업시간</span></a>
										</h3>
										<div class="accordion-collapse collapse" id="time"
											data-bs-parent="#shop-categories">
											<div class="accordion-body">
												<div class="widget widget-links widget-filter">
													<ul class="widget-list widget-filter-list pt-1"
														style="height: 12rem;" data-simplebar
														data-simplebar-auto-hide="false">
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Mon:
																	9AM - 8PM</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Tue:
																	9AM - 8PM</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Wed:
																	9AM - 8PM</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Thur:
																	9AM - 8PM</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Fri:
																	9AM - 8PM</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Sta:
																	9AM - 8PM</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Sun:
																	9AM - 8PM</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Holiday:
																	9AM - 8.5PM</span></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div></li>
							</ul>

						</div>
						<!-- card-body -->
					</div>
					<!-- card -->
				</div>
				<!-- col -->
			</div>
			<!-- row -->
		</div>
		<!-- col -->

		<!-- 지도 -->
		<%
		String a = pham.getLocation_lat();
		%>
		<%
		String b = pham.getLocation_lon();
		%>

		<div class="iframe-full-height-wrap"
			style="width: 500px; height: 500px;" id="googleMap"></div>
		<script>
			function myMap() {
				var a =<%=a%>
				var b =<%=b%>
				var mapOptions = {
					center : new google.maps.LatLng(a, b),
					zoom : 15
				};

				var map = new google.maps.Map(document
						.getElementById("googleMap"), mapOptions);
				new google.maps.Marker({
				    position: new google.maps.LatLng(a, b),
				    map
				  });
			}
		</script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAj4C5WATz3WZ5Rp8SRONI7VgimemfYK5k&callback=myMap"></script>

		<!-- 공지사항 -->
       <div class="container py-2 mb-2 my-sm-5">
         <h3 class="fw-bold ms-4">공지사항<a href="pharm_notice.html"><i class="ci-edit-alt opacity-70 ms-3"></i></a></h3>
         <div class="table-responsive px-4 my-4 offcanvas-body" style="overflow : scroll; height: 20rem;">
             <table class="table table-bordered table-layout-fixed fs-sm" style="min-width: 20rem;">
                 <tbody id="summary" data-filter-target>
                     <tr class="bg-secondary">
                         <th class="text-uppercase text-dark d-flex justify-content-center">번호</th>
                         <td colspan="4"><span class="text-dark fw-medium text-dark d-flex justify-content-center">제목</span></td>
                         <td><span class="text-dark fw-medium text-dark d-flex justify-content-center">첨부파일</span></td>
                         <td><span class="text-dark fw-medium text-dark d-flex justify-content-center">조회수</span></td>
                         <td><span class="text-dark fw-medium text-dark d-flex justify-content-center">작성일</span></td>
                     </tr>
                     <tr>
                         <th class="text-dark d-flex justify-content-center">1</th>
                         <td colspan="4"><a class="d-block" href="#quick-view" data-bs-toggle="modal">[영업안내] 2021년 12월 24~26일 (크리스마스 연휴) 정상영업합니다.</a></td>
                         <td><i class="ci-clip fs-lg mt-2 mb-0 text-orange d-flex justify-content-center"></i></td>
                         <td class="d-flex justify-content-center">45</td>
                         <td>2021-12-01</td>
                     </tr>
                     <tr>
                         <th class="text-dark d-flex justify-content-center">2</th>
                         <td colspan="4"><a class="d-block" href="#quick-view" data-bs-toggle="modal">[입고안내] KF94 살구색상 대형, 어린이용 각 50매씩 입고됐습니다.</a></td>
                         <td><i class="ci-clip fs-lg mt-2 mb-0 text-orange d-flex justify-content-center"></i></td>
                         <td class="d-flex justify-content-center">89</td>
                         <td>2021-11-27</td>
                     </tr>
                     <tr>
                         <th class="text-dark d-flex justify-content-center">3</th>
                         <td colspan="4"><a class="d-block" href="#quick-view" data-bs-toggle="modal">[휴무안내] 11월 3일 개인사정으로 휴무합니다.</a></td>
                         <td><i class="ci-clip fs-lg mt-2 mb-0 text-orange d-flex justify-content-center"></i></td>
                         <td class="d-flex justify-content-center">66</td>
                         <td>2021-10-30</td>
                     </tr>
                 </tbody>
             </table>
         </div>
     </div> <!-- container -->
	<div class="border-top border-bottom my-lg-3 py-5">
	    <div class="container pt-md-2" id="reviews">
	    <div class="row pb-3">
	
	    <div class="col-lg-4 col-md-5">
	      <h2 class="h3 mb-4">74개의 리뷰</h2>
	         <div class="star-rating me-2">
	         <i class="ci-star-filled fs-sm text-orange me-1"></i>
	         <i class="ci-star-filled fs-sm text-orange me-1"></i>
	         <i class="ci-star-filled fs-sm text-orange me-1"></i>
	         <i class="ci-star-filled fs-sm text-orange me-1"></i>
	         <i class="ci-star fs-sm text-muted me-1"></i>
	     	</div>
	     <span class="d-inline-block align-middle">평균 4.1점</span>
	     <p class="pt-3 fs-sm text-muted">74개 중 58 (77%)의<br>고객이 이 제품을 추천했습니다.</p>
		</div>

	    <div class="col-lg-8 col-md-7">
	        <div class="d-flex align-items-center mb-2">
	            <div class="text-nowrap me-3">
	                <span class="d-inline-block align-middle text-muted">5</span>
	                <i class="ci-star-filled fs-xs ms-1"></i>
	            </div>
	            <div class="w-100">
	                <div class="progress" style="height: 4px;">
	                    <div class="progress-bar bg-success" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	            </div>
	            <span class="text-muted ms-3">43</span>
	        </div>
	        <div class="d-flex align-items-center mb-2">
	            <div class="text-nowrap me-3">
	                <span class="d-inline-block align-middle text-muted">4</span>
	                <i class="ci-star-filled fs-xs ms-1"></i>
	            </div>
	            <div class="w-100">
	                <div class="progress" style="height: 4px;">
	                    <div class="progress-bar" role="progressbar" style="width: 27%; background-color: #a7e453;" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	            </div>
	            <span class="text-muted ms-3">16</span>
	        </div>
	        <div class="d-flex align-items-center mb-2">
	            <div class="text-nowrap me-3">
	                <span class="d-inline-block align-middle text-muted">3</span>
	                <i class="ci-star-filled fs-xs ms-1"></i>
	            </div>
	            <div class="w-100">
	                <div class="progress" style="height: 4px;">
	                    <div class="progress-bar" role="progressbar" style="width: 17%; background-color: #ffda75;" aria-valuenow="17" aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	            </div>
	            <span class="text-muted ms-3">9</span>
	        </div>
	        <div class="d-flex align-items-center mb-2">
	            <div class="text-nowrap me-3">
	                <span class="d-inline-block align-middle text-muted">2</span>
	                <i class="ci-star-filled fs-xs ms-1"></i>
	            </div>
	            <div class="w-100">
	                <div class="progress" style="height: 4px;">
	                    <div class="progress-bar" role="progressbar" style="width: 9%; background-color: #fea569;" aria-valuenow="9" aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	            </div>
	            <span class="text-muted ms-3">4</span>
	        </div>
	        <div class="d-flex align-items-center">
	            <div class="text-nowrap me-3">
	                <span class="d-inline-block align-middle text-muted">1</span>
	                <i class="ci-star-filled fs-xs ms-1"></i>
	            </div>
	            <div class="w-100">
	                <div class="progress" style="height: 4px;">
	                    <div class="progress-bar bg-danger" role="progressbar" style="width: 4%;" aria-valuenow="4" aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	            </div>
	            <span class="text-muted ms-3">2</span>
	        </div>
	    </div>
	</div>
        <hr class="mt-4 mb-3">
        <div class="row pt-4">
            <!-- Reviews list-->
            <div class="col-md-7">
                <div class="d-flex justify-content-end pb-4">
                    <div class="d-flex align-items-center flex-nowrap">
                        <!-- <label class="fs-sm text-muted text-nowrap me-2 d-none d-sm-block" for="sort-reviews">Sort by:</label> -->
                        <select class="form-select form-select-sm" id="sort-reviews">
                          <option>최신순</option>
                          <option>오래된순</option>
                          <option>인기순</option>
                          <option>별점높은순</option>
                          <option>별점 낮은 순</option>
                        </select>
                    </div>
                </div>
                <!-- Review-->
                <div class="product-review pb-4 mb-4 border-bottom">
                    <div class="d-flex mb-4">
                        <div class="d-flex align-items-center me-4 pe-2">
                            <img class="rounded-circle" src="<%=request.getContextPath()%>/views/img/team/윤정희님.jpg" width="50" alt="윤정희">
                            <div class="ps-3">
                                <h6 class="fs-sm mb-0">윤**</h6>
                                <span class="fs-ms text-muted">2021.12.05</span>
                            </div>
                        </div>
                        <div>
                            <div class="star-rating">
                                <i class="star-rating-icon ci-star-filled active"></i>
                                <i class="star-rating-icon ci-star-filled active"></i>
                                <i class="star-rating-icon ci-star-filled active"></i>
                                <i class="star-rating-icon ci-star-filled active"></i>
                                <i class="star-rating-icon ci-star"></i>
                            </div>
                            <div class="fs-ms text-muted">이 리뷰가 도움이 되었습니다. 83% </div>
                        </div>
                    </div>
                    <p class="fs-md mb-2">직원이 친절하고 접근성이 좋아요. 다음에 또 올게용.</p>
                    <div class="text-nowrap pt-2">
                        <button class="btn-like" type="button">15</button>
                        <button class="btn-dislike" type="button">3</button>
                    </div>
                </div>
                <!-- Review-->
                <div class="product-review pb-4 mb-4 border-bottom">
                    <div class="d-flex mb-4">
                        <div class="d-flex align-items-center me-4 pe-2"><img class="rounded-circle" src="<%=request.getContextPath()%>/views/img/team/이다인님.jpg" width="50" alt="이다인">
                            <div class="ps-3">
                                <h6 class="fs-sm mb-0">이**</h6><span class="fs-ms text-muted">2021.10.13</span>
                            </div>
                        </div>
                        <div>
                            <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i>
                                <i
                                    class="star-rating-icon ci-star-filled active"></i>
                            </div>
                            <div class="fs-ms text-muted">이 리뷰가 도움이 되었습니다. 99%</div>
                        </div>
                    </div>
                    <p class="fs-md mb-2">처방받은 약에 대해 자세한 설명을 해줍니다.</p>
                    <div class="text-nowrap pt-2">
                        <button class="btn-like" type="button">34</button>
                        <button class="btn-dislike" type="button">1</button>
                    </div>
                </div>
                <!-- Review-->
                <div class="product-review pb-4 mb-4 border-bottom">
                    <div class="d-flex mb-4">
                        <div class="d-flex align-items-center me-4 pe-2"><img class="rounded-circle" src="<%=request.getContextPath()%>/views/img/team/윤재식님.jpg" width="50" alt="윤재식">
                            <div class="ps-3">
                                <h6 class="fs-sm mb-0">윤**</h6><span class="fs-ms text-muted">2021.10.01</span>
                            </div>
                        </div>
                        <div>
                            <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star"></i><i class="star-rating-icon ci-star"></i>
                            </div>
                            <div class="fs-ms text-muted">이 리뷰가 도움이 되었습니다. 75%</div>
                        </div>
                    </div>
                    <p class="fs-md mb-2">주차가 힘들어요ㅠㅠ</p>
                    <div class="text-nowrap pt-2">
                        <button class="btn-like" type="button">26</button>
                        <button class="btn-dislike" type="button">9</button>
                    </div>
                </div>

                <div class="text-center">
                    <button class="btn btn-outline-secondary" type="button"><i class="ci-reload me-2"></i>리뷰 더보기</button>
                </div>
            </div>
            <!-- col -->
            <!-- 리뷰쓰기 -->
            <div class="col-md-5 mt-2 pt-4 mt-md-0 pt-md-0">
                <div class="bg-secondary py-grid-gutter px-grid-gutter rounded-3">
                    <h3 class="h4 pb-2">리뷰쓰기</h3>
                    <form class="needs-validation" method="post" novalidate>
                        <div class="mb-3">
                            <label class="form-label" for="review-name">이름<span class="text-danger">*</span></label>
                            <input class="form-control" type="text" required id="review-name">
                            <div class="invalid-feedback">이름을 작성하세요!</div><small class="form-text text-muted">이름은 첫글자만 표시됩니다.</small>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="review-email">이메일<span class="text-danger">*</span></label>
                            <input class="form-control" type="email" required id="review-email">
                            <div class="invalid-feedback">이메일을 작성하세요!</div><small class="form-text text-muted">인증 전용 - 스팸 메일을 보내지 않습니다.</small>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="review-rating">별점<span class="text-danger">*</span></label>
                            <select class="form-select" required id="review-rating">
                             <option value="">별점을 선택하세요.</option>
                             <option value="5">5 stars</option>
                             <option value="4">4 stars</option>
                             <option value="3">3 stars</option>
                             <option value="2">2 stars</option>
                             <option value="1">1 star</option>
                           </select>
                            <div class="invalid-feedback">별점을 선택하세요!</div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="review-text">리뷰<span class="text-danger">*</span></label>
                            <textarea class="form-control" rows="4" required id="review-text"></textarea>
                            <div class="invalid-feedback">리뷰를 작성하세요!</div><small class="form-text text-muted">리뷰는 10자 이상이어야 합니다.</small>
                        </div>
                        <button class="btn btn-primary btn-shadow d-block w-100" type="submit">등록하기</button>
                    </form>
                </div>
            </div>
            <!-- col -->
        </div>
        <!-- row -->
    </div>
    <!--  container -->
    </div>
    <!-- 리뷰 -->

	</div>
	<!-- container -->
</div>
<!-- row -->
</main>
<!-- main -->



<%@ include file="/views/footer.jsp"%>