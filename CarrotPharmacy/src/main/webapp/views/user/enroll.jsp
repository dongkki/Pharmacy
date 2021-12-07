<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

<style>
            section #enroll-container {
                text-align: center;
            }
            
            section #enroll-container input {
                margin: 3px;
            }
            
            section #enroll-container table {
                margin: 0 auto;
            }
            
            section #enroll-container table th {
                padding: 0 10px;
                text-align: right;
            }
            
            section #enroll-container table td {
                padding: 0 10px;
                text-align: left;
            }
        </style>
        
        
        <section id="content">
            <h3 align="center">회원 가입 정보</h3>

            <div id="enroll-container">
                <form name="memberEnrollFrm" action="<%= request.getContextPath() %>/enroll" method="POST">
                    <table>
                        <tr>
                            <th>아이디</th>
                            <td>
                            	<input type="text" name="userId" id="newId" placeholder="아이디(4글자이상)" required /> 
                             </td>
                        </tr>
                        <tr>
                            <th>패스워드</th>
                            <td>
                            	<input type="password" name="userPwd" id="pass1" required />
                            </td>
                        </tr>
                        <tr>
                            <th>패스워드 확인</th>
                            <td><input type="password" id="pass2" /></td>
                        </tr>
                        <tr>
                            <th>약국번호</th>
                            <td><input type="text" name="phamNo" required /></td>
                        </tr>
                    </table>

                    <input type="submit" id="enrollSubmit" value="가입" /> <input type="reset" value="취소" />
                </form>
                <form name="checkIdForm">
                    <input type="hidden" name="userId">
                </form>
            </div>
        </section>
    
<%@ include file="/views/common/footer.jsp"%>