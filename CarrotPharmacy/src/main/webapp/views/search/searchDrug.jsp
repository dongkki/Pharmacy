<%@page import="carrot.vo.Drug"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/header.jsp"%>

<%
	List<Drug> list = (List<Drug>)request.getAttribute("list");
%>

<!-- 페이지 위치 -->
<!-- used for shop templates with filters on top-->
<div class="bg-orange pt-4 pb-5">
	<div class="container pt-2 pb-3 pt-lg-3 pb-lg-4">
		<div class="d-lg-flex justify-content-between pb-3">
			<div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
						<li class="breadcrumb-item"><a class="text-nowrap" href="<%=request.getContextPath() %>/views/index.jsp"><i class="ci-home"></i>Home</a></li>
						<li class="breadcrumb-item text-nowrap active" aria-current="page">의약품	검색</li>
					</ol>
				</nav>
			</div>
			<div class="order-lg-1 pe-lg-4 text-center text-lg-start">
				<h1 class="h3 fw-bold text-light mb-0">의약품 검색</h1>
			</div>

		</div>
		<!-- 검색바 -->
		<div class="row mt-4 mb-n2">
			<div class="col-lg-6 col-md-8">
				<div class="input-group input-group-lg flex-nowrap">
					<i class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
					<input class="form-control rounded-start" type="text" placeholder="의약품명 · 제조사 · 약 모양을 입력하세요.">
					<button class="btn btn-primary btn-lg fs-base home_search_btn" type="button">검색</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------->
<!-- 필터 -->
<div class="container pb-5 mb-2 mb-md-4">
	<!-- Toolbar-->
	<div class="bg-light shadow-lg rounded-3 p-4 mt-n5 mb-4">
		<div class="d-flex justify-content-between align-items-center">
			<div class="dropdown me-2">
				<a class="btn btn-outline-secondary dropdown-toggle"
					href="#shop-filters" data-bs-toggle="collapse"><i
					class="ci-filter me-2"></i>Filters</a>
			</div>
			<div class="d-none d-sm-flex">
				<h6>검색 결과 전체 00 개</h6>
			</div>
		</div>

		<!-- Toolbar with expandable filters-->
		<div class="collapse" id="shop-filters">
			<div class="row pt-4">
				<div class="col-lg-6 col-sm-6">
					<!-- 카테고리-->
					<div class="card mb-grid-gutter">
						<div class="card-body px-4">
							<div class="widget widget-categories">
								<h3 class="widget-title">카테고리</h3>
								<div class="accordion mt-n1" id="shop-categories">
									<!-- 제조사-->
									<div class="accordion-item">
										<h3 class="accordion-header">
											<a class="accordion-button" href="#clothing" role="button"
												data-bs-toggle="collapse" aria-expanded="true"
												aria-controls="clothing">제조사</a>
										</h3>
										<div class="accordion-collapse collapse show" id="clothing"
											data-bs-parent="#shop-categories">
											<div class="accordion-body">
												<div class="widget widget-links widget-filter">
													<div class="input-group input-group-sm mb-2">
														<input
															class="widget-filter-search form-control rounded-end"
															type="text" placeholder="Search"><i
															class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
													</div>
													<ul class="widget-list widget-filter-list pt-1"
														style="height: 12rem;" data-simplebar
														data-simplebar-auto-hide="false">
														<li class="widget-list-item widget-filter-item">
															<a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
																<span class="widget-filter-item-text">모두보기</span>
																<span class="fs-xs text-muted ms-3">2,548</span>
															</a>
														</li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">일동제약(주)
																	&amp; Suits</span><span class="fs-xs text-muted ms-3">235</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">(주)유한양행</span><span
																class="fs-xs text-muted ms-3">410</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">보령제약(주)</span><span
																class="fs-xs text-muted ms-3">107</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">경동제약(주)</span><span
																class="fs-xs text-muted ms-3">93</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">View
																	all</span><span class="fs-xs text-muted ms-3">2,548</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Blazers
																	&amp; Suits</span><span class="fs-xs text-muted ms-3">235</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Blouses</span><span
																class="fs-xs text-muted ms-3">410</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Cardigans
																	&amp; Jumpers</span><span class="fs-xs text-muted ms-3">107</span></a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span class="widget-filter-item-text">Dresses</span><span
																class="fs-xs text-muted ms-3">93</span></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<!-- 효능,효과-->
									<div class="accordion-item">
										<h3 class="accordion-header">
											<a class="accordion-button collapsed" href="#accessories"
												role="button" data-bs-toggle="collapse"
												aria-expanded="false" aria-controls="accessories">효능,효과</a>
										</h3>
										<div class="accordion-collapse collapse" id="accessories"
											data-bs-parent="#shop-categories">
											<div class="accordion-body">
												<div class="widget widget-links">
													<ul class="widget-list">
														<li class="widget-list-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span>View all</span><span
																class="fs-xs text-muted ms-3">920</span></a></li>
														<li class="widget-list-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span>Belts</span><span
																class="fs-xs text-muted ms-3">364</span></a></li>
														<li class="widget-list-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span>Hats</span><span
																class="fs-xs text-muted ms-3">405</span></a></li>
														<li class="widget-list-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span>Jewelry</span><span
																class="fs-xs text-muted ms-3">131</span></a></li>
														<li class="widget-list-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"><span>Cosmetics</span><span
																class="fs-xs text-muted ms-3">20</span></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- accordion -->
							</div>
							<!-- widget -->
						</div>
						<!-- card-body -->
					</div>
					<!-- card -->
				</div>
				<!-- col-lg-6 -->
				<div class="col-lg-6 col-sm-6">
					<!-- 약 모양 -->
					<div class="card mb-grid-gutter">
						<div class="card-body px-4">
							<div class="widget widget-filter">
								<h3 class="widget-title">약 모양</h3>
								<div class="input-group input-group-sm mb-2">
									<input
										class="widget-filter-search form-control rounded-end pe-5"
										type="text" placeholder="Search"><i
										class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
								</div>
								<ul class="widget-list widget-filter-list list-unstyled pt-1"
									style="max-height: 11.5rem;" data-simplebar
									data-simplebar-auto-hide="false">
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="size-s">
											<label class="form-check-label widget-filter-item-text"
												for="size-s">S</label>
										</div>
										<span class="fs-xs text-muted">57</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="size-xl">
											<label class="form-check-label widget-filter-item-text"
												for="size-xl">XL</label>
										</div>
										<span class="fs-xs text-muted">46</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="size-39">
											<label class="form-check-label widget-filter-item-text"
												for="size-39">39</label>
										</div>
										<span class="fs-xs text-muted">112</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="size-40">
											<label class="form-check-label widget-filter-item-text"
												for="size-40">40</label>
										</div>
										<span class="fs-xs text-muted">85</span>
									</li>
								</ul>
							</div>
							<!-- widget -->
						</div>
						<!-- card-body -->
					</div>
					<!-- card -->
				</div>
				<!-- col-lg-6 -->

			</div>
			<!-- row-pt-4 -->
		</div>
		<!-- collapse -->
	</div>
	<!-- toolbar -->
