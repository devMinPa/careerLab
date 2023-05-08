<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<%@include file="../include/header.jsp"%>
<body id="page-top">
        
	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@include file="../include/sidebar2.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
			
				<%@include file="../include/content.jsp"%>
			
			<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">${position.title }</h1>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">기본정보</h6>
						</div>
						<div class="card-body">
                    <div class="col-cg-10">
                            <form class="user" action="reg_info" method="post">
                                <div class="form-group">
                                	<label>채용 공고명</label>
                                    <input type="text" class="form-control bg-light border-0 small" name="title"
                                        placeholder="예)프론트앤드 개발자, 백앤드 서버 개발자" value="${position.title }">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<label>직군</label>
                                        <input type="text" class="form-control bg-light border-0 small" 
                                           name="business_no" placeholder="${company.business_no }">
                                    </div>
                                    <div class="col-sm-6">
                                    	<label>경력여부</label>
                                        <input type="text" class="form-control bg-light border-0 small" 
                                            placeholder="${company.business_license }">
                                    </div>
                                </div>
                                <div class="form-group">
                                	<label>연봉</label>
									<input type="text" class="form-control bg-light border-0 small"
								  		name="address" placeholder="${company.address }">
								</div>
								<div class="form-group">
                                	<label>입사축하금</label>
									<input type="text" class="form-control bg-light border-0 small"
								  		name="address" placeholder="${company.address }">
								</div>
                                <div class="form-group">
                                	<label>채용 공고 설명</label><sub>2000자 이내</sub>
                                    <textarea class="form-control bg-light border-0 small" rows="8"
                                    	name="description" placeholder="ex) 성장기회의 평등을 추구합니다.">${company.description }</textarea>
                                </div>
                                <div class="form-group">
                                	<label>소속</label>
                                    <input type="text" class="form-control form-control-user" name="belong"
                                        placeholder="인사팀">
                                </div>
                                <div class="form-group">
                                	<label>휴대폰 번호</label>
                                    <input type="text" class="form-control form-control-user" name="phone"
                                        placeholder="01012345678">
                                </div>
                                <button type="submit"  class="btn btn-primary btn-user btn-block">
                                    가입하기
                                </button>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                이미 계정이 있으신가요?<a class="small" href="/company/login"> Login</a>
                            </div>
                        </div>
                    </div>
						</div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


			<%@include file="../include/footer.jsp"%>

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	
	<%@include file="../include/modal.jsp"%>

</body>
</html>







