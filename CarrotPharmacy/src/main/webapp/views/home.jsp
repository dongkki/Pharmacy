<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

        <!-- Hero section-->
        <!-- home -->
        <!-- section1 -->
        <section class="bg-accent bg-position-top-right bg-repeat-0 py-4 shadow-sm">
            <div class="container py-lg-0 my-md-5 col-8">
                <div class="row">
                    <div class="col-md-6 pt-2">
                        <div class="row mb-4 mb-sm-5">
                            <div class="col-lg-12 col-md-9 text-center text-sm-start">
                                <h1 class="text-orange lh-base "><span class='fw-bolder'><small>항상 당신 근처의</small> 당근 약국</span></h1>
                                <h6 class="h5 text-dark fs-base fw-light">현재 영업중인 약국 정보와 의약품 정보까지, 당신과 함께해요.</h6>
                                <h6 class="h5 text-dark fs-base fw-light"> 정확한 정보로 당신을 편안하게 도와드릴게요.</h6>
                            </div>
                        </div>
                        <div class="row mb-3 mb-sm-3">
                            <div class="col-lg-12 col-md-8">
                                <div class="input-group input-group-lg flex-nowrap shadow-sm"><i class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
                                    <input class="form-control rounded-start" type="text" placeholder="약국명을 검색하세요.">
                                    <button class="btn btn-secondary btn-lg fs-base home_search_btn" type="button">검색</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <aside class="col-md-5 d-none d-lg-block px-xl-3 offset-1">
                        <!-- <iframe src="img/backvideo.mp4?autoplay=0&mute=0" height="299" width="0" frameborder="0" scrolling="no"></iframe>  -->
                        <video autoplay muted loop style="width: 100%;">
                            <source src="img/backvideo.mp4">
                        </video>
                    </aside>

                </div>
            </div>
        </section>

        <!-- section2 -->
        <section class="container py-3 mt-lg-4 py-sm-4 col-8" id="cuisine">
            <div class="row pb-lg-0 d-flex justify-content-lg-between">

                <div class="col-md-2-3 col-sm-6 mb-3">
                    <a class="card border-0 home_btn_1 " href="account-wishlist_pharm.html">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 icon_size">
                                <i class="far fa-bookmark"></i>
                            </h3>
                            <span class="small">즐겨찾기</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-2-3 col-sm-6 mb-3">
                    <a class="card border-0 home_btn_2 shadow-sm" href="pharm_search.html">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 text_color_white icon_size">
                                <i class="fas fa-clinic-medical"></i>
                            </h3>
                            <span class="small text_color_white">24시 약국</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-2-3 col-sm-6 mb-3">
                    <a class="card border-0 home_btn_3 shadow-sm" href="drug_search_name.html">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 text_color_white icon_size">
                                <i class="fas fa-pills"></i>
                            </h3>
                            <span class="small text_color_white">의약품 검색</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-2-3 col-sm-6 mb-3 ">
                    <a class="card border-0 home_btn_4 shadow-sm" href="#">
                        <div class="card-body py-1 text-center">
                            <h3 class="h5 mt-1 icon_size">
                                <i class="far fa-question-circle"></i>
                            </h3>
                            <span class="small">1:1 문의</span>
                        </div>
                    </a>
                </div>
            </div>
        </section>

        <!-- section3 -->
        <section class="container py-sm-3 mb-5 col-8">
            <div class="row">
                <!-- Banner with controls-->
                <div class="col-md-2-3">
                    <div class="d-flex flex-column h-100 overflow-hidden rounded-3" style="background-color: #f7f6e7;">
                        <div class="d-flex justify-content-between px-grid-gutter py-grid-gutter">
                            <div>
                                <h3 class="mb-1">Bestsellers</h3>
                                <a class="fs-md" href="drug_search_name.html">의약품 더보기<i class="ci-arrow-right fs-xs align-middle ms-1"></i></a>
                            </div>
                        </div>
                        <a class="d-none d-md-block mt-auto" href="shop-grid-ls.html">
                            <img class="d-block w-75 float-end m-5" src="<%=request.getContextPath() %>/views/img/logo_carrot_original.png" alt="For Women">
                        </a>
                    </div>
                </div>

                <!-- Product grid (carousel)-->
                <div class="col-md-9 pt-4 pt-md-0">
                    <div class="tns-carousel">
                        <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <svg class="bd-placeholder-img" width="100%" height="25rem" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#fff"/></svg>
                                    <div class="container">
                                        <div class="carousel-caption">
                                            <div class="card product-card card-static">
                                                <a class="card-img-top d-block overflow-hidden" href="grocery-single.html">
                                                    <img src="img/drug/gnaln.jpg" alt="Product" width="200rem">
                                                </a>
                                                <div class="card-body py-2">
                                                    <a class="product-meta d-block fs-xs pb-1" href="#">경동제약(주)</a>
                                                    <h3 class="product-title fs-lg text-truncate">그날엔코프에스연질캡슐</h3>
                                                    <div class="product-price"><span class="text-orange">￦3,000</span></div>
                                                </div>
                                                <p><a class="btn btn-lg btn-primary" href="#">더알아보기</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <svg class="bd-placeholder-img" width="100%" height="25rem" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#FFF"/></svg>
                                    <div class="container">
                                        <div class="carousel-caption">
                                            <div class="card product-card card-static">
                                                <a class="card-img-top d-block overflow-hidden" href="grocery-single.html">
                                                    <img src="img/drug/doctorbearse.jpg" alt="Product" width="200rem">
                                                </a>
                                                <div class="card-body py-2">
                                                    <a class="product-meta d-block fs-xs pb-1" href="#">(주)대웅제약</a>
                                                    <h3 class="product-title fs-lg text-truncate">닥터베아제</h3>
                                                    <div class="product-price"><span class="text-orange">￦3,000</span></div>
                                                </div>
                                                <p><a class="btn btn-lg btn-primary" href="#">더알아보기</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <svg class="bd-placeholder-img" width="100%" height="25rem" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#fff"/></svg>
                                    <div class="container">
                                        <div class="carousel-caption">
                                            <div class="card product-card card-static">
                                                <a class="card-img-top d-block overflow-hidden" href="grocery-single.html">
                                                    <img src="img/drug/tylenol.jpg" alt="Product" width="200rem">
                                                </a>
                                                <div class="card-body py-2">
                                                    <a class="product-meta d-block fs-xs pb-1" href="#">(주)한국얀센</a>
                                                    <h3 class="product-title fs-lg text-truncate">타이레놀</h3>
                                                    <div class="product-price"><span class="text-orange">￦3,000</span></div>
                                                </div>
                                                <p><a class="btn btn-lg btn-primary" href="#">더알아보기</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"  style="background-color: #314e52; border-radius: 50%;"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true" style="background-color: #314e52; border-radius: 50%;"></span>
                                <span class="visually-hidden">Next</span>
                            </button>

                        </div>
                    </div>
                </div>
            </div>
        </section>
