<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/views/header.jsp"%>


<div class="container-fluid px-0">
	<div class="row">
		<div
			class="col-md-5 bg-position-center bg-size-cover bg-secondary order-md-2"
			style="min-height: 15rem; background-image: url(<%=request.getContextPath() %>/views/img/news/team_illustration.jpg);"></div>
		<div class="col-md-7 md-5 py-5 order-md-1">
			<div class="mx-auto py-lg-5" style="max-width: 35rem;">
				<h2 class="h3 pb-3">
					Carrot Pharmacy.<br>
					The exact pharmacy search service.
				</h2>
				<h3 class="h5 pb-3">
					나와 우리 가족을 위하는 마음으로 <br>
					다 같이 좀 더 건강한 서비스를 꿈꿉니다.
				</h3>
				<p class="fs-sm text-muted">
					사용자의 관점에서 생각해보고, 고객이 사는 튼튼한 집을 만든다는 생각으로 개발합니다.<br>
					우리는 궁극적으로 사람과 사람이 마음을 나누고 연결되는 행복한 세상을 꿈꿉니다.<br>
					그리고 그 속에서 개인과 팀의 발전을 위합니다.
				</p>
				<a class="btn btn-warning btn-shadow" href="#bottom">See Our Team</a>
			</div>
		</div>
	</div>
	<hr>
	<section class="container px-4 py-3 py-lg-5 mt-4 mb-7">
		<h2 class="h3 my-2">Our core team</h2>
		<p class="fs-sm text-muted">They are people who are making carrot pharmacy.</p>
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
						<p class="fs-ms text-muted mb-0">Intern</p>
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
						<p class="fs-ms text-muted mb-0">Backend Developer</p>
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
						<p class="fs-ms text-muted mb-0">Frontend Developer</p>
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
						<p class="fs-ms text-muted mb-0">Backend Developer</p>
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
						<p class="fs-ms text-muted mb-0">Frontend Developer</p>
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
