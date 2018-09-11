
<%
	String contextPath = request.getContextPath();
	request.setAttribute("contextPath", contextPath);
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>预约管理</title>

<link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
<link href="${contextPath}/css/font-awesome.min93e3.css"
	rel="stylesheet">
<link href="${contextPath}/css/plugins/datapicker/datepicker3.css"
	rel="stylesheet">
<link href="${contextPath}/css/plugins/clockpicker/clockpicker.css"
	rel="stylesheet">
<link href="${contextPath}/css/animate.min.css" rel="stylesheet">
<link href="${contextPath}/css/style.min862f.css" rel="stylesheet">
<link href="${contextPath}/css/plugins/iCheck/custom.css"
	rel="stylesheet">


</head>

<body class="gray-bg">

	<div class="wrapper wrapper-content animated fadeInUp">
		<div class="row">
			<div class="col-sm-2">
				<div class="ibox float-e-margins">
					<div class="ibox-content mailbox-content">
						<div class="file-manager">
							<a class="btn btn-block btn-primary compose-mail"
								href="${contextPath}/page/customer/customerMain.jsp">用户</a>
							<div class="space-25"></div>
							<ul class="folder-list m-b-md" style="padding: 0">
								<li><a href="${contextPath}/page/customer/UserInfo.jsp">
										<i class="fa fa-user "></i> 用户信息
								</a></li>
								<li><a href="${contextPath}/page/customer/department.jsp">
										<i class="fa fa-hospital-o"></i> 科室查询
								</a></li>
								<li><a href="${contextPath}/page/customer/doctor.jsp">
										<i class="fa fa-user-md"></i> 医生查询
								</a></li>
								<li><a href="${contextPath}/page/customer/yuyueguahao.jsp">
										<i class="fa fa-calendar"></i> 预约挂号
								</a></li>
								<li><a href="${contextPath}/page/customer/yyManage.jsp">
										<i class="fa fa-cog"></i> 预约管理
								</a></li>
							</ul>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-10">
				<div class="ibox">
					<div class="ibox-content">
						<div class="project-list">
							<table class="table table-hover">
								<tbody>
									<tr>
										<td class="project-completion">
											<div id="data_1">
												<div class="input-group date">
													<span class="input-group-addon"><i
														class="fa fa-calendar"></i></span> <input type="text"
														class="form-control" value="" id="choosedate"
														placeholder="请选择日期">
												</div>
											</div>
										</td>
											<td class="project-completion">
											<div class="input-group">
                                    				<button class="btn btn-primary" type="submit" style="margin-left: 0px;margin-top: 0px;"  onclick="searchByDt()">查询</button>
                                				</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div id="yyManageTable"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${contextPath}/js/jquery.min.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
	<script src="${contextPath}/js/content.min.js?v=1.0.0"></script>
	<script
		src="${contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	<script src="${contextPath}/js/plugins/clockpicker/clockpicker.js"></script>
	<script src="${contextPath}/js/plugins/iCheck/icheck.min.js"></script>
	<script src="${contextPath}/js/demo/form-advanced-demo.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

	<script>
    	
    var contextPath="<%=contextPath%>";

		$(function() {

			$.ajax({
				url : contextPath + "/Customer/yuyueguanli",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#yyManageTable").html(datas);

				}
			});
		});

		function yuyueIng() {

			$.ajax({
				url : contextPath + "/Customer/yuyueIng",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#yyManageTable").html(datas);

				}
			});
		}

		function yuyueSuc() {

			$.ajax({
				url : contextPath + "/Customer/yuyueSuc",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#yyManageTable").html(datas);

				}
			});
		}

		function yuyueFai() {

			$.ajax({
				url : contextPath + "/Customer/yuyueFai",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#yyManageTable").html(datas);

				}
			});
		}
		
		function searchByDt(){
			
			var date=$("#choosedate").val();
			
			$.ajax({
				url : contextPath + "/Customer/searchByDt",
				type : "POST",
				data:{"date":date},
				dataType : "text",
				success : function(datas) {
					$("#yyManageTable").html(datas);

				}
			});
			
		}
	</script>

</body>

</html>
