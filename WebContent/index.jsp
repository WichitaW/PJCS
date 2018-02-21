<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>ระบบจัดตารางสอนของคณาจารย์ ภาควิชาวิทยาการคอมพิวเตอร์</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 	script-header import -->
<jsp:include page="/resources/template/script-header.jsp"></jsp:include>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/libraries/datatables-1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/approveOnLeave/approveOnLeave.js"></script>
</head>
<body class="bg-info">
	<form id="approve" method="post" action="">
		<div class="container" style="margin-top: 5%; margin-bottom: 12%;">
			<div class="col-xs-12 col-sm-12">
				<div class="panel panel-primary form-horizontal">
					<div class="panel-heading">
						<h2 class="panel-title text-center" id="textApprove">
							<b>อนุมัติคำร้องขอลา</b>
						</h2>
						<h2 class="panel-title text-center" id="textApproveUser">
							<b>ประวัติการลา</b>
						</h2>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-sm-5">
								<h5>Welcome : ${sessionScope.userLogin}</h5>
							</div>
							<div class="col-xs-5 col-xs-offset-7 col-sm-2 col-sm-offset-5">
								<button type="submit" class="btn btn-block btn-danger"
									id="btnLogout" formaction="/testweb/LogoutSrvl">Logout</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-5 col-xs-offset-7 col-sm-2 col-sm-offset-10">
								<button type="button"
									class="btn btn-block btn-primary text-white"
									id="btnGoToRequest"
									onclick="location.href='/testweb/LoadRequestOnLeaveSrvl'">+ เพิ่มคำร้องขอลา</button>
								<button type="button"
									class="btn btn-block btn-primary text-white" id="btnGoToReport"
									onclick="location.href='/testweb/LoadReportOnLeaveSrvl'">ไปหน้ารายงานการลา</button>							</div>
						</div>
						<div class="form-group">
							<label id="statusname"
								class="col-xs-3 col-sm-offset-3 col-sm-2 control-label">สถานะ : </label>
							<div class="col-sm-3">
								<select id="status" class="form-control">
									<option value="รออนุมัติ" selected="selected">รออนุมัติ</option>
									<option value="อนุมัติ">อนุมัติ</option>
									<option value="ไม่อนุมัติ">ไม่อนุมัติ</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>