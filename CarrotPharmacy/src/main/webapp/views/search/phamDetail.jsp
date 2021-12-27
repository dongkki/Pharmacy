<%@page import="java.util.List"%>
<%@page import="carrot.vo.QnA"%>
<%@page import="carrot.vo.SearchPham"%>
<%@page import="carrot.vo.Pharmacy"%>
<%@page import="carrot.vo.Review"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/header.jsp"%>

<%
SearchPham pham = (SearchPham) request.getAttribute("phamDetail");
ArrayList<Review> review = (ArrayList<Review>) request.getAttribute("review");
List<QnA> notice = (List<QnA>) request.getAttribute("notice");
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
							href="<%=request.getContextPath() %>/views/main.jsp"><i class="ci-home"></i>Home</a></li>
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
<div class="container col-8 " id="map">
	<div class="row g-0 d-flex align-items-center">
		<!-- 약국정보 -->
		<div class="col-lg-6 px-4 py-5 border-top d-flex align-items-center">
			<div class="row pt-4">
				<h2 class="h2 text-center fw-bold mb-4"><%=pham.getPham_name()%></h2>
				<div class="col-md-12 col-sm-12 mb-grid-gutter">
					<div class="card border-0 shadow">
						<div class="card-body">
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
									<div class="mt-sm-n4-5 ps-0 mx-4">
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

		<div class="iframe-full-height-wrap" style="width: 500px; height: 400px;" id="googleMap"></div>
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
         <form action="<%=request.getContextPath() %>/views/search/pharmNotice.jsp">
	         <h3 class="fw-bold ms-4">공지사항<button type="submit" class="ci-edit-alt opacity-70 ms-3" id="img_btn"></button></h3>
	         <div style="border:5px #33FF66 solid;display:none;" ><input type="text" name= "phamNo12" value="<%=pham.getPham_no()%>"></div>
         </form>
         <div class="table-responsive px-4 mt-4 offcanvas-body" style="overflow : scroll; height: 20rem;">
             <table class="table table-bordered table-layout-fixed fs-sm" style="min-width: 20rem;">
                 <tbody id="summary" data-filter-target>
                     <tr class="bg-secondary">
                         <th class="text-uppercase text-dark d-flex justify-content-center">번호</th>
                         <td colspan="6"><span class="text-dark fw-medium text-dark d-flex justify-content-center">제목</span></td>
                     </tr>
							<% int num = 1;%>
                           <%if(notice == null|| notice.isEmpty()) {%>
						<tr>
                         <td colspan="7"><div class="d-block" href="#quick-view" data-bs-toggle="modal" style="text-align: center;">공지사항이 없습니다</div></td>
                     </tr>
						<%}else{ %>
						<%for(QnA qna : notice) {%>
                     <tr>
                         <th class="text-dark d-flex justify-content-center"><%= num++ %></th>
                         <td colspan="6"><a class="d-block" href="#quick-view" data-bs-toggle="modal"><%=qna.getQ_title() %></a></td>
                     </tr>
                     <%} %>
                     <%} %>
                 </tbody>
             </table>
         </div>
     </div> <!-- container -->
	<div class="border-top border-bottom my-lg-3 py-5">
	    <div class="container pt-md-2" id="reviews">
	    	<div class="row pb-3">
			    <div class="col-lg-4 col-md-5">
			      <h2 class="h3 mb-4"><%=review.size() %>개의 리뷰</h2>
				</div>
			</div>
	        <hr class="mt-4 mb-3">
	        <div class="row pt-4">
          		<!-- Reviews list-->
	            <div class="col-md-7">
	                <div class="d-flex justify-content-end pb-4">
	                    <div class="d-flex align-items-center flex-nowrap">
	                        <!-- <label class="fs-sm text-muted text-nowrap me-2 d-none d-sm-block" for="sort-reviews">Sort by:</label> -->
	                    </div>
	                </div>
                
                <!-- Review-->
                <%if(review == null|| review.isEmpty()) {%>
						<tr>
							<th colspan="7" style="text-align: center; font-weight: 700;"><h5>리뷰가
									없습니다.</h5></th>
						</tr>
						<%}else{ %>
						<%for(Review rw : review) {%>
                <div class="product-review pb-4 mb-4 border-bottom">
                    <div class="d-flex mb-4">
                        <div class="d-flex align-items-center me-4 pe-2"><%= rw.getRe_id() %>
                            <div class="ps-3">
                               <span class="fs-ms text-muted"><%= rw.getCreate_date()%></span>
                            </div>
                        </div>
                        <div>
                        </div>
                    </div>
                    <p class="fs-md mb-2"><%=rw.getRe_contents() %></p>
                    <div class="text-nowrap pt-2">
                        <% String path = request.getContextPath()+ "/board/delete?reNum="+ rw.getRe_num() + "&phamNo=" + pham.getPham_no(); %>
							<a href="<%=path%>">삭제</a>
                    </div>
                </div>
				<%} %>
				<%} %>
                <div class="text-center">
                    <button class="btn btn-outline-secondary" type="button"><i class="ci-reload me-2"></i>리뷰 더보기</button>
                </div>
            </div>
            <!-- col -->
            <!-- 리뷰쓰기 -->
            <div class="col-md-5 mt-2 pt-4 mt-md-0 pt-md-0">
                <div class="bg-secondary py-grid-gutter px-grid-gutter rounded-3">
                    <h3 class="h4 pb-2">리뷰쓰기</h3>
                    <% String path = request.getContextPath() + "/board/insert"; %>
                    <form class="needs-validation" action="<%=path %>" method="get">
                        <div class="mb-3">
                            <label class="form-label" for="review-name">이름<span class="text-danger">*</span></label>
                            <input class="form-control" type="text" required id="review-name" name="name">
                            <div class="invalid-feedback">이름을 작성하세요!</div><small class="form-text text-muted"></small>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="review-text">리뷰<span class="text-danger">*</span></label>
                            <textarea class="form-control" rows="4" required id="review-text" name="content"></textarea>
                            <div class="invalid-feedback">리뷰를 작성하세요!</div><small class="form-text text-muted">리뷰는 10자 이상이어야 합니다.</small>
                        </div>
                   		<div style="border:5px #33FF66 solid;display:none;" ><input type="text" name= "phamNo" value="<%=pham.getPham_no()%>"></div>
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