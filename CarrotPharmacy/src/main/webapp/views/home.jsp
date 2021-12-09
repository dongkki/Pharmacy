<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

		<section class="bg-accent bg-position-top-right bg-repeat-0 py-1">
            <div class="pb-lg-5 mb-lg-3">
                <div class="container py-lg-5 my-lg-5">
                    <div class="row mb-4 mb-sm-5">
                        <div class="col-lg-7 col-md-9 text-center text-sm-start">
                            <h1 class="text-white lh-base"><span class='fw-bolder'>당근약국</span></h1>
                            <h2 class="h3 text-white fw-light">현재 영업 중인 약국을 한눈에~</h2>
                        </div>
                    </div>
                    <div class="row pb-lg-5 mb-4 mb-sm-5">
                        <div class="col-lg-6 col-md-8">
                            <div class="input-group input-group-lg flex-nowrap"><i class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
                                <input class="form-control rounded-start" type="text" placeholder="Start your search">
                                <button class="btn btn-primary btn-lg fs-base home_search_btn" type="submit">검색</button>
                                 <!--<input type="submit" value="검색"> -->
                                <div class="dropdown-menu dropdown-menu-end my-1"><a class="dropdown-item" href="#">Photos</a><a class="dropdown-item" href="#">Graphics</a><a class="dropdown-item" href="#">UI Design</a><a class="dropdown-item" href="#">Web Themes</a><a class="dropdown-item" href="#">Add-Ons</a></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- section2 -->
        <section class="container py-3 my-lg-3 py-sm-5 " id="cuisine">
            <div class="row d-flex justify-content-center pb-lg-5">

                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 shadow home_btn_1" href="#">
                        <div class="card-body py-4 text-center">
                            <h3 class="h5 mt-1">24시 약국</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 shadow home_btn_2" href="#">
                        <div class="card-body py-4 text-center">
                            <h3 class="h5 mt-1">의약품검색</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 shadow home_btn_3" href="#">
                        <div class="card-body py-4 text-center">
                            <h3 class="h5 mt-1">1:1 문의</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 mb-grid-gutter">
                    <a class="card border-0 shadow home_btn_4" href="#">
                        <div class="card-body py-4 text-center">
                            <h3 class="h5 mt-1">즐겨찾기</h3>
                        </div>
                    </a>

                </div>
            </div>
        </section>
