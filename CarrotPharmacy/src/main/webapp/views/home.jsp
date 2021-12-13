<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

		<!-- home -->
        <!-- section1 -->
        <section class="bg-accent bg-position-top-right bg-repeat-0 py-4">
            <div class="container py-lg-0 my-lg-5 col-8">
                <div class="row justify-content-center">
                    <div class="col-lg-6 pt-2">
                        <div class="row mb-4 mb-sm-5">
                            <div class="col-lg-12 col-md-9 text-center text-sm-start">
                                <h1 class="text-orange lh-base ">
                                    <small>항상 당신 근처의</small><span class='fw-bolder'> 당근 약국</span></h1>
                                <h6 class="h5 text-dark fw-light">현재 영업중인 약국 정보와 의약품 정보까지, 당신과 함께해요.</h6>
                                <h6 class="h5 text-dark fw-light"> 정확한 정보로 당신을 편안하게 도와드릴게요.</h6>
                            </div>
                        </div>
                        <div class="row mb-3 mb-sm-5">
                            <div class="col-lg-12 col-md-8">
                                <div class="input-group input-group-lg flex-nowrap"><i class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
                                    <input class="form-control rounded-start" type="text" placeholder="약국명 또는 의약품명을 검색하세요.">
                                    <button class="btn btn-secondary btn-lg fs-base home_search_btn" type="button">검색</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <aside class="col-lg-6 d-none d-lg-block px-xl-3">
                        <video width="500" autoplay muted>
                   			<source src="img/backvideo.mp4">
                		</video>
                    </aside>
                </div>
            </div>
        </section>

        <!-- section2 -->
        <section class="container py-3 my-lg-4 py-sm-5 col-8" id="cuisine">
            <div class="row pb-lg-5">
                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 home_btn_1" href="#">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 icon_size">
                                <i class="far fa-bookmark"></i>
                            </h3>
                            <span class="small">즐겨찾기</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 home_btn_2" href="#">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 text_color_white icon_size">
                                <i class="fas fa-clinic-medical"></i>
                            </h3>
                            <span class="small text_color_white">24시 약국</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 home_btn_3" href="#">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 text_color_white icon_size">
                                <i class="fas fa-pills"></i>
                            </h3>
                            <span class="small text_color_white">의약품 검색</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 home_btn_4" href="#">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 icon_size">
                                <i class="far fa-question-circle"></i>
                            </h3>
                            <span class="small">1:1 문의</span>
                        </div>
                    </a>
                </div>
        </section>
        
