<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/header.jsp"%>

	<%@	page import="carrot.vo.SearchPham"%>
	<%@ page import="java.util.*"%>


	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript"></script>
	<script type="<%=request.getContextPath()%>/views/js/mapUI.js"></script>


	<%
	ArrayList<SearchPham> pham = new ArrayList<SearchPham>();
	pham = (ArrayList<SearchPham>)request.getAttribute("pham");
	%>

	<!-- used for shop templates with filters on top-->
	<div class="bg-orange pt-4 pb-5 shadow-sm">
		<div class="container pt-2 pb-3 pt-lg-3 pb-lg-4">
			<div class="d-lg-flex justify-content-between pb-3">
				<div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
					<nav aria-label="breadcrumb">
						<ol
							class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
							<li class="breadcrumb-item"><a class="text-nowrap"
								href="<%=request.getContextPath() %>/views/index.jsp"><i class="ci-home"></i>Home</a></li>
							<li class="breadcrumb-item text-nowrap active"
								aria-current="page">약국검색</li>
						</ol>
					</nav>
				</div>
				<div class="order-lg-1 pe-lg-4 text-center text-lg-start">
					<h1 class="h3  text-light fw-bolder mb-0">약국 검색</h1>
				</div>
			</div>
<form action="<%=request.getContextPath()%>/searchPham.do" method="get">
				<div class="row mt-4 mb-n2">
					<div class="col-lg-6 col-md-8">
						<div class="input-group input-group-lg flex-nowrap shadow-sm">
							<i
								class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
							<input class="form-control rounded-start" type="text" name="name"
								placeholder="약국명 또는 지역을 입력하세요.">
							<button
								class="btn btn-warning2 btn-lg fs-base home_search_btn btn-shadow text-white"
								type="submit">검색</button>
						</div>
					</div>
				</div>
		</div>
	</div>
	<!---------------------------------------------------------------------------------------------------->
	<!-- 필터 -->
	<div class="container pb-3 md-4">
		<!-- Toolbar-->
		<div class="bg-light shadow-lg rounded-3 p-4 mt-n5 ">
			<div class="d-flex justify-content-between align-items-center">
				<div class="dropdown me-2">
					<a class="btn btn-warning2 dropdown-toggle" href="#pharm-filters"
						data-bs-toggle="collapse"> <i class="ci-filter me-2"></i>Filters
					</a>
				</div>
				<div class="d-none d-sm-flex">
					<%if(pham == null || pham.isEmpty()) {%>
					<h6>검색 결과 전체 0곳</h6>
					<%}else{ %>
					<h6>
						검색 결과 전체
						<%=pham.size()%>곳
					</h6>
					<%} %>
				</div>
			</div>

			<!-- Toolbar with expandable filters-->
			<div class="container" id="pharm-filters">
				<div class="row pt-4">
					<div class="col-lg-6 col-sm-6">
						<!-- 지역구-->
						<div class="card mb-grid-gutter">
							<div class="card-body px-4" style="height: 15em">
								<div class="widget widget-filter">
									<h2 class="widget-title">지역구</h2>
									<div class="accordion mt-n1" id="pharm-categories">
										<!-- select 시작 -->
										<div class="d-flex align-items-center m-2 mb-3">
											<select class="form-select" id="order-sort" name="gu">
												<option>지역구 선택</option>
												<option>강남구</option>
												<option>강동구</option>
												<option>강북구</option>
												<option>강서구</option>
												<option>관악구</option>
												<option>광진구</option>
												<option>구로구</option>
												<option>금천구</option>
												<option>노원구</option>
												<option>도봉구</option>
												<option>동대문구</option>
												<option>동작구</option>
												<option>마포구</option>
												<option>서대문구</option>
												<option>서초구</option>
												<option>성동구</option>
												<option>성북구</option>
												<option>송파구</option>
												<option>양천구</option>
												<option>영등포구</option>
												<option>용산구</option>
												<option>은평구</option>
												<option>종로구</option>
												<option>중구강</option>
												<option>중랑구</option>
											</select>
