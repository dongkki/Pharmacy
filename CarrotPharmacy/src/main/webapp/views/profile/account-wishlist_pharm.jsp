<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ include file="/views/header.jsp"%>    
    
	<div class="page-title-overlap bg-dark pt-4">
            <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
                <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="index.html"><i class="ci-home"></i>Home</a></li>
                            <li class="breadcrumb-item text-nowrap"><a href="#">내정보</a>
                            </li>
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">즐겨찾기_약국</li>
                        </ol>
                    </nav>
                </div>
                <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
                    <h1 class="h3 text-light mb-0">즐겨찾기_약국</h1>
                </div>
            </div>
        </div>
        <div class="container pb-5 mb-2 mb-md-4">
            <div class="row">
                <!-- Sidebar-->
                <aside class="col-lg-4 pt-4 pt-lg-0 pe-xl-5">
                    <div class="bg-white rounded-3 shadow-lg pt-1 mb-5 mb-lg-0">
                        <div class="d-md-flex justify-content-between align-items-center text-center text-md-start p-4">
                            <div class="d-md-flex align-items-center">
                                <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 6.375rem;">
                                    <i class="ci-user-circle fs-xl" style="height: 5rem;"></i>
                                </div>
                                <div class="ps-md-3">
                                    <h3 class="fs-base mb-0">
                                    	<%=loginUser.getUser_name() %>
									</h3>
                                </div>
                            </div><a class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0" href="#account-menu" data-bs-toggle="collapse" aria-expanded="false"><i class="ci-menu me-2"></i>메뉴</a>

                        </div>
                        <div class="d-lg-block collapse" id="account-menu">
                            <div class="bg-secondary px-4 py-3">
                                <h3 class="fs-sm mb-0 text-muted">메뉴</h3>
                            </div>
                            <ul class="list-unstyled mb-0">
                                <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/profile/account-profile.jsp"><i class="ci-user opacity-60 me-2"></i>내정보</a></li>
                                <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/profile/account-wishlist_drug.do?id=<%=loginUser.getUser_id()%>"><i class="ci-heart opacity-60 me-2"></i>즐겨찾기_약<span class="fs-sm text-muted ms-auto">3</span></a></li>
                                <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/profile/account-wishlist_pharm.jsp"><i class="ci-heart opacity-60 me-2"></i>즐겨찾기_약국<span class="fs-sm text-muted ms-auto">3</span></a></li>
                                <li class="mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="index.html"><i class="ci-sign-out opacity-60 me-2"></i>회원 탈퇴</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <!-- Content  -->
                <section class="col-lg-8">
                    <!-- Toolbar-->
                    <div class="d-none d-lg-flex justify-content-between align-items-center pt-lg-3 pb-4 pb-lg-5 mb-lg-3">
                        <h6 class="fs-base text-light mb-0">즐겨 찾는 약국을 한눈에 확인해 보세요</h6><a class="btn btn-primary btn-sm" href="index.html"><i class="ci-sign-out me-2"></i>Sign out</a>
                    </div>
                    <!-- Wishlist-->
                    <!-- Item-->
                    <div class="d-sm-flex justify-content-between my-4 pb-3 pb-sm-2 border-bottom">
                        <div class="d-block d-sm-flex align-items-start text-center text-sm-start">
                            <a class="d-block flex-shrink-0 mx-auto me-sm-4" href="pharm_detail.html" style="width: 10rem;"><img src="<%=request.getContextPath() %>\views\img\mypage\강남제일약국.jpg" alt="Product"></a>
                            <div class="pt-2">
                                <h3 class="product-title fs-lg mb-2"><a href="pharm_detail.html">강남제일약국</a></h3>
                                <div class="fs-sm"><span class="text-muted me-2">주소:</span>강남구 테헤란로 139</div>
                                <div class="fs-sm"><span class="text-muted me-2">전화:</span>02-555-7790</div>
                                <div class="fs-lg text-accent pt-2"><small>￦3,000</small></div>
                            </div>
                        </div>
                        <div class="pt-2 ps-sm-3 mx-auto mx-sm-0 text-center">
                            <button class="btn btn-outline-danger btn-sm" type="button"><i class="ci-trash me-2"></i>삭제</button>
                        </div>
                    </div>
                    <!-- Item-->
                    <div class="d-sm-flex justify-content-between mt-lg-4 mb-4 pb-3 pb-sm-2 border-bottom">
                        <div class="d-block d-sm-flex align-items-start text-center text-sm-start">
                            <a class="d-block flex-shrink-0 mx-auto me-sm-4" href="pharm_detail.html" style="width: 10rem;"><img src="<%=request.getContextPath() %>\views\img\mypage\올리브온누리약국.jpg" alt="Product"></a>
                            <div class="pt-2">
                                <h3 class="product-title fs-lg mb-2"><a href="pharm_detail.html">올리브온누리약국</a></h3>
                                <div class="fs-sm"><span class="text-muted me-2">주소:</span>강남구 테헤란로20길</div>
                                <div class="fs-sm"><span class="text-muted me-2">전화:</span>02-538-5257</div>
                                <div class="fs-lg text-accent pt-2"><small>￦3,000</small></div>
                            </div>
                        </div>
                        <div class="pt-2 ps-sm-3 mx-auto mx-sm-0 text-center">
                            <button class="btn btn-outline-danger btn-sm" type="button"><i class="ci-trash me-2"></i>삭제</button>
                        </div>
                    </div>
                    <!-- Item-->
                    <div class="d-sm-flex justify-content-between mt-lg-4 mb-4 pb-3 pb-sm-2 border-bottom">
                        <div class="d-block d-sm-flex align-items-start text-center text-sm-start">
                            <a class="d-block flex-shrink-0 mx-auto me-sm-4" href="pharm_detail.html" style="width: 10rem;"><img src="<%=request.getContextPath() %>\views\img\mypage\강남씨티약국.jpg" alt="Product"></a>
                            <div class="pt-2">
                                <h3 class="product-title fs-lg mb-2"><a href="pharm_detail.html">강남씨티약국</a></h3>
                                <div class="fs-sm"><span class="text-muted me-2">주소:</span>강남구 강남대로 416</div>
                                <div class="fs-sm"><span class="text-muted me-2">전화:</span>02-553-1608</div>
                                <div class="fs-lg text-accent pt-2"><small>￦3,000</small></div>
                            </div>
                        </div>
                        <div class="pt-2 ps-sm-3 mx-auto mx-sm-0 text-center">
                            <button class="btn btn-outline-danger btn-sm" type="button"><i class="ci-trash me-2"></i>삭제</button>
                        </div>
                    </div>
                    <!-- Item-->
                    <div class="d-sm-flex justify-content-between mt-lg-4 mb-4 pb-3 pb-sm-2 border-bottom">
                        <div class="d-block d-sm-flex align-items-start text-center text-sm-start">
                            <a class="d-block flex-shrink-0 mx-auto me-sm-4" href="pharm_detail.html" style="width: 10rem;"><img src="<%=request.getContextPath() %>\views\img\mypage\굿약국.jpg" alt="Product"></a>
                            <div class="pt-2">
                                <h3 class="product-title fs-lg mb-2"><a href="pharm_detail.html">굿약국</a></h3>
                                <div class="fs-sm"><span class="text-muted me-2">주소:</span>서초구 서초대로77길 24</div>
                                <div class="fs-sm"><span class="text-muted me-2">전화:</span>02-535-8233</div>
                                <div class="fs-lg text-accent pt-2"><small>￦3,000</small></div>
                            </div>
                        </div>
                        <div class="pt-2 ps-sm-3 mx-auto mx-sm-0 text-center">
                            <button class="btn btn-outline-danger btn-sm" type="button"><i class="ci-trash me-2"></i>삭제</button>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <%@ include file="/views/footer.jsp"%>