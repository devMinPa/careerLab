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
                    <h1 class="h3 mb-4 text-gray-800">회사정보 관리</h1>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">기본정보</h6>
								
						</div>
						<div class="card-body">
                    <div class="col-cg-10">
                        <div class="p-5">
                            <form class="user" action="reg_info" method="post">
                                <div class="form-group">
                                	<label>회사명</label>
                                    <input type="text" class="form-control bg-light border-0 small" name="name"
                                        placeholder="${company.name }" readonly="readonly">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<label>사업자등록번호</label>
                                        <input type="text" class="form-control bg-light border-0 small" 
                                           name="business_number" placeholder="" value="${company.business_number }" readonly="readonly">
                                    </div>
                                    <div class="col-sm-6">
                                    	<label>회사 로고</label>
                                        <input type="text" class="form-control bg-light border-0 small" 
                                            placeholder="" value="${company.logo }" >
                                    </div>
                                </div>
                                <div class="form-group">
                                	<label>회사 대표주소</label>
									<input type="text" class="form-control bg-light border-0 small"
								  		name="address" placeholder="" value="${company.address }" >
								</div>
                                <div class="form-group">
                                	<label>회사 소개</label><sub>2000자 이내</sub>
                                    <textarea class="form-control bg-light border-0 small" rows="8"
                                    	name="description" placeholder="ex) 성장기회의 평등을 추구합니다." >${company.description }</textarea>
                                </div>
                                <div class="form-group">
                                	<label>홈페이지</label>
                                    <input type="text" class="form-control form-control-user" name="hompage"
                                        placeholder="www.careerlab.com" value="${company.homepage }" >
                                </div>
                                 <hr>
                                <button type="submit"  class="btn btn-primary btn-user btn-block">
                                    수정하기
                                </button>
                            </form>
                           
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







