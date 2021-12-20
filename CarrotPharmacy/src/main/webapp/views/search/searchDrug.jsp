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
							<input class="form-control rounded-start" name="name" type="text" placeholder="의약품명 · 제조사 · 약 모양을 입력하세요.">
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
				<a class="btn btn-outline-secondary dropdown-toggle"
					href="#shop-filters" data-bs-toggle="collapse"><i
					class="ci-filter me-2"></i>Filters</a>
			</div>
			<div class="d-none d-sm-flex">
				<% if(list == null || list.isEmpty()){ %>
					<h6>검색 결과 전체 0개</h6>
				<% } else { %>
					<h6>검색 결과 전체 <%= list.size() %> 개</h6>
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
                                        <h3 class="widget-title">카테고리</h3>
                                        <div class="accordion mt-n1" id="shop-categories">
                                            <!-- 제조사-->
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button" href="#clothing" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="clothing">제조사</a></h3>
                                                <div class="accordion-collapse collapse show" id="clothing" data-bs-parent="#shop-categories">
                                                    <div class="accordion-body">
                                                        <div class="widget widget-links widget-filter">
                                                            <div class="input-group input-group-sm mb-2">
                                                                <input class="widget-filter-search form-control rounded-end" type="text" placeholder="Search"><i class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
                                                            </div>
                                                            <ul class="widget-list widget-filter-list pt-1" style="height: 10rem;" data-simplebar data-simplebar-auto-hide="false">
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">모두보기</span><span class="fs-xs text-muted ms-3">2,548</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(유)옥시레킷벤키저</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(유)한국비엠에스제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(유)한풍제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)경보제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">일성신약(주)</span><span class="fs-xs text-muted ms-3">2,548</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)그린제약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)글락소스미스클라인</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)글락소스미스클라인컨슈머헬스케어코리아</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)넥스팜코리아</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)녹십자</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)뉴젠팜</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)다림바이오텍</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)다산제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)대웅</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)대웅제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)도체오</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)돌나라한농제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)동구바이오제약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)동방바이오</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)드림파마</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)디에이치피코리아</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)라이트팜텍</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)마더스제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)메디카코리아</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)메디톡스</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)메디팁</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)바슈헬스코리아</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)바스칸바이오제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)바이넥스</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)베키오바이오젠</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)보령바이오파마</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)비보존제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)비씨월드제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)비씨월드헬스케어</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)사노피-아벤티스코리아</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)사이넥스</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)삼양홀딩스</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)삼오제약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)새한제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)서울제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)서흥</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)셀비온</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)셀트리온</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)셀트리온제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)시어스제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)신광신약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)씨엘팜</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)씨엠지제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)씨티씨바이오</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)아이월드제약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)알피바이오</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)에스트라</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)엔엠제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)엘브리지</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)엘앤씨바이오</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)엘지화학</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)엠지</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)오스코리아제약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)우일팜</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)유앤생명과학</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)유영제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)유유제약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)유한메디카</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)유한양행</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)이든파마</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)인트로바이오파마</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)일화</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)제뉴파마</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)제이앤피코리아</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)제일제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)종근당</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)중헌제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)코아팜바이오</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)킴스제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)태준제약</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)테라젠이텍스</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)텔콘알에프제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)티디에스팜</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)파마킹</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)파마택코리아</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)팜젠사이언스</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)퍼슨</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)퍼슨</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)프레제니우스메디칼케어코리아</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)하원제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국글로벌제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국로슈</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국신약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국얀센</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국유니팜</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국파마</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국파비스제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국팜비오</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한국피엠지제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한독</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)한독테바</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)함소아제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)화이트생명과학</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)화이트생명과학</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)휴비스트제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)휴온스</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">(주)휴온스메디케어</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">건일바이오팜주식회사</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">건일제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">경남제약(주)</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">경동제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">경방신약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">경진제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li> <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text"></span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">고려은단(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">고려제약(주)</span><span class="fs-xs text-muted ms-3">235</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">광동제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">구주제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">국제약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">길리어드사이언스코리아(유)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">노보노디스크제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">대림제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">대우제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">대웅바이오(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">대원제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">대한뉴팜(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">대한약품공업(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">대한약품공업(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">독립바이오제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동광제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동국제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동방에프티엘(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동성제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동아에스티(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동아제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동인당제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">동화약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">디케이에스에이치코리아(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">라이온코리아주식회사</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">라이온코리아주식회사</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">리후헬스케어(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">맥널티제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">머크(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">메딕스제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">명문제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">명인제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">미래제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">미쓰비시다나베파마코리아주식회사</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">바이엘코리아(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">보령제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">부광메디카(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">부광약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">비아트리스코리아(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">비엘엔에이치(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">삼남제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">삼성제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">삼아제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">삼익제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">삼일제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">삼진제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">삼천당제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">성원애드콕제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">세엘진(유)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">세종제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">슈미트헬스코리아(유)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">시믹씨엠오코리아(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">시믹씨엠오코리아주식회사</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">신신제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">신일제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">신풍제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">신화제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">아이큐어(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">아주약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">안국뉴팜(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">안국약품(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">알리코제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">알보젠코리아(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">알파제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에리슨제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에스에스팜(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에스케이케미칼(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에스피씨(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에이치엘비제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에이치제이협진(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에이치케이이노엔(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">에이프로젠제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">엔비케이제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">영일제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">영진약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">영풍제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">오스템파마주식회사</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">오스틴제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">오펠라헬스케어코리아(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">원광제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">위더스제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">유니메드제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">이연제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">익수제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">일동제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">일동제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">일심제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">일심제약</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">일양약품(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">입센코리아(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">입센코리아(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제이더블유생명과학(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제이더블유신약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제이더블유중외제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제이앤드엠파마</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제이에스제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제이텍바이오젠</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제이텍바이오팜</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제일약품(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">제일약품(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">조선무약(합)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">조아제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">주식회사 노바엠헬스케어</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">주식회사 더유제약</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">주식회사다나젠</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">주식회사제뉴원사이언스</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">주식회사케이에스제약</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">지아이메딕스(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">지엘루비콘(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">지엘파마(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">지엘파마(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">진양제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">천우신약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">천혜당제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">청계제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">초당약품공업(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">케이엠에스제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">코스맥스바이오(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">코스맥스파마(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">코오롱제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">크리스탈생명과학(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">크리스탈지노믹스(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">태극제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">파마사이언스코리아(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">풍림무약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">프레지니우스카비코리아(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">하나제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국넬슨제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국노바티스(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국다이이찌산쿄(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국다이이찌산쿄(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국룬드벡(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국릴리(유)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국먼디파마 유한회사</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국먼디파마(유)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국메나리니(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국바이오켐제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국베링거인겔하임(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국산도스(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국세르비에(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국신텍스제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국아스텔라스제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국아스트라제네카(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국애보트(유)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국애브비(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국에자이(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국엠에스디(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국오가논(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국오츠카제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국웰팜(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국유나이티드제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국유니온제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국유씨비제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국인스팜(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국코러스(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국코와(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국쿄와기린(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국페링제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국프라임제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국화이자제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한국휴텍스제약(주)</span><span class="fs-xs text-muted ms-3">410</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한림제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한미약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한솔신약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한올바이오파마(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한중제약(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">한화제약(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">해태에이치티비(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">현대약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">화리약품(주)</span><span class="fs-xs text-muted ms-3">107</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">화일약품(주)</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                <li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span class="widget-filter-item-text">환인제약(주)	</span><span class="fs-xs text-muted ms-3">93</span></a></li>
                                                                


                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 효능,효과-->
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button collapsed" href="#accessories" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="accessories">효능,효과</a></h3>
                                                <div class="accordion-collapse collapse" id="accessories" data-bs-parent="#shop-categories">
                                                    <div class="accordion-body">
                                                        <div class="widget widget-links">
                                                            <ul class="widget-list widget-filter-list pt-1" style="height: 10rem;" data-simplebar data-simplebar-auto-hide="false">
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항악성종양제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>소화기관용약</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>최면진정제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>혈압강하제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>동맥경화용제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항악성종양제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>해열.진통.소염제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>정신신경용제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 중추신경용약</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>당뇨병용제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 비뇨생식기관 및 항문용약</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>치과구강용약</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 순환계용약</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>간장질환용제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>혼합비타민제(비타민AD 혼합제제를 제외)</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항악성종양제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>진해거담제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>무기질제제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 자양강장변질제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>하제, 완장제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항악성종양제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>소화성궤양용제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>칼슘제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 비타민제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 화학요법제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항악성종양제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>골격근이완제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>따로 분류되지 않는 대사성 의약품</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>진경제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항전간제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항악성종양제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>제산제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>주로 그람양성, 음성균에 작용하는 것</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>주로 그람양성균, 리케치아, 비루스에 작용하는 것</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>비타민 C 및 P제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>단백아미노산제제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항히스타민제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>종합대사성제제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>구충제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>혈관확장제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>비타민 E 및 K제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>정장제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 외피용약</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 알레르기용약</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>합성마약</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항악성종양제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>자격요법제(비특이성면역억제제를 포함)</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 호흡기관용약</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>효소제제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>난포호르몬제 및 황체호르몬제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>안과용제</span><span class="fs-xs text-muted ms-3">920</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>통풍치료제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>따로 분류되지 않고 치료를 주목적으로 하지않는 의약품</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 혈액 및 체액용약</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>부정맥용제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>비타민 B제(비타민 B1을 제외)</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>비타민 B1제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>건위소화제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>자율신경제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>아편알카로이드계 제제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>혈액응고저지제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>진훈제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>피임제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항원충제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 조제용약</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>최토제, 진토제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>뇌하수체호르몬제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>각성제,흥분제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>해독제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>비타민 A 및 D제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 조직세포의 기능용의약품</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 항생물질제제(복합항생물질제제를 포함)</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>부신호르몬제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>이비과용제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>강심제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>화농성질환용제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>모발용제(발모, 탈모, 염모, 양모제)</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>주로 그람양성, 음성균, 리케치아, 비루스에 작용하는 것</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>지혈제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>항결핵제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>주로 항산성균에 작용하는 것</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>이담제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>비뇨생식기관용제(성병예방제포함)</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>주로 그람음성균에 작용하는 것</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>설화제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>혈관보강제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>단백동화스테로이드제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>이뇨제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>치질용제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>주로 그람양성균에 작용하는 것</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>치나제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 종양치료제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 호르몬제(항호르몬제를 포함)</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>혈액대용제</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>자궁수축제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>갑상선, 부갑상선호르몬제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>장기제제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기생성 피부질환용제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>기타의 신경계및 감각기관용 의약품</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>주로 곰팡이, 원충에 작용하는 것</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>혈관수축제</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>X선조영제</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>면역혈청학적 검사용 시약</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>후란계 제제</span><span class="fs-xs text-muted ms-3">364</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>말초신경용약</span><span class="fs-xs text-muted ms-3">405</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>호흡기관용약</span><span class="fs-xs text-muted ms-3">131</span></a></li>
                                                                <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="#"><span>백신류</span><span class="fs-xs text-muted ms-3">20</span></a></li>
                                                                
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
                                            <input class="widget-filter-search form-control rounded-end pe-5" type="text" placeholder="Search"><i class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
                                        </div>
                                        <ul class="widget-list widget-filter-list list-unstyled pt-1" style="max-height: 11.5rem;" data-simplebar data-simplebar-auto-hide="false">
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-s">
                                                    <label class="form-check-label widget-filter-item-text" for="size-s">원형</label>
                                                </div><span class="fs-xs text-muted">57</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-xl">
                                                    <label class="form-check-label widget-filter-item-text" for="size-xl">장방형</label>
                                                </div><span class="fs-xs text-muted">46</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-39">
                                                    <label class="form-check-label widget-filter-item-text" for="size-39">타원형</label>
                                                </div><span class="fs-xs text-muted">112</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-40">
                                                    <label class="form-check-label widget-filter-item-text" for="size-40">팔각형</label>
                                                </div><span class="fs-xs text-muted">85</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-xl">
                                                    <label class="form-check-label widget-filter-item-text" for="size-xl">오각형</label>
                                                </div><span class="fs-xs text-muted">46</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-39">
                                                    <label class="form-check-label widget-filter-item-text" for="size-39">삼각형</label>
                                                </div><span class="fs-xs text-muted">112</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-40">
                                                    <label class="form-check-label widget-filter-item-text" for="size-40">기타</label>
                                                </div><span class="fs-xs text-muted">85</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-xl">
                                                    <label class="form-check-label widget-filter-item-text" for="size-xl">사각형</label>
                                                </div><span class="fs-xs text-muted">46</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-39">
                                                    <label class="form-check-label widget-filter-item-text" for="size-39">육각형</label>
                                                </div><span class="fs-xs text-muted">112</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="size-40">
                                                    <label class="form-check-label widget-filter-item-text" for="size-40">반원형</label>
                                                </div><span class="fs-xs text-muted">85</span>
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
		<section class="col-lg-5 pt-2;" data-simplebar data-simplebar-auto-hide="false">
			<div class="d-flex pb-3 justify-content-center">
				<h2 class="h3 text-center mb-3 me-3">검색 결과</h2>
			</div>
			<div class="widget widget-links widget-filter">
				<ul class="widget-list widget-filter-list pt-1"	style="height: 55rem;" data-simplebar data-simplebar-auto-hide="false">
					<!-- 약 목록1 -->
					<% if(list == null || list.isEmpty()){ %> 
						<li class="widget-list-item widget-filter-item"> 조회된 게시글이 없습니다.</li>
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
											<img src="<%=request.getContextPath() %>/views/img/drug/<%= drug.getDrugImage() %>" alt="Product">
										</button>
										<div class="card-body py-2">
											<a class="product-meta d-block fs-xs pb-1"><%= drug.getDrugManufactoror() %></a>
											<h3 class="product-title fs-base">
												<%= drug.getDrugName() %>
											</h3>
											<!-- 
											 -->
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
										<button type="button" class="product-list-thumb" id="drug<%= drug.getDrugName() %>"> 
											<img src="<%=request.getContextPath() %>/views/img/drug/<%= drug.getDrugCode() %>" alt="Product">
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
							<!-- <img class="card-img-top" src="<%=request.getContextPath() %>/views/img/drug/hupenjung.jpg" alt="닥터베아제정"> -->
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


























