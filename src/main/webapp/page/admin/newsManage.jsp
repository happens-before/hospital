
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

<title>患者信息管理</title>

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
								href="${contextPath}/page/admin/adminMain.jsp">管理员 </a>
							<div class="space-25"></div>
							<ul class="folder-list m-b-md" style="padding: 0">
								<li><a href="${contextPath}/page/admin/hospitalInfo.jsp">
										<i class="fa fa-hospital-o"></i> 医院信息
								</a></li>
								<li><a href="${contextPath}/page/admin/news.jsp"> <i
										class="fa fa-paper-plane"></i> 新闻发布
								</a></li>
								<li><a href="${contextPath}/page/admin/huanzheManage.jsp">
										<i class="fa fa-user "></i> 患者管理
								</a></li>
								<li><a href="${contextPath}/page/admin/newsManage.jsp">
										<i class="fa fa-newspaper-o "></i> 新闻管理
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
						<div id="newsManageTable"></div>
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
				url : contextPath + "/Admin/newsInfo",
				type : "POST",
				dataType : "text",
				success : function(datas) {
					$("#newsManageTable").html(datas);

				}
			});
		});

		function deleteNews(a) {

			var newsId = a;
			
			parent.layer.confirm('确认删除？', {
			    btn: ['确认','取消'], //按钮
			    shade: false //不显示遮罩
			}, function(){
				$.ajax({
					url : contextPath + "/Admin/deleteNews",
					type : "POST",
					data : {
						"newsId" : newsId
					},
					dataType : "text",
					success : function(datas) {
							if(datas>0){
								parent.layer.msg('删除成功！');
							}
					}
				});

			}, function(){
				
			});
			
		}

	</script>

</body>

</html>
