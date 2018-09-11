
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
								href="${contextPath}/page/doctor/doctorMain.jsp">医生</a>
							<div class="space-25"></div>
							<ul class="folder-list m-b-md" style="padding: 0">
								<li><a href="${contextPath}/page/doctor/doctorInfo.jsp"> <i class="fa fa-user "></i>
										医生信息 
								</a></li>
								<li><a href="${contextPath}/page/doctor/doctorYyManage.jsp"> <i class="fa fa-cog"></i>
										预约管理
								</a></li>
								<li><a href="${contextPath}/page/doctor/doctorJzManage.jsp"> <i
										class="fa fa-user-md"></i> 就诊管理
								</a></li>
								<li><a href="${contextPath}/page/customer/yuyueguahao.jsp"> <i
										class="fa fa-calendar"></i> 复诊管理
								</a></li>
								<li><a href="${contextPath}/page/doctor/departmentInfo.jsp"> <i class="fa fa-hospital-o"></i>
										科室成员
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
						<div id="doctorYyManageTable"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${contextPath}/js/jquery.min.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
	<script src="${contextPath}/js/plugins/layer/layer.min.js"></script>
	<script src="${contextPath}/js/content.min.js?v=1.0.0"></script>
	<script
		src="${contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	<script src="${contextPath}/js/plugins/clockpicker/clockpicker.js"></script>
	<script src="${contextPath}/js/plugins/iCheck/icheck.min.js"></script>
	<script src="${contextPath}/js/demo/form-advanced-demo.min.js"></script>
	<script src="${contextPath}/js/demo/layer-demo.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

	<script>
    	
    var contextPath="<%=contextPath%>";

		$(function() {

			$.ajax({
				url : contextPath + "/Doctor/allYy",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#doctorYyManageTable").html(datas);

				}
			});
		});

		 function success(a) {
			 
			 var yybh=a;

			$.ajax({
				url : contextPath + "/Doctor/yySuccess",
				type : "POST",
				data:{"yybh":yybh},
				dataType : "text",
				success : function(datas) {
					if(datas>0){
						$("#"+a).html("已确认");
					}
					parent.layer.msg('确认成功！');
				}
			});
		}
		
		function fail(b) {

			var yybh=b;
			
			$.ajax({
				url : contextPath + "/Doctor/yyFail",
				type : "POST",
				data:{"yybh":yybh},
				dataType : "text",
				success : function(datas) {
					if(datas>0){
						$("#"+b).html("已拒绝");
					}
					parent.layer.msg('拒绝成功！');
				}
			});
		}
		
		function unsureYuyue(){
			$.ajax({
				url : contextPath + "/Doctor/unsureYuyue",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#doctorYyManageTable").html(datas);
				}
			});
		}
		
		function sureYuyue(){
			$.ajax({
				url : contextPath + "/Doctor/sureYuyue",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#doctorYyManageTable").html(datas);
				}
			});
		}
		
		function searchByDt(){
			
			var dt=$("#choosedate").val();
			
			$.ajax({
				url : contextPath + "/Doctor/searchByDt",
				type : "POST",
				data:{"dt":dt},
				dataType : "text",
				success : function(datas) {
					$("#doctorYyManageTable").html(datas);
				}
			});
		}
 
	</script>

</body>

</html>
