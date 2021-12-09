<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/header.jsp"%>


        <section id="signup">
			<div class="signup_membertype">
				<a href="<%=request.getContextPath() %>/views/user/enrollUser.jsp"><button type="submit" class="btn btn-outline-primary me-2">일반 회원</button></a>
				<a href="<%=request.getContextPath() %>/views/user/enroll.jsp"><button type="submit" class="btn btn-outline-primary me-2">약국 회원</button></a>
			</div>
                <form class="signup_form" name="userEnrollFrm" action="<%= request.getContextPath() %>/enroll" method="POST">
                   <table class="signup_table">
		                <tr>
		                    <td>아이디</td>
		                    <td><input class="signup_table_input" type="text" name="id" id="signupId" autocomplete="off" required placeholder="enterId"></td>
		                </tr>
		                <tr>
		                    <td>비밀번호</td>
		                    <td><input class="signup_table_input" type="password" name="pw" id="signupPw" autocomplete="off" required placeholder="enterPassword"></td>
		                </tr>
		                <tr>
		                    <td>비밀번호 확인</td>
		                    <td><input class="signup_table_input" type="password" name="pw" id="signupPw" autocomplete="off" required placeholder="enterPassword"></td>
		                </tr>
		                <tr>
		                    <td>약국기관ID</td>
		                    <td><input class="signup_table_input" type="text" name="phamNo" id="signupNo" autocomplete="off" required placeholder="enterNo"></td>
		                </tr>
          		  </table>
			            <div class="signup_btn">
			                <button type="submit">Sign Up</button>
			            </div>
                </form>
        </section>
    
<%@ include file="/views/footer.jsp"%>