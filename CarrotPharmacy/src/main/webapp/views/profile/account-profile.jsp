<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="/views/header.jsp"%>

<div class="page-title-overlap bg-orange pt-4 pb-5 shadow-sm">
	<div class="container pt-2 pb-3 pt-lg-3 pb-lg-4">
		<div class="d-lg-flex justify-content-between pb-3">
                <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
				<li class="breadcrumb-item"><a class="text-nowrap" href="<%=request.getContextPath() %>/views/home.jsp"><i class="ci-home"></i>Home</a></li>
				<li class="breadcrumb-item text-nowrap"><a href="<%=request.getContextPath() %>/views/profile/account-profile.jsp">마이페이지</a> </li>
                            	<li class="breadcrumb-item text-nowrap active" aria-current="page">내 정보 수정</li>
                        </ol>
                    </nav>
                </div>
                <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
				<h1 class="h3 text-light fw-bold mb-0 ">내 정보 수정</h1>
			</div>
                </div>
            </div>
        </div>
        <div class="container pb-5 mb-2 mb-md-4">
            <div class="row">
                <aside class="col-lg-4 pt-4 pt-lg-0 pe-xl-5">
                    <div class="bg-white rounded-3 shadow-lg pt-1 mb-5 mb-lg-0">
                        <div class="d-md-flex justify-content-between align-items-center text-center text-md-start p-4">
					<div class="d-md-flex align-items-center">
						<div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 6.375rem; height: 6.375rem;">
							<img src="<%=request.getContextPath()%>/views/img/mypage/user_icon.png">
                                </div>
                                <div class="ps-md-3">
                                	<% if(loginUser != null) {%>
                                    <h3 class="fs-base mb-0">
                                    	<%=loginUser.getUser_name() %><br>
                                    	<%=loginUser.getUser_id() %>
									</h3>
									<%} else {%>
                                    <h3 class="fs-base mb-0">
                                    	<%=loginPham.getPham_id() %>
									</h3>
									<% } %>
                                </div>
                            </div><a class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0" href="#account-menu" data-bs-toggle="collapse" aria-expanded="false"><i class="ci-menu me-2"></i>메뉴</a>

                        </div>
                        <div class="d-lg-block collapse" id="account-menu">
					<div class="bg-yellow px-4 py-3">
                                <h3 class="fs-sm mb-0 text-muted">메뉴</h3>
                            </div>
                            <ul class="list-unstyled mb-0">
                                <% if(loginUser != null){ %>
	                                <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/profile/account-profile.jsp"><i class="ci-user opacity-60 me-2"></i>내정보</a></li>
	 								<li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/profile/account-wishlist_pharm.jsp"><i class="ci-heart opacity-60 me-2"></i>즐겨 찾는 약국</a></li>
	                                <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/profile/account-wishlist_drug.do?id=<%=loginUser.getUser_id()%>"><i class="ci-heart opacity-60 me-2"></i>즐겨 찾는 의약품</a></li>
	                                <li class="mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/home.jsp"><i class="ci-sign-out opacity-60 me-2"></i>회원 탈퇴</a></li>
                                <% } else {%>
	                                <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/profile/account-profile.jsp"><i class="ci-user opacity-60 me-2"></i>내정보</a></li>
	                                <li class="mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="<%=request.getContextPath() %>/views/home.jsp"><i class="ci-sign-out opacity-60 me-2"></i>회원 탈퇴</a></li>
                                <% } %>
                            </ul>
                        </div>
                    </div>
                </aside>

				<section class="col-lg-8">
                    <!-- Toolbar-->
                    <div class="d-none d-lg-flex justify-content-between align-items-center pt-lg-3 pb-4 pb-lg-5 mb-lg-3">
                        <h6 class="fs-base text-light mb-0">내정보를 최신 정보로 관리해 주세요.</h6>
                        <a class="btn btn-warning2 btn-sm" href="index.html"><i class="ci-sign-out me-2"></i>Sign out</a>
                    </div>
                    <!-- Profile form-->
                    <% if(loginUser != null){ %>
                    <form name="updateInfo" action="<%= request.getContextPath() %>/updateUser" method="POST">
                        <div class="bg-yellow rounded-3 p-3 mb-3">
						<h4 class="fw-bold pt-3">내 정보 수정</h4>
                        </div>
                        <div class="row gx-4 gy-3">
                            <div class="col-sm-6">
                                <label class="form-label" for="account-fn">이름</label>
								<input class="form-control" type="text" name="name" value="<%=loginUser.getUser_name()%>" required>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="account-phone">전화번호</label>
								<input class="form-control" type="text" name="tel"value="<%=loginUser.getUser_tell()%>" required>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="account-pass">새 비밀번호</label>
                                <div class="password-toggle">
									<input class="form-control" type="password" id="pw" name="pw" value="<%=loginUser.getUser_pw()%>" required>
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check" type="checkbox">
                                        <span class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="account-confirm-pass">비밀번호 확인</label>
                                <div class="password-toggle">
									<input class="form-control" type="password" id="pw2" name="pw2" value="<%=loginUser.getUser_pw()%>" required>
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check" type="checkbox"><span
                                            class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-12">
                                <hr class="mt-2 mb-3">
                                <div class="d-flex flex-wrap justify-content-between align-items-center">
                                    <div class="form-check"> </div>
                                    <input class="btn btn-primary mt-3 mt-sm-0" id="updateSubmit" type="submit" value="변경">
                                </div>
                            </div>
                        </div>
                    </form>
                    <% } else {%>
                    <form name="updateInfo" action="<%= request.getContextPath() %>/updatePhamUser" method="POST">
                        <div class="bg-yellow rounded-3 p-3 mb-3">
						<h4 class="fw-bold pt-3">내 정보 수정</h4>
                        </div>
                        <div class="row gx-4 gy-3">
                            <div class="col-sm-6">
                                <label class="form-label" for="account-fn">아이디</label>
								<input class="form-control" type="text" name="id" value="<%=loginPham.getPham_id()%>" required>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="account-phone">기관 ID</label>
								<input class="form-control" type="text" name="phamId"value="<%=loginPham.getPham_no()%>" required>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="account-pass">새 비밀번호</label>
                                <div class="password-toggle">
									<input class="form-control" type="password" name="pw3" value="<%=loginPham.getPham_user_pw()%>" required>
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check" type="checkbox">
                                        <span class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="account-confirm-pass">비밀번호 확인</label>
                                <div class="password-toggle">
									<input class="form-control" type="password" name="pw4" value="<%=loginPham.getPham_user_pw()%>" required>
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check" type="checkbox"><span
                                            class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-12">
                                <hr class="mt-2 mb-3">
                                <div class="d-flex flex-wrap justify-content-between align-items-center">
                                    <div class="form-check"> </div>
                                    <input class="btn btn-primary mt-3 mt-sm-0" id="updateSubmit2" type="submit" value="변경">
                                </div>
                            </div>
                        </div>
                    </form>
                    <% } %>
                </section>
              </div>
            </div>
            
            <script>
				$(document).ready(() => {
					$("#updateSubmit").on("click", (e) => {
						let pass1 = $("#pw").val();			
						let pass2 = $("#pw2").val();
						
						if(pass1.trim() != pass2.trim()) {
							alert("비밀번호가 일치하지 않습니다.");
							
							$("#pw").val("");
							$("#pw2").val("");
							$("#pw").focus();
							
							return false;
						}		
					});
				});
			</script>
			
            <script>
				$(document).ready(() => {
					$("#updateSubmit2").on("click", (e) => {
						let pass1 = $("#pw3").val();			
						let pass2 = $("#pw4").val();
						
						if(pass1.trim() != pass2.trim()) {
							alert("비밀번호가 일치하지 않습니다.");
							
							$("#pw3").val("");
							$("#pw4").val("");
							$("#pw3").focus();
							
							return false;
						}		
					});
				});
			</script>
            
                
<%@ include file="/views/footer.jsp"%>