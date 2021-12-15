<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/header.jsp"%>
		<div class="bg-orange py-4 shadow-sm">
            <div class="container d-lg-flex justify-content-between py-lg-3">
                <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="<%= request.getContextPath() %>/views/index.jsp"><i class="ci-home"></i>Home</a></li>
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">Log-in</li>
                        </ol>
                    </nav>
                </div>
                <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
                    <h1 class="h3 text-light fw-bold mb-0">Log-in</h1>
                </div>
            </div>
        </div>
<div class="container d-inline">
	<div class="row justify-content-center">
		<div class="col-lg-5 alert alert-secondary px-lg-5 text-center" style="width: 45rem;">
			<form id="loginFrm" action="<%=request.getContextPath()%>/userlogin" method="post">
				<a class="product-list-thumb "> <img src="<%=request.getContextPath() %>\views\img\logo_carrot_pharm.png" alt="당근약국" style="width: 15rem;"> </a>
				<div class="mt-4">
					<a class="btn btn-warning btn-shadow fs-xl" style="width:18rem;" href="<%=request.getContextPath() %>/views/user/loginUser.jsp">일반 회원</a>
					<a class="btn btn-warning btn-shadow fs-xl" style="width:18rem;" href="<%=request.getContextPath() %>/views/user/login.jsp">약국 회원</a>
				</div>
				<div class="mx-2 mt-5">
                	<h1 class="h4 d-flex pb-2 fw-bold">일반 로그인</h1>
                	<h4 class="d-flex fs-lg mb-4">&nbsp;아이디 / 비밀번호를 활용한 로그인 방식입니다.</h4>
           	 	</div>
				<div class="login_input">
					<input class="form-control mb-2 fs-lg" type="text" name="id" id="id" autocomplete="off" required placeholder="아이디">
					<input class="form-control mb-2 fs-lg" type="password" name="pw" id="pw" required placeholder="비밀번호">
				</div>
				<div class="login_btn" style="text-align: center;">
                  	<button class="btn btn-primary btn-shadow fs-xl mb-3 mt-3" style="width: 30rem;" type="submit">로그인</button>
               	</div>
               	<div class="mb-3 d-flex justify-content-end">
                    <a href="<%=request.getContextPath() %>/views/user/enrollUser.jsp">회원가입</a>
                </div>
			</form>
		</div>
	</div>
</div>

<%@ include file="/views/footer.jsp"%>