<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/header.jsp"%>
		<div class="bg-orange py-4 shadow-sm">
            <div class="container d-lg-flex justify-content-between py-lg-3">
                <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="<%= request.getContextPath() %>/views/index.jsp"><i class="ci-home"></i>Home</a></li>
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">Sign-up</li>
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
	                <form class="signup_form" name="userEnrollFrm" action="<%= request.getContextPath() %>/enroll" method="POST">
	                	<a class="product-list-thumb "> <img src="<%=request.getContextPath() %>\views\img\logo_carrot_pharm.png" alt="당근약국" style="width: 15rem;"> </a>
						<div class="mt-4">
							<a class="btn btn-warning btn-shadow fs-xl" style="width:18rem;" href="<%=request.getContextPath() %>/views/user/enrollUser.jsp">일반 회원</a>
							<a class="btn btn-warning btn-shadow fs-xl" style="width:18rem;" href="<%=request.getContextPath() %>/views/user/enroll.jsp">약국 회원</a>
						</div>
						<div class="mx-2 mt-5">
                            <h1 class="h4 d-flex fw-bolder pb-2">당근 약국 가입하기</h1>
                            <h4 class="d-flex fs-lg mb-4">&nbsp;당근 약국 가입을 환영합니다.</h4>
                        </div>
                        <div class="password-toggle">
						   <input class="form-control mb-3 fs-lg" type="text" name="phamNo" id="signupNo" autocomplete="off" required placeholder="약국 기관 ID" style="width:500px; float: left;">
						   <input class="form-control mb-3 px-3 fs-lg" type="button" id="checkDuplicate2" value="중복검사" style="width:100px; float: right;">
						   <input class="form-control mb-3 mt-4 fs-lg" type="text" name="id" id="signupId" autocomplete="off" required placeholder="아이디">
						   <input class="form-control mb-3 fs-lg" type="password" name="pw" id="signupPw" autocomplete="off" required placeholder="비밀번호">
						   <input class="form-control mb-3 fs-lg" type="password" name="pw2" id="signupPw2" autocomplete="off" required placeholder="비밀번호 확인">
						</div>
						<div class="col-12" style="text-align: center;">
							<hr class="mt-4">
							<div class="d-flex flex-wrap justify-content-between align-items-center">
								<button class="btn btn-primary btn-shadow mt-3 mx-5 fs-lg" type="submit" style="width: 40rem;">가입하기</button>
							</div>
						</div>
	                </form>
       			</div>
           	</div>
        </div>
        
<script>

$("#checkDuplicate2").click(()=>{
	let no = $("#signupNo").val().trim();
	if(no.length < 1){
		alert("기관ID는 최소 1글자 입니다.");
		return;
	}
	
	const xhr = new XMLHttpRequest();
	xhr.open("get", "${pageContext.request.contextPath}/user/checkNo?phamNo=" + no);
	xhr.onreadystatechange = () => {
		if(xhr.readyState == 4 && xhr.status == 200){
			if(xhr.responseText == 'used'){
				alert("중복된 기관ID 입니다. 다시 입력해주세요.");
			}else{
				alert("입력하신 기관ID는 사용 가능합니다.");
			}
		}
	};
	xhr.send();
});

</script>
    
<%@ include file="/views/footer.jsp"%>