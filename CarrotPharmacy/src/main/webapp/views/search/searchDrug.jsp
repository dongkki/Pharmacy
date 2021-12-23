<%@page import="java.util.ArrayList"%>
<%@page import="carrot.vo.Drug"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/views/header.jsp"%>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"></script>
<script type="<%=request.getContextPath()%>/views/js/mapUI.js"></script>

<%
	List<Drug> list = new ArrayList<Drug>();
	list = (List<Drug>)request.getAttribute("list");
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
						<li class="breadcrumb-item text-nowrap active" aria-current="page">의약품 검색</li>
					</ol>
				</nav>
			</div>
			<div class="order-lg-1 pe-lg-4 text-center text-lg-start">
				<h1 class="h3 fw-bold text-light mb-0">의약품 검색</h1>
			</div>

		</div>
		<!-- 검색바 -->
		<form action="<%=request.getContextPath()%>/views/search/searchDrug.do" method="get">
			<div class="row mt-4 mb-n2">
				<div class="col-lg-6 col-md-8">
					<div class="input-group input-group-lg flex-nowrap">
						<i class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
							<input class="form-control rounded-start" name="name" type="text" placeholder="의약품명 입력하세요.">
						<button class="btn btn-primary btn-lg fs-base home_search_btn" type="submit">검색</button>
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
                        <a class="btn btn-outline-secondary dropdown-toggle" href="#shop-filters" data-bs-toggle="collapse">
                            <i class="ci-filter me-2"></i>Filters</a>
                    </div>
                    <div class="d-none d-sm-flex">
                        <% if(list == null || list.isEmpty()){ %>
                            <h6>검색 결과 전체 0개</h6>
                        <% } else { %>
                            <h6>검색 결과 전체
                            <%= list.size() %> 개</h6>
                        <% } %>

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
                                        <div class="accordion mt-n1" id="manu-categories">
                                            <!-- 제조사-->
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button" href="#manu" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="manu">제조사</a></h3>
                                                <div class="accordion-collapse collapse show" id="manu" data-bs-parent="#manu-categories">
                                                    <div class="accordion-body">
                                                        <div class="widget widget-links widget-filter">
                                                            <div class="input-group input-group-sm mb-2">
                                                                <input class="widget-filter-search form-control rounded-end" type="text" placeholder="Search"><i class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>

                                                            </div>
                                                            <ul class="widget-list widget-filter-list pt-1" style="max-height: 11.5rem;" data-simplebar data-simplebar-auto-hide="false">
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=경남제약"><span class="widget-filter-item-text">경남제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=고려제약"><span class="widget-filter-item-text">고려제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=그린제약"><span class="widget-filter-item-text">그린제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=글락소스미스클라인컨슈머헬스케어코리아"><span class="widget-filter-item-text">글락소스미스클라인컨슈머헬스케어코리아</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=대원제약"><span class="widget-filter-item-text">대원제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=동성제약"><span class="widget-filter-item-text">동성제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=동아제약"><span class="widget-filter-item-text">동아제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=디에이치피코리아"><span class="widget-filter-item-text">디에이치피코리아</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=라이트팜텍"><span class="widget-filter-item-text">라이트팜텍</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=레오파마"><span class="widget-filter-item-text">레오파마</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=미래제약"><span class="widget-filter-item-text">미래제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=바이엘코리아"><span class="widget-filter-item-text">바이엘코리아</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=베키오바이오젠"><span class="widget-filter-item-text">베키오바이오젠</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=비브라운코리아"><span class="widget-filter-item-text">비브라운코리아</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=삼남제약"><span class="widget-filter-item-text">삼남제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=서울제약"><span class="widget-filter-item-text">서울제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=서흥"><span class="widget-filter-item-text">서흥</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=신일제약"><span class="widget-filter-item-text">신일제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=아이월드제약"><span class="widget-filter-item-text">아이월드제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=아이큐어"><span class="widget-filter-item-text">아이큐어</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=안국뉴팜"><span class="widget-filter-item-text">안국뉴팜</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=알리코제약"><span class="widget-filter-item-text">알리코제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=에이치엘비제약"><span class="widget-filter-item-text">에이치엘비제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=영일제약"><span class="widget-filter-item-text">영일제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=영풍제약"><span class="widget-filter-item-text">영풍제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=오스틴제약"><span class="widget-filter-item-text">오스틴제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=오현파마코푸레이션 "><span class="widget-filter-item-text">오현파마코푸레이션 </span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=유앤생명과학"><span class="widget-filter-item-text">유앤생명과학</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=지엘파마"><span class="widget-filter-item-text">지엘파마</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=케이엠에스제약"><span class="widget-filter-item-text">케이엠에스제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=코오롱제약"><span class="widget-filter-item-text">코오롱제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=태준제약"><span class="widget-filter-item-text">태준제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=티디에스팜"><span class="widget-filter-item-text">티디에스팜</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=풍림무약"><span class="widget-filter-item-text">풍림무약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=하나제약"><span class="widget-filter-item-text">하나제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국다케다제약"><span class="widget-filter-item-text">한국다케다제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국애보트"><span class="widget-filter-item-text">한국애보트</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국엘러간"><span class="widget-filter-item-text">한국엘러간</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국유니온제약"><span class="widget-filter-item-text">한국유니온제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국유씨비제약"><span class="widget-filter-item-text">한국유씨비제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국코러스"><span class="widget-filter-item-text">한국코러스</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국파마"><span class="widget-filter-item-text">한국파마</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국팜비오"><span class="widget-filter-item-text">한국팜비오</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국화이자제약"><span class="widget-filter-item-text">한국화이자제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한국휴텍스제약"><span class="widget-filter-item-text">한국휴텍스제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=한독"><span class="widget-filter-item-text">한독</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=화일약품"><span class="widget-filter-item-text">화일약품</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=환인제약"><span class="widget-filter-item-text">환인제약</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=휴메딕스"><span class="widget-filter-item-text">휴메딕스</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchManu.do?manu=휴비스트제약"><span class="widget-filter-item-text">휴비스트제약</span></a></li>


															</ul> 
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
                                <!-- card body-->
                            </div>
                            <!-- card 끝 -->
                        </div>
                        <!-- col-lg-6 -->
                        <div class="col-lg-6 col-sm-6">
                            <div class="card mb-grid-gutter">
                                <div class="card-body px-4">
                                    <!-- widget -->
                                    <div class="widget widget-categories">
                                        <div class="accordion mt-n1" id="effect-categories">
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button" href="#effect" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="effect">효능, 효과</a></h3>
                                                <div class="accordion-collapse collapse show" id="effect" data-bs-parent="#effect-categories">
                                                    <div class="accordion-body">
                                                        <div class="widget widget-links widget-filter">
                                                            <div class="input-group input-group-sm mb-2">
                                                                <input class="widget-filter-search form-control rounded-end" type="text" placeholder="Search"><i class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
                                                            </div>
															<ul class="widget-list widget-filter-list pt-1" style="max-height: 11.5rem;" data-simplebar data-simplebar-auto-hide="false">
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=가려움"><span class="widget-filter-item-text">가려움</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=간기능장애"><span class="widget-filter-item-text">간기능장애</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=간질환"><span class="widget-filter-item-text">간질환</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=감기"><span class="widget-filter-item-text">감기</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=갱년기"><span class="widget-filter-item-text">갱년기</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=결막염"><span class="widget-filter-item-text">결막염</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=골관절염"><span class="widget-filter-item-text">골관절염</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=과민성대장증후군"><span class="widget-filter-item-text">과민성대장증후군</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=관절염"><span class="widget-filter-item-text">관절염</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=구강"><span class="widget-filter-item-text">구강</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=구취"><span class="widget-filter-item-text">구취</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=구토"><span class="widget-filter-item-text">구토</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=궤양"><span class="widget-filter-item-text">궤양</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=근육통"><span class="widget-filter-item-text">근육통</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=담석"><span class="widget-filter-item-text">담석</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=두드러기"><span class="widget-filter-item-text">두드러기</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=만성정맥부전"><span class="widget-filter-item-text">만성정맥부전</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=만성피로"><span class="widget-filter-item-text">만성피로</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=멀미"><span class="widget-filter-item-text">멀미</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=멀미"><span class="widget-filter-item-text">멀미</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=무좀"><span class="widget-filter-item-text">무좀</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=미란(짓무름)"><span class="widget-filter-item-text">미란(짓무름)</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=발열"><span class="widget-filter-item-text">발열</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=변비"><span class="widget-filter-item-text">변비</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=부비강염"><span class="widget-filter-item-text">부비강염</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=불면증"><span class="widget-filter-item-text">불면증</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=비타민"><span class="widget-filter-item-text">비타민</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=상처"><span class="widget-filter-item-text">상처</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=소염"><span class="widget-filter-item-text">소염</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=소화불량"><span class="widget-filter-item-text">소화불량</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=속쓰림"><span class="widget-filter-item-text">속쓰림</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=습진"><span class="widget-filter-item-text">습진</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=식욕감퇴"><span class="widget-filter-item-text">식욕감퇴</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=신경통"><span class="widget-filter-item-text">신경통</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=신경통"><span class="widget-filter-item-text">신경통</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=알레르기"><span class="widget-filter-item-text">알레르기</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=야맹증"><span class="widget-filter-item-text">야맹증</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=위염"><span class="widget-filter-item-text">위염</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=장내균총"><span class="widget-filter-item-text">장내균총</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=졸음"><span class="widget-filter-item-text">졸음</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=출혈"><span class="widget-filter-item-text">출혈</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=칼슘"><span class="widget-filter-item-text">칼슘</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=타박상"><span class="widget-filter-item-text">타박상</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=티눈"><span class="widget-filter-item-text">티눈</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=피로"><span class="widget-filter-item-text">피로</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=피부사상균"><span class="widget-filter-item-text">피부사상균</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=피부사상균"><span class="widget-filter-item-text">피부사상균</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=피부손상"><span class="widget-filter-item-text">피부손상</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=피부염"><span class="widget-filter-item-text">피부염</span></a></li>
																<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="<%=request.getContextPath() %>/views/search/searchEffect.do?effect=화상"><span class="widget-filter-item-text">화상</span></a></li>

															</ul>
                                                        </div>
                                                    </div>
                                                    <!-- accordion-body -->
                                                </div>
                                                <!-- accordion-header -->
                                            </div>
                                            <!-- accordion -item-->
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
		<section class="col-lg-5 pt-2;" data-simplebar data-simplebar-auto-hide="false">
			<div class="d-flex pb-3 justify-content-center">
				<h2 class="h3 text-center mb-3 me-3">검색 결과</h2>
			</div>
			<div class="widget widget-links widget-filter">
				<ul class="widget-list widget-filter-list pt-1"	style="height: 55rem;" data-simplebar data-simplebar-auto-hide="false">
					 <!-- 약 목록1 -->
					<% if(list == null || list.isEmpty()){ %> 
						<li class="widget-list-item widget-filter-item"> 조회된 게시글이 없습니다. </li>
						<li class="widget-list-item widget-filter-item"> 원하시는 의약품을 검색해주세요.</li>
					<% } else { %>
						<% if(loginUser != null) { %>
							<% for(Drug drug : list){ %>
							<li class="widget-list-item widget-filter-item">
								<!-- 북마크에 추가하기 시작 -->
								<form action="<%=request.getContextPath()%>/views/search/drugBookmark.do">
									<input type="hidden" name="id" value="<%= loginUser.getUser_id() %>"/>
									<input type="hidden" name="code" value="<%= drug.getDrugCode() %>"/>
									<input type="hidden" name="name" value="<%= drug.getDrugName() %>"/>
									<input type="hidden" name="manufact" value="<%= drug.getDrugManufactoror() %>"/>
									<input type="hidden" name="effect" value="<%= drug.getDrugEffect() %>"/>
									<button class="btn-wishlist btn-sm" type="submit" data-bs-toggle="tooltip" data-bs-placement="left"	title="북마크에 추가">
										<i class=" ci-bookmark"></i>
									</button>
								</form>
								<!-- 북마크에 추가하기 끝 -->
								<div class="card product-card product-list">
									<div class="d-sm-flex align-items-center">
										<button type="button" class="product-list-thumb" id="drug<%= drug.getDrugName() %>"> 
											<img src="<%=request.getContextPath() %>/views/img/drug/hylKorea/<%= drug.getDrugImage() %>" alt="Product">
										</button>
										<div class="card-body py-2">
											<a class="product-meta d-block fs-xs pb-1"><%= drug.getDrugManufactoror() %></a>
											<h3 class="product-title fs-base">
												<%= drug.getDrugName() %>
											</h3>
											<h5 class="product-title fs-base">
												<small>▶ <%= drug.getDrugPrecautions() %></small>
											</h5>
										</div>
									</div>
								</div>
								<script>
									$("#drug<%= drug.getDrugName() %>").click(function(){
										let drugName = "<%= drug.getDrugName() %>";
										$.ajax({
											type : "get",
											url : "<%=request.getContextPath()%>/views/search/searchDetail.do",
											data : {
												drugName
											},
											success : function (object) {
												code = object.drugCode;
												name = object.drugName;
												manu = object.drugManufactoror;
												effect = object.drugEffect;
												usage = object.drugUsage;
												how = object.drugHowStore;
												precation = object.drugPrecautions;
												$("#drugcode").html(code);
												$("#drugname").html(name);
												$("#drugname2").html(name);
												$("#drugManufactoror").html(manu);
												$("#drugEffect").html(effect);
												$("#drugUsage").html(usage);
												$("#drugHowStore").html(how);
												$("#drugPrecautions").html(precation);
											},
										});
									});
								</script>
							</li>
							<% } %>
						<% } else { %>
							<% for(Drug drug : list){ %>
							<li class="widget-list-item widget-filter-item">
								<div class="card product-card product-list">
									<div class="d-sm-flex align-items-center">
										<a type="button" class="product-list-thumb" id="drug<%= drug.getDrugName() %>"> 
											<img src="<%=request.getContextPath() %>/views/img/drug/<%= drug.getDrugImage() %>" alt="Product">
										</a>
										<div class="card-body py-2">
											<a class="product-meta d-block fs-xs pb-1"><%= drug.getDrugManufactoror() %></a>
											<h3 class="product-title fs-base">
												<%= drug.getDrugName() %>
											</h3>
											<h5 class="product-title fs-base">
												<small>▶ <%= drug.getDrugHowStore() %></small>
											</h5>
										</div>
									</div>
								</div>
								<script>
									$("#drug<%= drug.getDrugName() %>").click(function(){
										let drugName = "<%= drug.getDrugName() %>";
										$.ajax({
											type : "get",
											url : "<%=request.getContextPath()%>/views/search/searchDetail.do",
											data : {
												drugName
											},
											success : function (object) {
												code = object.drugCode;
												name = object.drugName;
												manu = object.drugManufactoror;
												effect = object.drugEffect;
												usage = object.drugUsage;
												how = object.drugHowStore;
												precation = object.drugPrecautions;
												$("#drugcode").html(code);
												$("#drugname").html(name);
												$("#drugname2").html(name);
												$("#drugManufactoror").html(manu);
												$("#drugEffect").html(effect);
												$("#drugUsage").html(usage);
												$("#drugHowStore").html(how);
												$("#drugPrecautions").html(precation);
											},
										});
									});
								</script>
							</li>
							<% } %>
						<% } %>
					<% } %>
				</ul>
			</div>
			<div class="border-top pt-3 mt-3"></div>
		</section>
		<!-- 왼쪽 약 목록 -->
		<!---------------------------------------------------------------------------------------------------->
		<!--  오른쪽 상세페이지 -->
		<section class="col-lg-5 d-none d-lg-block px-4 px-xl-4 border-tp">
			<!-- 약 이름 -->
			<div class="d-flex pb-3 justify-content-center">
				<h2 class="h3 text-center mb-3 me-3" id="drugname2"></h2>
			</div>
			<!-- 스크롤바 -->
			<div style="height: 70rem;" data-simplebar data-simplebar-auto-hide="false">
				<!-- 약 사진 & 설명 -->
				<div class="row pt-4">
					<div class="col-md-12 col-sm-12 mb-grid-gutter">
						<div class="card border-0 shadow">
							<div class="card-body">
								<ul class="list-unstyled mb-0">
									<li class="d-flex pb-3 border-bottom">
									<i
										class="ci-briefcase fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">회사</span> 
											<a class="d-block text-heading fs-sm" id="drugManufactoror"></a>
										</div></li>
									<li class="d-flex pt-2 pb-3"><i
										class="ci-document fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">효능</span> 
											<a class="d-block text-heading fs-sm" id="drugEffect"></a>
										</div></li>
									<li class="d-flex pt-2 pb-3"><i
										class="ci-document fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">복용방법</span> 
											<a class="d-block text-heading fs-sm" id="drugUsage"></a>
										</div></li>
									<li class="d-flex pt-2 pb-3 border-bottom"><i
										class="ci-document fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">보관법</span> 
											<a class="d-block text-heading fs-sm" id="drugHowStore"></a>
										</div></li>
									<li class="d-flex pb-3"><i
										class="ci-edit fs-lg mt-2 mb-0 text-orange"></i>
										<div class="ps-3">
											<span class="fs-ms text-muted">주의사항</span> 
											<a class="d-block text-heading fs-sm" id="drugPrecautions"></a>
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

