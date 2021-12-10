<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/header.jsp"%>

<section class="login">
			<div class="login_membertype">
					<a href="<%=request.getContextPath() %>/views/user/loginUser.jsp"><button type="button" class="btn btn-outline-primary me-2">일반 회원</button></a>
					<a href="<%=request.getContextPath() %>/views/user/login.jsp"><button type="button" class="btn btn-outline-primary me-2">약국 회원</button></a>
			</div>
			<% if(loginPham == null) { %>
			<%--일반 로그인 폼 영역 시작--%>
			<form id="loginFrm"	action="<%=request.getContextPath()%>/phamlogin" method="post">
				<div class="login_input">
					<input type="text" name="id" id="id" autocomplete="off" required placeholder="ID">
					<div class="password-toggle"> <input class="form-control" type="password" name="pw" id="pw" required placeholder="Password"> </div>
					<div class="login_btn">
					<button type="submit">로그인</button>
	                </div>
				</div>
			</form>
			<%--일반 로그인 폼 영역 종료--%>
			<% } else { %>
			<%--로그인 된 사용자 정보 보여주는 폼 영역 시작--%>
			<table>
				<tr>
					<td colspan="2"><%=loginPham.getPham_id()%> 님 환영합니다.</td>
				</tr>
				<tr>
					<td>
						<button	onclick="location.href = '<%=request.getContextPath()%>/member/view';">Info</button>
					</td>
					<td>
						<button	onclick="location.replace('<%=request.getContextPath()%>/logoutPham')">Logout</button>
					</td>
				</tr>
			</table>
			<%--로그인 된 사용자 정보 보여주는 폼 영역 종료--%>
			<% } %>
</section>
	
<%@ include file="/views/footer.jsp"%>