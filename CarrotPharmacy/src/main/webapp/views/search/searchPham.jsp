<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="carrot.vo.Pharmacy"%>
<%@ page import="java.util.*"%>
<%@ include file="/views/common/header.jsp"%>
<%
//	String no = (String)request.getAttribute("phamNo");
//	String name = (String)request.getAttribute("phamName");
//	String tell = (String)request.getAttribute("phamTell");
	ArrayList<Pharmacy> pham = new ArrayList<Pharmacy>();
	pham = (ArrayList<Pharmacy>)request.getAttribute("pham");
%>


<section id="content">
			<table>
				<tr>
				<form id="option_form" name="option_form" action="/searchpham.do" method="get">
				<div class="search_form">
					<input type="text" name="search_box" placeholder="약국 이름을 입력하세요." style="width: 200px;"> <i class="fas fa-search"></i>
				</div>
					<select name="address" >
						<option value="test2">강남구</option>
						<option value="test3">강동구</option>
						<option value="test4">강북구</option>
						<option value="test5">강서구</option>
						<option value="test6">관악구</option>
						<option value="test7">광진구</option>
						<option value="test8">구로구</option>
						<option value="test9">금천구</option>
						<option value="test10">노원구</option>
						<option value="test11">도봉구</option>
						<option value="test12">동대문구</option>
						<option value="test13">동작구</option>
						<option value="test14">마포구</option>
						<option value="test15">서대문구</option>
						<option value="test16">서초구</option>
						<option value="test17">성동구</option>
						<option value="test18">성북구</option>
						<option value="test19">송파구</option>
						<option value="test20">양천구</option>
						<option value="test21">영등포구</option>
						<option value="test22">용산구</option>
						<option value="test23">은평구</option>
						<option value="test24">종로구</option>
						<option value="test25">중구</option>
						<option value="test26">중랑구</option>
					</select> 
					<input type="submit" value="검색">
				</form>
				</tr>
				
				<h3> 검색결과 </h3>
				<tr>
			 	<% if(pham == null || pham.isEmpty()){%>
				<tr>
				<td colspan="6">
					조회된 약국이 없습니다.
				</td>
				</tr>	
				<%} else {%>

					<% for(Pharmacy phams : pham) { %>
					<tr>
						<div><%= phams.getPham_name() %></div>
						<div><%= phams.getPham_no() %></div>
						<div><%= phams.getPham_tell() %></div>
						<br>
					</tr>
					<% } %>
				<%}%>
			
			</tr>
			</table>
</section>

<%@ include file="/views/common/footer.jsp"%>