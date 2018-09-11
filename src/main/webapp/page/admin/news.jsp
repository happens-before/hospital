
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

<title>医院信息</title>

<link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
<link href="${contextPath}/css/font-awesome.min93e3.css"
	rel="stylesheet">
<link href="${contextPath}/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="${contextPath}/css/plugins/summernote/summernote.css"
	rel="stylesheet">
<link href="${contextPath}/css/plugins/summernote/summernote-bs3.css"
	rel="stylesheet">
<link href="${contextPath}/css/animate.min.css" rel="stylesheet">
<link href="${contextPath}/css/style.min862f.css" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
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
			<div class="col-sm-10 animated fadeInRight">
				<div class="mail-box-header">
					<h2>发布新闻</h2>
				</div>
				<div class="mail-box">
					<div class="mail-body">

						<form class="form-horizontal" method="get">
							<div class="form-group" style="margin-left: -132px;">
								<label class="col-sm-2 control-label">标题：</label>

								<div class="col-sm-10">
									<input type="text" class="form-control" value=""
										style="margin-left: -25px;" id="title">
								</div>
								<br>
								<br>
								<br>
								<label class="col-sm-2 control-label">发布人：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" value=""
										style="margin-left: -25px;" id="publisher">
								</div>
							</div>
						</form>

					</div>

					<div class="mail-text h-200" contenteditable="true" id="getNewsBody">

					</div>
					<div class="mail-body text-right tooltip-demo">
						<button class="btn btn-primary" type="button" onclick="publishNews()"><i
							class="fa fa-reply"></i> 发布</button>
						<button class="btn btn-danger" type="button" onclick="quitNews()"><i
							class="fa fa-times"></i> 放弃</button>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<script src="${contextPath}/js/jquery.min.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
	<script src="${contextPath}/js/plugins/layer/layer.min.js"></script>
	<script src="${contextPath}/js/content.min.js?v=1.0.0"></script>
	<script src="${contextPath}/js/plugins/iCheck/icheck.min.js"></script>
	<script src="${contextPath}/js/plugins/summernote/summernote.min.js"></script>
	<script src="${contextPath}/js/plugins/summernote/summernote-zh-CN.js"></script>
	<script src="${contextPath}/js/demo/layer-demo.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

	<script>
    
    var contextPath="<%=contextPath%>";
    
    function publishNews(){
    	
    		var title=$("#title").val();
    		var publisher=$("#publisher").val();
    		var newsbody=$("#getNewsBody").html();
    		
    		parent.layer.confirm('确认发布？', {
			    btn: ['确认','取消'], //按钮
			    shade: false //不显示遮罩
			}, function(){
				$.ajax({
					url : contextPath + "/Login/publishNews",
					type : "POST",
					data : {
						"title" : title,
						"publisher" : publisher,
						"newsbody" : newsbody
					},
					dataType : "text",
					success : function(datas) {
						if(datas>0){
	    					parent.layer.msg('发布成功！');
	    					}
						location.reload();
					}
				});
			}, function(){
				
			});
    		
	    
    }
    
    function quitNews(){
    		
    		$.ajax({
			url : contextPath + "/Login/quitNews",
			type : "POST",
			dataType : "text",
			success : function(datas) {
				parent.layer.confirm('确认放弃？', {
				    btn: ['确认','取消'], //按钮
				    shade: false //不显示遮罩
				}, function(){
					location.reload();
				}, function(){
					
				});
			}
		});
    }
	</script>


</body>
</html>