</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-sm-6">
						<!-- 요일-->
						<div class="card mb-grid-gutter">
							<div class="card-body px-4" style="height: 15em">
								<div class="widget widget-filter"  >
									<h3 class="widget-title">요일</h3>
									<div class="input-group input-group-sm mb-2">
										<input
											class="widget-filter-search form-control rounded-end pe-5"
											type="text" placeholder="Search"> <i
											class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
									</div>
									<ul class="widget-list widget-filter-list list-unstyled pt-1"
										style="max-height: 7rem;" data-simplebar
										data-simplebar-auto-hide="false">
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">월요일</label>
											</div>
										</li>
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">화요일</label>
											</div>
										</li>
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">수요일</label>
											</div>
										</li>
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">목요일</label>
											</div>
										</li>
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">금요일</label>
											</div>
										</li>
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">토요일</label>
											</div>
										</li>
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">일요일</label>
											</div>
										</li>
										<li
											class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													id="dayoftheweek"> <label
													class="form-check-label widget-filter-item-text"
													for="dayoftheweek">공휴일</label>
											</div>
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

	<div class="container mt-5 mb-5 md-4">
		<div class="row justify-content-center">
			<!-- 왼쪽 약국 검색 결과 -->
			<div class="d-flex pb-3 justify-content-center">
				<h2 class="h2 fw-bold text-center mb-4 me-3 ">검색 결과</h2>
			</div>
			<section class="col-lg-5" style="height: 600px;" data-simplebar data-simplebar-auto-hide="false">
				<!-- Product-->
				<div class="widget widget-links widget-filter" >
					<%if(pham ==null || pham.isEmpty()) {%>
						<h6 class="h6 text-left mb-4 me-3 ">조회된 게시글이 없습니다.</h6>
						<h6 class="h6 text-left mb-4 me-3 ">원하시는 약국을 검색해주세요.</h6>
					<%}else{ %>
						<%for(SearchPham phams : pham){ %>
						<div class="card product-card product-list mb-4">
							<button class="btn-wishlist btn-sm m-2" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="북마크에 추가"> <i class="ci-bookmark"></i></button>
							<div class="d-sm-flex align-items-center">
								<% String path = request.getContextPath()+ "/search/phamDetail?phamNo="+ phams.getPham_no(); %>
								<div class="card-body py-3 w-50 bg-beige">
									<h4 class=" d-block fs-xs pb-1" ><%= phams.getLocation_gu() %></h4>
									<h3 class="product-title fs-lg fw-bold"><a href="<%=path%>"><%= phams.getPham_name() %></a></h3>
									<h5 class="product-title fs-base"><a class="product-meta d-block fs-xs pb-1" id="getLocation<%=phams.getPham_no()%>"><%= phams.getLocation_address() %></a></h5>
									<div class="d-flex justify-content-between ">
										<div class="product-price "> 
											<span class="text-accent"><small><%= phams.getPham_tell() %></small></span>
										</div>
									</div>
									<script>
			                            $("#getLocation<%=phams.getPham_no()%>").click(function() {
			                                var phamNo = '<%=phams.getPham_no()%>';
			                                $.ajax({
			                                    type: "get",
			                                    url: "searchLocation.do",
			                                    cache: false,
			                                    data: {
			                                        "phamNo": phamNo
			                                    },
			                                    dataType: "json",
			                                    success: function(object) {
			                                        var a = object.lat;
			                                        var b = object.lon;
			                                        var pahrmLatLng = new google.maps.LatLng(a, b);
			                                        var map = new google.maps.Map(document.getElementById("googleMap"), {
			                                            zoom: 15,
			                                            center: pahrmLatLng,
			                                        });
			                                        var marker = new google.maps.Marker({
			                                            position: pahrmLatLng,
			                                            map: map
			                                        });
			                                    },
			                                    error: function(e) {
			                                        alert("전송실패");
			                                        console.log(e);
			                                    },
			                                });
			                           });
			                         </script>
								</div>
							</div>
						</div>
						<%} %>
					<%} %>
				</div>
			</section>
			<aside class="col-lg-5 d-none d-lg-block">
				<div class="d-flex d-lg-block p-1 ms-auto w-100">
					<div class="position-relative bg-size-cover bg-position-center rounded-3 mb-grid-gutter">
						<div class="iframe-full-height-wrap" style="width: 500px; height: 600px;" id="googleMap"></div>
						<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAj4C5WATz3WZ5Rp8SRONI7VgimemfYK5k&callback=Map"></script>
					</div>
				</div>
			</aside>
		</div>
	</div>


<%@ include file="/views/footer.jsp"%>
