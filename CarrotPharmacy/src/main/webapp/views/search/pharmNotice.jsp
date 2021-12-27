<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/header.jsp"%>
<% String PhamNo = (String)request.getParameter("phamNo12");
%>
 <div class="container col-7">
            <div class="row g-0 d-flex align-items-center">
                <section class="col-lg-12 pt-lg-4 pb-4 mb-3">
                    <div class="pt-2 px-4 ps-lg-0 pe-xl-5">
                        <!-- Title-->
                        <div class="d-sm-flex flex-wrap justify-content-between align-items-center pb-2">
                            <h2 class="h3 py-2 me-2 text-center text-sm-start">공지사항 작성</h2>
                        </div>
                   		<% String path = request.getContextPath() + "/board/insertNotice"; %>
                    <form class="needs-validation" action="<%=path %>" method="get">
                            <div class="mb-3 pb-2">
                                <label class="form-label" for="unp-product-name">제목</label>
                                <input class="form-control" type="text" id="unp-product-name" name = "title">
                                <div class="form-text">100글자 이내로 작성해주세요.</div>
                            </div>
                            <div class="mb-3 py-2">
                                <label class="form-label" for="unp-product-description">내용</label>
                                <textarea class="form-control" rows="6" id="unp-product-description" name="content"></textarea>
                            </div>
                            <div class="file-drop-area mb-3">
                                <div class="file-drop-icon ci-cloud-upload"></div><span class="file-drop-message">Drag and drop here to upload product screenshot</span>
                                <input class="file-drop-input" type="file">
                                <button class="file-drop-btn btn btn-primary btn-sm mb-2" type="button">첨부 이미지</button>
                                <div class="form-text">1000 x 800px ideal size for hi-res displays</div>
                            </div>
                            <div class="mb-3 pb-2">
                                <label class="form-label" for="unp-product-files">파일 선택</label>
                                <input class="form-control" type="file" id="unp-product-files">
                                <div class="form-text">최대 1GB</div>
                            </div>
                            <button class="btn btn-primary d-block w-100" type="submit"><i class="ci-cloud-upload fs-lg me-2"></i>등록하기</button>
                            <div style="border:5px #33FF66 solid;display:none;" ><input type="text" name= "phamNo" value="<%=PhamNo%>"></div>
                        </form>
                    </div>
                </section>
            </div> <!-- row -->
        </div> <!-- container -->



<%@ include file="/views/footer.jsp"%>