<%@page import="carrot.vo.Users"%>
<%@page import="carrot.vo.PhamUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/style.css" >
    <script src="https://kit.fontawesome.com/49fd011980.js" crossorigin="anonymous"></script>
    <script src="<%=request.getContextPath() %>/resource/js/theme.min.js"></script>
    <title>당근약국 - 메인</title>
    
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
</head>

<%
	PhamUser loginPham = (PhamUser)session.getAttribute("loginPham");
	Users loginUser = (Users)session.getAttribute("loginUser");
%>

<body>
    <!-- Header -->
       <div style="border-bottom: 1px solid rgb(134, 134, 134);">
        <div class="container">
            <!-- Header -->
            <header>
                <nav class="navbar navbar-expand-md" aria-label="Fourth navbar example">
                    <div class="container-fluid">
                        <!-- 로고이미지, 타이틀 -->
                        <img class="carrot" src="<%=request.getContextPath() %>/resource/img/carrot.png" alt="">
                        <a class="navbar-brand" href="#">당근약국</a>
                        <!-- 토글 -->
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
                        </button>
                        <!-- 메뉴 -->
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-bs-toggle="dropdown" aria-expanded="false">약국검색</a>
                                    <ul class="dropdown-menu" aria-labelledby="dropdown04">
                                        <li><a class="dropdown-item" href="#">약국 검색</a></li>
                                        <li><a class="dropdown-item" href="#">24시 약국</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-bs-toggle="dropdown" aria-expanded="false">의약품 검색</a>
                                    <ul class="dropdown-menu" aria-labelledby="dropdown04">
                                        <li><a class="dropdown-item" href="#">의약품명</a></li>
                                        <li><a class="dropdown-item" href="#">제조사</a></li>
                                        <li><a class="dropdown-item" href="#">제형</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">뉴스</a>
                                </li>
                            </ul>
                            <!-- 로그인, 회원가입 -->
                            <div class="col-md-3 text-end">
                            	<% if((loginPham == null) && (loginUser == null)){ %>
                                	<a href="<%=request.getContextPath() %>/views/user/loginUser.jsp"><button type="button" class="btn btn-outline-primary me-2">로그인</button></a>
                                	<a href="<%=request.getContextPath() %>/views/user/enrollUser.jsp"> <button type="button" class="btn btn-primary">회원가입</button></a>
                                <% } else if (loginPham != null){ %>
                                	<table>
                                		<tr>
                                			<td colspan="2"><%=loginPham.getPham_id() %> 님 환영합니다</td>
                                		</tr>
                                		<tr>
                                			<td>
			                                	<a href=""> <button type="button" class="btn btn-primary">내정보</button></a>
                                			</td>
                                			<td>
			                                	<a href="<%=request.getContextPath() %>/logoutPham"><button type="button" class="btn btn-outline-primary me-2">로그아웃</button></a>
                                			</td>
                                		</tr>
                                	</table>
                                <% } else {%>
                                	<table>
                                		<tr>
                                			<td colspan="2"><%=loginUser.getUser_name() %> 님 환영합니다</td>
                                		</tr>
                                		<tr>
                                			<td>
			                                	<a href=""> <button type="button" class="btn btn-primary">내정보</button></a>
                                			</td>
                                			<td>
			                                	<a href="<%=request.getContextPath() %>/logoutPham"><button type="button" class="btn btn-outline-primary me-2">로그아웃</button></a>
                                			</td>
                                		</tr>
                                	</table>
                                <% } %>
                            </div>
                        </div>

                    </div> <!-- container-fluid -->
                </nav> <!-- nav -->
            </header> <!-- header -->
         </div> <!-- container -->
    	</div>
    
