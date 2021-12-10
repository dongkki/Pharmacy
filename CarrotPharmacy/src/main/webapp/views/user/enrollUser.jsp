<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="/views/header.jsp"%>

        <section id="signup">
            <div class="signup_membertype">
				<a href="<%=request.getContextPath() %>/views/user/enrollUser.jsp"><button type="button" class="btn btn-outline-primary me-2">일반 회원</button></a>
				<a href="<%=request.getContextPath() %>/views/user/enroll.jsp"><button type="button" class="btn btn-outline-primary me-2">약국 회원</button></a>
			</div>
                <form class="signup_form" name="userEnrollFrm" action="<%= request.getContextPath() %>/enrollUser" method="POST">
                    <table class="signup_table">
                        <tr>
		                    <td>아이디</td>
		                    <td>
		                    	<input class="signup_table_input" type="text" name="id" id="signupId" autocomplete="off" required placeholder="enterId">
		                    	<input class="signup_table_input" type="button" id="checkDuplicate" value="중복검사">
		                    </td>
		                </tr>
		                <tr>
		                    <td>비밀번호</td>
		                    <td><input class="signup_table_input" type="password" name="pw" id="signupPw" autocomplete="off" required placeholder="enterPassword"></td>
		                </tr>
		                <tr>
		                    <td>비밀번호 확인</td>
		                    <td><input class="signup_table_input" type="password" name="pw2" id="signupPw2" autocomplete="off" required placeholder="enterPassword"></td>
		                </tr>
                        <tr>
	                    	<td>이름</td>
	                    		<td><input class="signup_table_input" type="text" name="name" id="signupName" autocomplete="off" required placeholder="enterName"></td>
	              			</tr>
                        <tr>
                    		<td>전화번호</td>
                   				<td><select class="signup_table_select">
                       		     	<option>대한민국 +82</option>
                     		   	</select><input class="signup_table_phone" type="text" name="phone" id="signupPhone" autocomplete="off" required placeholder="enterPhoneNumber">
                     		   	</td>
              			</tr>
                    </table>
                    	<div class="signup_btn">
			                <button type="submit">Sign Up</button>
			            </div>
                </form>
        </section>
    
<script>

$("#checkDuplicate").click(()=>{
	let id = $("#signupId").val().trim();
	if(id.length < 4){
		alert("아이디는 최소 4글자 입니다.");
		return;
	}
	
	const xhr = new XMLHttpRequest();
	xhr.open("get", "${pageContext.request.contextPath}/user/checkId?id=" + id);
	xhr.onreadystatechange = () => {
		if(xhr.readyState == 4 && xhr.status == 200){
			if(xhr.responseText == 'used'){
				alert("중복된 아이디 입니다. 다시 입력해주세요.");
			}else{
				alert("입력하신 아이디는 사용 가능합니다.");
			}
		}
	};
	xhr.send();
});

</script>
    
<%@ include file="/views/footer.jsp"%>