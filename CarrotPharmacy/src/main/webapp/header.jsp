<%@page import="carrot.vo.PhamUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%

	PhamUser loginPham = (PhamUser)session.getAttribute("loginPham");

%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<%if(loginPham == null){%>
		<%--일반 로그인 폼 영역 시작--%>
			<form id="loginFrm" action="<%=request.getContextPath() %>/phamlogin" method="post">
				<table>
					<tr>
						<td>
							<input type="text" name="userId" id="userId"  placeholder="아이디" required="required">
						</td>
					</tr>				
					<tr>
						<td>
							<input type="password" name="userPwd" id="userPwd" placeholder="비밀번호" required="required">
						</td>
						<td>
							<input type="submit" value="로그인">
						</td>
					</tr>			
					<tr>
					<td colspan="2">
						<input type="button" value="회원가입" onclick="location.href='<%= request.getContextPath()%>/member/enroll';"/>
					</td>
					</tr>	
				</table>
			</form>
		<%--일반 로그인 폼 영역 종료--%>
	<%	}else{ %>
		<%--로그인 된 사용자 정보 보여주는 폼 영역 시작--%>
			<table>
				<tr>
					<td colspan="2">
						<%= loginPham.getPham_id() %> 님 안녕하세요?
					</td>
				</tr>
				<tr>
					<td>	
						<button onclick="location.href = '<%=request.getContextPath()%>/member/view';">내정보</button>
					</td>
					<td>
						<button onclick="location.replace('<%= request.getContextPath() %>/logoutPham')">로그아웃</button>
					</td>
				</tr>
			</table>
		<%--로그인 된 사용자 정보 보여주는 폼 영역 종료--%>
	<% 	}%>
	</div>
</body>
</html>