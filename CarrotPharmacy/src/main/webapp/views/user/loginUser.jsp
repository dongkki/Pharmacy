<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

<section id="content">
	<div class="header_login">
			<table>
				<tr>
					<td>
						<a href="<%=request.getContextPath() %>/views/user/loginUser.jsp"><button type="button" class="btn btn-outline-primary me-2">일반 회원 로그인</button></a>
						<a href="<%=request.getContextPath() %>/views/user/login.jsp"><button type="button" class="btn btn-outline-primary me-2">약국 회원 로그인</button></a>
					</td>
				</tr>
			</table>
			<% if(loginUser == null) { %>
			<%--일반 로그인 폼 영역 시작--%>
			<form id="loginFrm"	action="<%=request.getContextPath()%>/userlogin" method="post">
				<table>
					<tr>
						<td><input type="text" name="userId" id="userId" placeholder="아이디" required="required"></td>
					</tr>
					<tr>
						<td><input type="password" name="userPwd" id="userPwd" placeholder="비밀번호" required="required"></td>
					</tr>
					<tr>
						<td><input type="submit" value="로그인"></td>
					</tr>
				</table>
			</form>
			<%--일반 로그인 폼 영역 종료--%>
			<% } else { %>
			<%--로그인 된 사용자 정보 보여주는 폼 영역 시작--%>
			<table>
				<tr>
					<td colspan="2"><%=loginUser.getUser_name()%> 님 환영합니다.</td>
				</tr>
				<tr>
					<td>
						<button	onclick="location.href = '<%=request.getContextPath()%>/member/view';">내정보</button>
					</td>
					<td>
						<button	onclick="location.replace('<%=request.getContextPath()%>/logoutUser')">로그아웃</button>
					</td>
				</tr>
			</table>
			<%--로그인 된 사용자 정보 보여주는 폼 영역 종료--%>
			<% } %>
	</div>
</section>
<%@ include file="/views/common/footer.jsp"%>