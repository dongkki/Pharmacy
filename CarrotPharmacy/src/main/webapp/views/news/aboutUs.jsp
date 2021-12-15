<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="utf-8">
<title>당근약국 | About Us</title>
<!-- SEO Meta Tags-->
<meta name="description"
	content="Cartzilla - Bootstrap E-commerce Template">
<meta name="keywords"
	content="bootstrap, shop, e-commerce, market, modern, responsive,  business, mobile, bootstrap, html5, css3, js, gallery, slider, touch, creative, clean">
<meta name="author" content="Createx Studio">
<!-- Viewport-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon and Touch Icons-->
<link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="img/logo/favicon-16x16.png">
<link rel="manifest" href="site.webmanifest">
<link rel="mask-icon" color="#fe6a6a" href="safari-pinned-tab.svg">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">
<!-- Vendor Styles including: Font Icons, Plugins, etc.-->
<link rel="stylesheet" media="screen"
	href="vendor/simplebar/dist/simplebar.min.css" />
<link rel="stylesheet" media="screen"
	href="vendor/tiny-slider/dist/tiny-slider.css" />
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="css/theme.min.css">
</head>

<%@ include file="/views/header.jsp"%>


<div class="container-fluid px-0">
	<div class="row">
		<div
			class="col-md-5 bg-position-center bg-size-cover bg-secondary order-md-2"
			style="min-height: 15rem; background-image: url(<%=request.getContextPath() %>/views/img/news/team_illustration.jpg);"></div>
		<div class="col-md-7 md-5 py-5 order-md-1">
			<div class="mx-auto py-lg-5" style="max-width: 35rem;">
				<h2 class="h3 pb-3">
					Carrot Pharmacy.<br>The exact pharmacy search service.
				</h2>
				<h3 class="h5 pb-3">당근약국 서비스를 만들며...</h3>
				<p class="fs-sm text-muted">개인적으로 ㅇㅇ을 느꼈습니다.개인적으로 ㅇㅇ을
					느꼈습니다.개인적으로 ㅇㅇ을 느꼈습니다.개인적으로 ㅇㅇ을 느꼈습니다.개인적으로 ㅇㅇ을 느꼈습니다.개인적으로 ㅇㅇ을
					느꼈습니다.</p>
				<p class="fs-sm text-muted">저희 당근약국은 이러이런한 점이 강점입니다.저희 당근약국은
					이러이런한 점이 강점입니다.저희 당근약국은 이러이런한 점이 강점입니다.저희 당근약국은 이러이런한 점이 강점입니다.저희
					당근약국은 이러이런한 점이 강점입니다.저희 당근약국은 이러이런한 점이 강점입니다.</p>
				<p class="fs-sm text-muted">만들고 나니 참 뿌듯하네요.</p>
				<p class="fs-sm text-muted">이건 뭐 팔아도 될 것 같은데</p>
				<a class="btn btn-warning btn-shadow" href="about.jsp">See
					Our Team</a>
			</div>
		</div>
	</div>
	<hr>
	<section class="container px-4 py-3 py-lg-5 mt-4 mb-7">
		<h2 class="h3 my-2">Our core team</h2>
		<p class="fs-sm text-muted">People behind your great shopping
			experience</p>
		<div class="row pt-3">
			<div class="col-lg-4 col-sm-6 mb-grid-gutter">
				<div class="d-flex align-items-center">
					<img class="rounded-circle" src="<%=request.getContextPath() %>/views/img/team/윤정희님.jpg" width="50"
						alt="윤정희">
					<div class="ps-3">
						<h6 class="fs-base pt-1 mb-1">윤정희</h6>
						<p class="fs-ms text-muted mb-0">Team Leader</p>
						<a class="nav-link-style fs-ms text-nowrap"
							href="mailto:dbs5421@gmail.com"> <i class="ci-mail me-2"></i>dbs5421@gmail.com
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mb-grid-gutter">
				<div class="d-flex align-items-center">
					<img class="rounded-circle" src="<%=request.getContextPath() %>/views/img/team/유승모님.jpg" width="50"
						alt="유승모">
					<div class="ps-3">
						<h6 class="fs-base pt-1 mb-1">유승모</h6>
						<p class="fs-ms text-muted mb-0">Chief of Marketing</p>
						<a class="nav-link-style fs-ms text-nowrap"
							href="mailto:topblade6@gmail.com"> <i class="ci-mail me-2"></i>topblade6@gmail.com
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mb-grid-gutter">
				<div class="d-flex align-items-center">
					<img class="rounded-circle" src="<%=request.getContextPath() %>/views/img/team/윤재식님.jpg" width="50"
						alt="윤재식">
					<div class="ps-3">
						<h6 class="fs-base pt-1 mb-1">윤재식</h6>
						<p class="fs-ms text-muted mb-0">Financial director</p>
						<a class="nav-link-style fs-ms text-nowrap"
							href="mailto:rvftbg11@gmail.com"> <i class="ci-mail me-2"></i>rvftbg11@gmail.com
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mb-grid-gutter">
				<div class="d-flex align-items-center">
					<img class="rounded-circle" src="<%=request.getContextPath() %>/views/img/team/이다인님.jpg" width="50"
						alt="이다인">
					<div class="ps-3">
						<h6 class="fs-base pt-1 mb-1">이다인</h6>
						<p class="fs-ms text-muted mb-0">Lead UX designer</p>
						<a class="nav-link-style fs-ms text-nowrap"
							href="mailto:leedain0301@gmail.com"> <i class="ci-mail me-2"></i>leedain0301@gmail.com
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mb-grid-gutter">
				<div class="d-flex align-items-center">
					<img class="rounded-circle" src="<%=request.getContextPath() %>/views/img/team/이동혁님.jpg" width="50"
						alt="이동혁">
					<div class="ps-3">
						<h6 class="fs-base pt-1 mb-1">이동혁</h6>
						<p class="fs-ms text-muted mb-0">Website development</p>
						<a class="nav-link-style fs-ms text-nowrap"
							href="mailto:batman64@naver.com"> <i class="ci-mail me-2"></i>batman64@naver.com
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mb-grid-gutter">
				<div class="d-flex align-items-center">
					<img class="rounded-circle" src="<%=request.getContextPath() %>/views/img/team/이진님.jpg" width="50"
						alt="이진">
					<div class="ps-3">
						<h6 class="fs-base pt-1 mb-1">이진</h6>
						<p class="fs-ms text-muted mb-0">Content manager</p>
						<a class="nav-link-style fs-ms text-nowrap"
							href="mailto:ubororoo@gmail.com"> <i class="ci-mail me-2"></i>ubororoo@gmail.com
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<%@ include file="/views/footer.jsp"%>

