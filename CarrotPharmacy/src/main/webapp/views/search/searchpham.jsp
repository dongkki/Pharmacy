<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/header.jsp"%>
<%@page import="carrot.vo.SearchPham"%>
<%@ page import="java.util.*"%>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript"><%@ include file="/views/js/mapUI.js"%></script>
	<%
	ArrayList<SearchPham> pham = new ArrayList<SearchPham>();
	pham = (ArrayList<SearchPham>)request.getAttribute("pham");
	%>


<!-- used for shop templates with filters on top-->
<div class="bg-orange pt-4 pb-5">
	<div class="container pt-2 pb-3 pt-lg-3 pb-lg-4">
		<div class="d-lg-flex justify-content-between pb-3">
			<div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
						<li class="breadcrumb-item"><a class="text-nowrap"
							href="index.html"><i class="ci-home"></i>Home</a></li>
						<li class="breadcrumb-item text-nowrap active" aria-current="page">약국검색</li>
					</ol>
				</nav>
			</div>
			<div class="order-lg-1  pe-lg-4 text-center text-lg-start">
				<h1 class="h3  text-light fw-bolder mb-0">약국 검색</h1>
			</div>
		</div>
		<form action="<%=request.getContextPath()%>/searchPham.do" method="get">
			<div class="row mt-4 mb-n2">
				<div class="col-lg-6 col-md-8">
					<div class="input-group input-group-lg flex-nowrap">
						<i
							class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
						<input class="form-control rounded-start" type="text" name="name" placeholder="약국명 또는 지역을 입력하세요."> 
						<input class="form-control rounded-start" type="text" name="gu" placeholder="약국명 또는 지역을 입력하세요.">
						<button class="btn btn-primary btn-lg fs-base home_search_btn"
							type="submit">검색</button>
					</div>
				</div>
			</div>
		</form>
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
				<%if(pham ==null || pham.isEmpty()) {%>
				<h6>검색 결과 전체 0곳</h6>
				<%}else{ %>
				<h6>검색 결과 전체 <%=pham.size()%>곳</h6>
				<%} %>
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
								<h2 class="widget-title">카테고리</h2>
								<div class="accordion mt-n1" id="pahrm-categories">
									<!-- 지역구-->
									<div class="accordion-item">
										<h3 class="accordion-header">
											<a class="accordion-button collapsed" href="#location"
												role="button" data-bs-toggle="collapse"
												aria-expanded="false">지역구</a>
										</h3>
										<div class="accordion-collapse collapse" id="location"
											data-bs-parent="#pahrm-categories">
											<div class="accordion-body">
												<div class="widget widget-links widget-filter">
													<div class="input-group input-group-sm mb-2">
														<input
															class="widget-filter-search form-control rounded-end"
															type="text" placeholder="Search"><i
															class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
													</div>
													<ul class="widget-list widget-filter-list pt-1"
														style="height: 8rem;" data-simplebar
														data-simplebar-auto-hide="false">
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">강남구</span>
																<span class="fs-xs text-muted ms-3">436</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">강동구</span>
																<span class="fs-xs text-muted ms-3">236</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">강북구</span>
																<span class="fs-xs text-muted ms-3">167</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">강서구</span>
																<span class="fs-xs text-muted ms-3">256</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">관악구</span>
																<span class="fs-xs text-muted ms-3">212</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">광진구</span>
																<span class="fs-xs text-muted ms-3">165</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">구로구</span>
																<span class="fs-xs text-muted ms-3">175</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">금천구</span>
																<span class="fs-xs text-muted ms-3">120</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">노원구</span>
																<span class="fs-xs text-muted ms-3">214</span>
														</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>

									<!-- 시간-->
									<div class="accordion-item">
										<h3 class="accordion-header">
											<a class="accordion-button collapsed" href="#time"
												role="button" data-bs-toggle="collapse"
												aria-expanded="false">시간</a>
										</h3>
										<div class="accordion-collapse collapse" id="time"
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
														style="height: 8rem;" data-simplebar
														data-simplebar-auto-hide="false">
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">24시간</span>
																<span class="fs-xs text-muted ms-3">24시간 약국 갯수</span>
														</a></li>
														<li class="widget-list-item widget-filter-item"><a
															class="widget-list-link d-flex justify-content-between align-items-center"
															href="#"> <span class="widget-filter-item-text">야간</span>
																<span class="fs-xs text-muted ms-3">야간 약국 갯수</span>
														</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6">
					<!-- 요일-->
					<div class="card mb-grid-gutter">
						<div class="card-body px-4">
							<div class="widget widget-filter">
								<h3 class="widget-title">요일</h3>
								<div class="input-group input-group-sm mb-2">
									<input
										class="widget-filter-search form-control rounded-end pe-5"
										type="text" placeholder="Search"><i
										class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
								</div>
								<ul class="widget-list widget-filter-list list-unstyled pt-1"
									style="max-height: 8rem;" data-simplebar
									data-simplebar-auto-hide="false">
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">월요일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">화요일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">수요일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">목요일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">금요일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">토요일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">일요일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
									<li
										class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="dayoftheweek"> <label
												class="form-check-label widget-filter-item-text"
												for="dayoftheweek">공휴일</label>
										</div>
										<span class="fs-xs text-muted">777</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="container pb-5 mb-2 mb-md-4">
		<div class="row justify-content-center">
			<div class="col-lg-1"></div>
			<!-- Products list-->
			 <section class="col-lg-5 pt-2 offcanvas-body" style="overflow-y: scroll; height: 35rem; width:500px;">
				<!-- Product-->
				<%if(pham ==null || pham.isEmpty()) {%>
					<div class="card product-card product-list"><span class="badge bg-info badge-shadow"></span>
					
				<%}else{ %>	
					<%for(SearchPham phams : pham){ %>
					<div class="card product-card product-list"><span class="badge bg-info badge-shadow"><small>영업중</small></span>
					<button class="btn-wishlist btn-sm" type="button"
						data-bs-toggle="tooltip" data-bs-placement="left"
						title="Add to wishlist">
						<i class="ci-bookmark"></i>
					</button>
					<div class="d-sm-flex align-items-center">
						<a class="product-list-thumb" href="pharm_detail.html"><img
							src="img\mypage\강남제일약국.jpg" alt="Product"></a>
						<div class="card-body py-2">
							<a class="product-meta d-block fs-xs pb-1" href="#"><%= phams.getLocation_gu() %></a>
							<h3 class="product-title fs-base">
								<a href="pharm_detail.html"><%= phams.getPham_name() %></a>
							</h3>
							<h5 class="product-title fs-base">
								<a href="pharm_detail.html"><small><%= phams.getLocation_address() %></small></a>
							</h5>
							<div class="d-flex justify-content-between">
								<div class="product-price">
									<span class="text-accent"><small><%= phams.getPham_tell() %></small></span>
								</div>
								
								<div class="star-rating">
										<button id="getLocation<%=phams.getPham_no()%>">위치보기</button>
										
								<script>
								$("#getLocation<%=phams.getPham_no()%>").click(function(){
									var phamNo = <%=phams.getPham_no()%>;
									$.ajax({
										type : "get",
										url :"searchLocation.do",
										data : {
											"phamNo" : phamNo
											},
										dataType : "json",
										success : function (object) {
											var a = object.lat;
											var b = object.lon; 
										    var pahrmLatLng = new google.maps.LatLng(b,a);
										    var map = new google.maps.Map(document.getElementById("googleMap"), {
										        zoom: 15,
										        center: pahrmLatLng,
										    });
										    var marker = new google.maps.Marker({
										        position: pahrmLatLng,
										        map : map
										    });
										},
										error : function (e) {
											console.log(e);
										},
									});
								});
								</script>
								</div>
							</div>
						</div>
					</div>
					<%} %>
				<%} %>	
				</div>
				<div class="border-top pt-3 mt-3"></div>
			</section>
			<!-- Map -->
			<aside class="col-lg-5 d-none d-lg-block">
				<div class="d-flex d-lg-block p-1 ms-auto w-100">
					<div class="position-relative bg-size-cover bg-position-center rounded-3 py-5 mb-grid-gutter">
						<div class="iframe-full-height-wrap" style =" width : 500px; height : 500px; background-color : black;" id ="googleMap" >
						<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAj4C5WATz3WZ5Rp8SRONI7VgimemfYK5k&callback=Map"></script>
						</div>
					</div>
				</div>
			</aside>
			<div class="col-lg-1"></div>
		</div>
	</div>

	<%@ include file="/views/footer.jsp"%>