</div>
<!--  필터 container -->
<!---------------------------------------------------------------------------------------------------->
<!-- 메인 -->
<div class="container pb-5 mb-2 mb-md-4">
	<div class="row justify-content-center">
		<!---------------------------------------------------------------------------------------------------->
		<!-- 왼쪽 약 목록 -->
		<section class="col-lg-5 pt-2;" data-simplebar
			data-simplebar-auto-hide="false">
			<div class="d-flex pb-3 justify-content-center">
				<h2 class="h3 text-center mb-3 me-3">검색 결과</h2>
			</div>
			<div class="widget widget-links widget-filter">
				<ul class="widget-list widget-filter-list pt-1"
					style="height: 55rem;" data-simplebar
					data-simplebar-auto-hide="false">
					<!-- 약 목록1 -->
					<% for(Drug drug : list){ %>
					<li class="widget-list-item widget-filter-item">
						<div class="card product-card product-list">
							<button class="btn-wishlist btn-sm" type="button"
								data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to wishlist">
								<i class=" ci-bookmark"></i>
							</button>
							<div class="d-sm-flex align-items-center">
								<a class="product-list-thumb" href="pharm_detail.html"> <img
									src="img\drug\tylenol.jpg" alt="Product">
								</a>
								<div class="card-body py-2">
									<a class="product-meta d-block fs-xs pb-1" href="#"><%= drug.getDrugName() %></a>
									<h3 class="product-title fs-base">
										<a href="#">타이레놀</a>
									</h3>
									<h5 class="product-title fs-base">
										<a href="#"><small>▶ 이 약은 감기로 인한
												발열 및 동통(통증), 두통, 신경통, 근육통, 월경통, 염좌통(삔 통증)과 치통, 류마티양 동통(통증)에
												사용합니다.</small></a>
									</h5>
								</div>
							</div>
						</div>
					</li>
					<% } %>
					<!-- 약 목록1 -->
					<li class="widget-list-item widget-filter-item">
						<div class="card product-card product-list">
							<button class="btn-wishlist btn-sm" type="button"
								data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to wishlist">
								<i class="ci-heart"></i>
							</button>
							<div class="d-sm-flex align-items-center">
								<a class="product-list-thumb" href="pharm_detail.html"> <img
									src="img\drug/doctorbearse.jpg" alt="Product">
								</a>
								<div class="card-body py-2">
									<a class="product-meta d-block fs-xs pb-1" href="#">(주)대웅제약</a>
									<h3 class="product-title fs-base">
										<a href="pharm_detail.html">닥터베아제</a>
									</h3>
									<h5 class="product-title fs-base">
										<a href="pharm_detail.html"><small>▶ ▶이 약은 소화불량,
												식욕감퇴(식욕부진), 과식, 체함, 소화촉진, 소화불량으로 인한 위부팽만감에 사용합니다.</small></a>
									</h5>
									<div class="d-flex justify-content-between">
										<div class="product-price">
											<span class="text-accent"><small>02-555-7790</small></span>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<!-- 약 목록1 -->
					<li class="widget-list-item widget-filter-item">
						<div class="card product-card product-list">
							<button class="btn-wishlist btn-sm" type="button"
								data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to wishlist">
								<i class="ci-heart"></i>
							</button>
							<div class="d-sm-flex align-items-center">
								<a class="product-list-thumb" href="pharm_detail.html"> <img
									src="img\drug/hupenjung.jpg" alt="Product">
								</a>
								<div class="card-body py-2">
									<a class="product-meta d-block fs-xs pb-1" href="#">(주)대웅제약</a>
									<h3 class="product-title fs-base">
										<a href="pharm_detail.html">휴펜정</a>
									</h3>
									<h5 class="product-title fs-base">
										<a href="pharm_detail.html"><small>▶ 이 약은 감기로 인한
												발열 및 통증, 치통과 두통, 신경통, 근육통, 월경통, 관절통, 류마티스성 통증에 사용합니다.</small></a>
									</h5>
									<div class="d-flex justify-content-between">
										<div class="product-price">
											<span class="text-accent"><small>02-555-7790</small></span>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<!-- 약 목록1 -->
					<li class="widget-list-item widget-filter-item">
						<div class="card product-card product-list">
							<button class="btn-wishlist btn-sm" type="button"
								data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to wishlist">
								<i class="ci-heart"></i>
							</button>
							<div class="d-sm-flex align-items-center">
								<a class="product-list-thumb" href="pharm_detail.html"> <img
									src="img\drug\tylenol.jpg" alt="Product">
								</a>
								<div class="card-body py-2">
									<a class="product-meta d-block fs-xs pb-1" href="#">(주)대웅제약</a>
									<h3 class="product-title fs-base">
										<a href="pharm_detail.html">타이레놀</a>
									</h3>
									<h5 class="product-title fs-base">
										<a href="pharm_detail.html"><small>▶이 약은 감기로 인한 발열
												및 동통(통증), 두통, 신경통, 근육통, 월경통, 염좌통(삔 통증)과 치통, 류마티양 동통(통증)에
												사용합니다.</small></a>
									</h5>
									<div class="d-flex justify-content-between">
										<div class="product-price">
											<span class="text-accent"><small>02-555-7790</small></span>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<!-- 약 목록1 -->
					<li class="widget-list-item widget-filter-item">
						<div class="card product-card product-list">
							<button class="btn-wishlist btn-sm" type="button"
								data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to wishlist">
								<i class="ci-heart"></i>
							</button>
							<div class="d-sm-flex align-items-center">
								<a class="product-list-thumb" href="pharm_detail.html"> <img
									src="img\drug/hupenjung.jpg" alt="Product">
								</a>
								<div class="card-body py-2">
									<a class="product-meta d-block fs-xs pb-1" href="#">(주)대웅제약</a>
									<h3 class="product-title fs-base">
										<a href="pharm_detail.html">휴펜정</a>
									</h3>
									<h5 class="product-title fs-base">
										<a href="pharm_detail.html"><small>▶ 이 약은 감기로 인한
												발열 및 통증, 치통과 두통, 신경통, 근육통, 월경통, 관절통, 류마티스성 통증에 사용합니다.</small></a>
									</h5>
									<div class="d-flex justify-content-between">
										<div class="product-price">
											<span class="text-accent"><small>02-555-7790</small></span>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<!-- 약 목록1 -->
					<li class="widget-list-item widget-filter-item">
						<div class="card product-card product-list">
							<button class="btn-wishlist btn-sm" type="button"
								data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to wishlist">
								<i class="ci-heart"></i>
							</button>
							<div class="d-sm-flex align-items-center">
								<a class="product-list-thumb" href="pharm_detail.html"> <img
									src="img\drug\tylenol.jpg" alt="Product">
								</a>
								<div class="card-body py-2">
									<a class="product-meta d-block fs-xs pb-1" href="#">(주)대웅제약</a>
									<h3 class="product-title fs-base">
										<a href="pharm_detail.html">타이레놀</a>
									</h3>
									<h5 class="product-title fs-base">
										<a href="pharm_detail.html"><small>▶이 약은 감기로 인한 발열
												및 동통(통증), 두통, 신경통, 근육통, 월경통, 염좌통(삔 통증)과 치통, 류마티양 동통(통증)에
												사용합니다.</small></a>
									</h5>
									<div class="d-flex justify-content-between">
										<div class="product-price">
											<span class="text-accent"><small>02-555-7790</small></span>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>

					<!-- 약 목록1 -->
					<li class="widget-list-item widget-filter-item">
						<div class="card product-card product-list">
							<button class="btn-wishlist btn-sm" type="button"
								data-bs-toggle="tooltip" data-bs-placement="left"
								title="Add to wishlist">
								<i class="ci-heart"></i>
							</button>
							<div class="d-sm-flex align-items-center">
								<a class="product-list-thumb" href="pharm_detail.html"> <img
									src="img\drug\tylenol.jpg" alt="Product">
								</a>
								<div class="card-body py-2">
									<a class="product-meta d-block fs-xs pb-1" href="#">(주)대웅제약</a>
									<h3 class="product-title fs-base">
										<a href="pharm_detail.html">타이레놀</a>
									</h3>
									<h5 class="product-title fs-base">
										<a href="pharm_detail.html"><small>▶이 약은 감기로 인한 발열
												및 동통(통증), 두통, 신경통, 근육통, 월경통, 염좌통(삔 통증)과 치통, 류마티양 동통(통증)에
												사용합니다.</small></a>
									</h5>
									<div class="d-flex justify-content-between">
										<div class="product-price">
											<span class="text-accent"><small>02-555-7790</small></span>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star-filled active"></i> <i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- widget -->
			<!-- 회색 구분선 -->
			<div class="border-top pt-3 mt-3"></div>
		</section>
		<!-- 왼쪽 약 목록 -->
		<!---------------------------------------------------------------------------------------------------->
		<!--  오른쪽 상세페이지 -->
		<section class="col-lg-5 d-none d-lg-block px-4 px-xl-4 border-tp">
			<!-- 약 이름 -->
			<div class="d-flex pb-3 justify-content-center">
				<h2 class="h3 text-center mb-3 me-3">닥터베아제정</h2>
				<i class=" ci-bookmark fs-xl mt-1 mb-0 text-orange"></i>
			</div>
			<!-- 스크롤바 -->
			<div style="height: 70rem;" data-simplebar
				data-simplebar-auto-hide="false">
				<!-- 약 사진 & 설명 -->
				<div class="row pt-4">
					<div class="col-md-12 col-sm-12 mb-grid-gutter">
						<div class="card border-0 shadow">
							<img class="card-img-top" src="img/drug/doctorbearse.jpg"
								alt="닥터베아제정">
							<div class="card-body">
								<h6 class="col-lg-12">건위소화제</h6>
								<ul class="list-unstyled mb-0">
									<li class="d-flex pb-3 border-bottom"><i
										class="ci-briefcase fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">회사</span> <a
												class="d-block text-heading fs-sm"
												href="https://www.daewoong.co.kr/">(주)대웅제약</a>
										</div></li>
									<li class="d-flex pt-2 pb-3"><i
										class="ci-document fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">효능</span> <a
												class="d-block text-heading fs-sm">이 약은 소화불량,
												식욕감퇴(식욕부진), 과식, 체함, 소화촉진, 소화불량으로 인한 위부팽만감에 사용합니다.</a>
										</div></li>
									<li class="d-flex pt-2 pb-3"><i
										class="ci-document fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">복용방법</span> <a
												class="d-block text-heading fs-sm">성인 1회 1정을 1일 3회 식후에
												복용합니다.</a>
										</div></li>
									<li class="d-flex pt-2 pb-3 border-bottom"><i
										class="ci-document fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">보관법</span> <a
												class="d-block text-heading fs-sm">습기와 빛을 피해 실온에서
												보관하십시오. 어린이의 손이 닿지 않는 곳에 보관하싶시오.</a>
										</div></li>
									<li class="d-flex pb-3"><i
										class="ci-edit fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">주의사항</span> <a
												class="d-block text-heading fs-sm" href="#">만 7세 이하의 소아는
												이 약을 복용하지 마십시오. 이 약을 복용하기 전에 알레르기 체질인 사람, 임부 또는 임신하고 있을 가능성이
												있는 여성, 이 약 또는 황색4호에 과민증 환자는 의사 또는 약사와 상담하싶시오. 정해진 용법과 용량을 잘
												지키십시오. 2주 정도 복용하여도 증상의 개선이 없을 경우 즉각 복용을 중지하고 의사 또는 약사와
												상답하십시오. </a>
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
		</section>
		<!-- 오른쪽 상세페이지 -->
	</div>
	<!-- row -->
</div>
<!-- 약 목록과 상세정보 container-->

<%@ include file="/views/footer.jsp"%>