<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>	
	
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
	
<!DOCTYPE html>
<%@ include file="/views/header.jsp"%>

<div class="bg-orange py-4 shadow-sm">
            <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
                <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="index.html"><i class="ci-home"></i>Home</a></li>
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">뉴스</li>
                        </ol>
                    </nav>
                </div>
                <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
                    <h1 class="h3 text-light fw-bold mb-0">뉴스</h1>
                </div>
            </div>
        </div>
<!-- 뉴스 리스트 -->

<div style="height: 800px">
	<div class="container pb-1 mb-md-1 h-100">
		<div class=" mb-5 mt-4" >
			<h4 class="fs-lg"> Today <%= sf.format(nowTime) %></h4>
			<hr class="mt-3 fw-bolder">
		</div>
		<!-- 뉴스 목록1 -->
		<div class="offcanvas-body pt-2 md-2" style="height: 41rem;">
			<div class="masonry-grid" data-columns="3">
				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb" href="http://www.newsmp.com/news/articleView.html?idxno=219730">
						<img class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/건강보험심사평가원.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="http://www.newsmp.com/news/articleView.html?idxno=219730">20년
									맞은 적정성평가, 평가체계 혁신 추진</a>
							</h2>
							<p class="fs-md fw-bold">
								<a class="link-dark"
									href="http://www.newsmp.com/news/articleView.html?idxno=219730">심평원
									평가실ㆍ평가운영실 기자간담회 개최...7대 혁신과제, 과제별 로드맵 진행 中</a>
							</p>
							<p class="fs-sm">
								<a class="link-dark"
									href="http://www.newsmp.com/news/articleView.html?idxno=219730">
									올해로 도입 20주년을 맞이한 적정성평가를 두고, 심평원이 평가체계 혁신을 위한 7대 혁신과제와 과제별 로드맵을
									마련, 박차를 가하고 있다.</a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">정책</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img style="height: 1.5rem; width: 2rem;"
									src="<%=request.getContextPath() %>/views/img/news/logo_carrot_original.png" alt="강현구 기자">
							</div>
							강현구 기자
							<div class="ms-auto text-nowrap">
								2021-12-10<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45946"><img
							class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/식약처.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45946">식약처,
									변경허가 없이 임의 제조한 제약사 검찰 송치</a>
							</h2>
							<p class="fs-md fw-bold">
								<a class="link-dark"
									href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45946">임의
									제조·판매, 제조기록서 거짓 작성 등 ｢약사법｣ 위반</a>
							</p>
							<p class="fs-sm">
								<a class="link-dark"
									href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45946">
									식품의약품안전처(처장 김강립)는 허가받지 않은 성분을 임의로 사용해 의약품을 제조·판매해 ｢약사법｣을 위반한 혐의로
									A제약사 생산본부장, 생산팀장, A제약사 법인을 검찰에 기소의견으로 송치했다고 밝혔다. </a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">식약처</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img style="height: 1.5rem; width: 2rem;"
									src="<%=request.getContextPath() %>/views/img/news/logo_carrot_original.png" alt="김진우 기자">
							</div>
							김진우 기자 phamacy@binews.co.kr
							<div class="ms-auto text-nowrap">
								2021-12-10<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
								<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="https://www.kpanews.co.kr/article/show.asp?page=1&category=D&idx=228089"><img
							class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/비아트리스.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="https://www.kpanews.co.kr/article/show.asp?page=1&category=D&idx=228089">비아트리스
									신경병증 질병캠페인 R.E.D '올해의PR 금상'</a>
							</h2>
							<p class="fs-md fw-bold">
								<a class="link-dark"
									href="https://www.kpanews.co.kr/article/show.asp?page=1&category=D&idx=228089">"인식(Recognize),
									표현(Express), 조기진단(Diagnose) 강조" 호평</a>
							</p>
							<p class="fs-sm">
								<a class="link-dark"
									href="https://www.kpanews.co.kr/article/show.asp?page=1&category=D&idx=228089">
									비아트리스 코리아(대표 이혜영)는 2021년도 한국광고PR실학회 주관 ‘올해의 광고 PR상’에서 비아트리스 코리아의
									신경병증성 통증 인식 개선을 위한 ‘R.E.D 캠페인’이 기업브랜드PR부문 금상을 수상했다고 9일 밝혔다. <br>SBI인베스트먼트
									이태영 팀장(약사)이 비약 도서출판팀과 함께 ‘제약바이오 투자 입문하기’를 발간했다.
								</a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">제약</a><a
								class="btn-tag me-2 mb-2" href="#">유통</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img src="<%=request.getContextPath() %>/views/img/news/이종태기자.png" alt="이종태 기자자">
							</div>
							이종태 기자 leejt@kpanews.co.kr
							<div class="ms-auto text-nowrap">
								2021-12-09<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45858"><img
							class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/az.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45858">"AZ
									접종 후 모더나 부스터샷, 가장 효과 높아"</a>
							</h2>
							<p class="fs-md fw-bold">
								<a class="link-dark"
									href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45858">접종
									완료자 3000명 대상 7가지 백신 추가 접종 분석...WP등 보도</a>
							</p>
							<p class="fs-sm">
								<a class="link-dark"
									href="http://www.kmpnews.co.kr/news/articleView.html?idxno=45858">
									코로나19 아스트라제네카 백신 접종 완료자가 부스터샷(추가접종)으로 모더나 백신을 맞은 경우에 가장 효과가 높아지는
									것으로 나타났다. </a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">해외뉴스</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img style="height: 1.5rem; width: 2rem;"
									src="<%=request.getContextPath() %>/views/img/news/logo_carrot_original.png" alt="최수호 기자">
							</div>
							최수호 기자 pharmacy@binews.co.kr
							<div class="ms-auto text-nowrap">
								2021-12-09<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>

				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283250"><img
							class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/질병관리청.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="https://www.kpanews.co.kr/article/show.asp?category=B&idx=227940">한·중·일
									3국, 감염병 대응 위한 정보공유·협력 강화</a>
							</h2>
							<p class="fs-md fw-bold">
								<a class="link-dark"
									href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">정은경
									질병청장, 제4차 한‧중‧일 공동심포지엄 비대면 참석</a>
							</p>
							<p class="fs-sm">
								<a class="link-dark"
									href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">
									“문과생도 이해할 수 있는 제약산업 안내서를 만들고 싶었습니다.”<br> SBI인베스트먼트 이태영
									팀장(약사)이 비약 도서출판팀과 함께 ‘제약바이오 투자 입문하기’를 발간했다.
								</a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">약국</a><a
								class="btn-tag me-2 mb-2" href="#">경영</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img style="height: 1.5rem; width: 2rem;"
									src="<%=request.getContextPath() %>/views/img/news/logo_carrot_original.png" alt="김정주 기자">
							</div>
							김정주 기자 jj0831@dailypharm.com
							<div class="ms-auto text-nowrap">
								2021-12-09<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="https://www.kpanews.co.kr/academy/show.asp?search_cate=2&idx=837"><img
							class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/크레스토정.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="https://www.kpanews.co.kr/academy/show.asp?search_cate=2&idx=837">고콜레스테롤혈증
									1차 치료제, 스타틴</a>
							</h2>
							<p class="fs-md fw-bold">
								<a class="link-dark"
									href="https://www.kpanews.co.kr/academy/show.asp?search_cate=2&idx=837">크레스토정
								</a>
							</p>
							<p class="fs-sm">
								<a class="link-dark"
									href="https://www.kpanews.co.kr/academy/show.asp?search_cate=2&idx=837">
									1. 성분 및 함량<br> Rosuvastatin 5mg/정, 10mg/정, 20mg/정<br>
									크레스토정 5mg/10mg/20mg 1정(154.5mg) 중<br>
								<br> - 유효성분: 로수바스타틴칼슘(별규) 5.20/10.40/20.80mg(로수바스타틴으로서
									5/10/20mg)<br> - 첨가제: 유당수화물, 미결정셀룰로오스, 스테아르산마그네슘,
									오파드라이II분홍색, 인산칼슘, 크로스포비돈
								</a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">복약지도</a><a
								class="btn-tag me-2 mb-2" href="#">경영</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img src="<%=request.getContextPath() %>/views/img/news/주혜성기자.jpg" alt="주혜성 기자">
							</div>
							주혜성 기자 hsjoo@kpanews.co.
							<div class="ms-auto text-nowrap">
								2021-12-06<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">아이비웰니스,
									혹한기 취약계층에 1억원 상당 아이비커큐민285 등 기부</a>
							</h2>
							<p class="fs-sm">
								<a class="link-dark"
									href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">이비웰니스(대표
									윤중식)가 혹한기를 앞두고 취약계층 노인들을 위해 1억원 상당의 아이비커큐민285 등 건강식품을 기부했다. <br>
									이번 기부물품은 독거노인종합지원센터(센터장 김현미)에 전달됐으며 노인들에게 혹한기 건강 증진 선물로 전달될
									예정이다....
								</a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">약국경영</a><a
								class="btn-tag me-2 mb-2" href="#">경영</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img src="<%=request.getContextPath() %>/views/img/news/sgkam.jpg" alt="감성균 기자">
							</div>
							감성균 기자 sgkam@kpanews.co.kr
							<div class="ms-auto text-nowrap">
								2021-12-06<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
				
				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083"><img
							class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/rosartan.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">로사르탄
									재처방·재조제 임박...제약사 비용 정산 방법은?</a>
							</h2>
							<p class="fs-ms">
								<a class="link-dark"
									href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">
									이번주 회수품목과 업무 가이드라인 확정 발표 전망 <br>병의원·약국 청구→공단이 업체 전달→제약사
									요양기관 입금
								</a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">약국</a><a
								class="btn-tag me-2 mb-2" href="#">병원</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img style="height: 1.5rem; width: 2rem;"
									src="<%=request.getContextPath() %>/views/img/news/logo_carrot_original.png" alt="정흥준 기자">
							</div>
							정흥준 기자 jhj@dailypharm.com
							<div class="ms-auto text-nowrap">
								2021-12-06<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
				
				<article class="masonry-grid-item">
					<div class="card">
						<a class="blog-entry-thumb"
							href="https://www.kpanews.co.kr/article/show.asp?category=B&idx=227940"><img
							class="card-img-top" src="<%=request.getContextPath() %>/views/img/news/SBI.jpg" alt="Post"></a>
						<div class="card-body">
							<h2 class="h6 fw-bold">
								<a
									href="https://www.kpanews.co.kr/article/show.asp?category=B&idx=227940">"제약·바이오
									투자 산업 이해 관점에서 접근했습니다"</a>
							</h2>
							<p class="fs-sm">
								<a class="link-dark"
									href="https://www.kpanews.co.kr/article/show.asp?category=B&idx=227940">“문과생도
									이해할 수 있는 제약산업 안내서를 만들고 싶었습니다.” <br>SBI인베스트먼트 이태영 팀장(약사)이 비약
									도서출판팀과 함께 ‘제약바이오 투자 입문하기’를 발간했다.
								</a>
							</p>
							<a class="btn-tag me-2 mb-2" href="#">약국</a><a
								class="btn-tag me-2 mb-2" href="#">경영</a>
						</div>
						<div class="card-footer d-flex align-items-center fs-xs">
							<div class="blog-entry-author-ava">
								<img src="<%=request.getContextPath() %>/views/img/news/hansangin.jpg" alt="한상인 기자">
							</div>
							한상인 기자 hsicam@kpanews.co.kr
							<div class="ms-auto text-nowrap">
								2021-12-06<span class="mx-2"></span>
							</div>
						</div>
					</div>
				</article>
				<hr class="mb-4">
			</div>
		</div>
			<hr class="mt-5 fw-bolder">
	</div>
</div>
<%@ include file="/views/footer.jsp"%>


