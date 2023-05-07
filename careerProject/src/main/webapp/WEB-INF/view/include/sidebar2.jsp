<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 사이드바 -->
<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">
			<sub>어질어질</sub><br>CareerLab 
		</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item"><a class="nav-link" href="/company/regJobPosting">
		<div class="bg-white py-2 collapse-inner rounded d-flex align-items-center justify-content-center">
			<svg width="16" height="16" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M7 .875c.483 0 .875.392.875.875v10.5a.875.875 0 0 1-1.75 0V1.75c0-.483.392-.875.875-.875z" fill="#535961"></path>
			<path fill-rule="evenodd" clip-rule="evenodd" d="M13.125 7a.875.875 0 0 1-.875.875H1.75a.875.875 0 1 1 0-1.75h10.5c.483 0 .875.392.875.875z" fill="#535961"></path>
			</svg> <span class="m-0 font-weight-bold text-primary">새 채용 공고 만들기</span>
		</div>
	</a></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">채용 관리</div>

	<li class="nav-item active"><a class="nav-link"
		href="company/listStatus"> <i class="fas fa-fw fa-table"></i> <span>전체</span></a>
	</li>
	
	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#onRecruit"
		aria-expanded="true" aria-controls="onRecruit"> <i
			class="fas fa-fw fa-cog"></i> <span>모집중( ${onRecruit.count })</span>
	</a>
		<div id="onRecruit" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">모집중인 채용공고</h6>
				<a class="collapse-item" href="/company/getPost?${onRecruit.posting_no }">${onRecruit.position }</a> 
				<a class="collapse-item" href="#">두번째 공고</a>
			</div>
		</div>
	</li>
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#closedRecruit"
		aria-expanded="true" aria-controls="closedRecruit"> <i
			class="fas fa-fw fa-cog"></i> <span>접수 마감 ( ${closedRecruit.count })</span>
	</a>
		<div id="closedRecruit" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">마감된 채용공고</h6>
				<a class="collapse-item" href="/company/getPost?${closedRecruit.posting_no }">${closedRecruit.position }</a> 
				<a class="collapse-item" href="#">두번째 공고</a>
			</div>
		</div>
	</li>
	
	<!-- Divider -->
	<hr class="sidebar-divider">
	
	<!-- Nav Item - Utilities Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseUtilities"
		aria-expanded="true" aria-controls="collapseUtilities"> <i
			class="fas fa-fw fa-wrench"></i> <span>임시 저장 ( ${draft.count })</span>
	</a>
		<div id="collapseUtilities" class="collapse"
			aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Custom Utilities:</h6>
				<a class="collapse-item" href="/company/getPost?${draft.posting_no }">${draft.position }</a> <a
					class="collapse-item" href="#">임시저장222</a> <a
					class="collapse-item" href="#">임시저장333</a>
				<a class="collapse-item" href="#">임시저장4444</a>
			</div>
		</div></li>
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#waitApproval"
			aria-expanded="true" aria-controls="waitApproval"> <i
				class="fas fa-fw fa-cog"></i> <span>승인 대기 ( ${waitApproval.count })</span>
		</a>
			<div id="waitApproval" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="/company/getPost?${waitApproval.posting_no }">${waitApproval.position }</a> 
					<a class="collapse-item" href="#">승인대기222</a>
				</div>
			</div>
		</li>
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#failedApproval"
			aria-expanded="true" aria-controls="failedApproval"> <i
				class="fas fa-fw fa-cog"></i> <span>승인 실패 ( ${failedApproval.count })</span>
		</a>
			<div id="failedApproval" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="/company/getPost?${failedApproval.posting_no }">${failedApproval.position }</a> 
					<a class="collapse-item" href="#">승인실패222</a>
				</div>
			</div>
		</li>
		
		<!-- Divider -->
		<hr class="sidebar-divider">
		
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#endRecruit"
			aria-expanded="true" aria-controls="endRecruit"> <i
				class="fas fa-fw fa-cog"></i> <span>채용 종료 ( ${endRecruit.count })</span>
		</a>
			<div id="endRecruit" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="/company/getPost?${endRecruit.posting_no }">${endRecruit.position }</a> 
					<a class="collapse-item" href="#">채용종료222</a>
				</div>
			</div>
		</li>
	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">회사 관리</div>

	<!-- Nav Item - Tables -->
	<li class="nav-item active"><a class="nav-link"
		href="/company/read_info"> <i class="fas fa-fw fa-table"></i> <span>회사정보 관리</span></a>
	</li>

	<!-- Nav Item - Charts -->
	<li class="nav-item"><a class="nav-link" href="charts.html">
			<i class="fas fa-fw fa-chart-area"></i> <span>관리자 설정</span>
	</a></li>
	
	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>
<!-- End of Sidebar -->
