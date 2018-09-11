
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


<title>管理员页面</title>

<link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
<link href="${contextPath}/css/font-awesome.min93e3.css"
	rel="stylesheet">
<link href="${contextPath}/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="${contextPath}/css/animate.min.css" rel="stylesheet">
<link href="${contextPath}/css/style.min862f.css" rel="stylesheet">
<link href="${contextPath}/css/plugins/summernote/summernote.css" rel="stylesheet">
<link href="${contextPath}/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content">
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
			<div class="col-sm-9 animated fadeInRight">
			<div class="mail-box">
			<div class="mail-text h-200">

				<div class="summernote">
					<h2 style="margin-left:400px">管理员守则</h2>
					<p style="margin-left:5px">1、维护路由器、更换网线、交换机等网络设备。</p>
						<p style="margin-left:5px">2、保障电脑文件共享和打印服务器的稳定运行。</p>
						<p style="margin-left:5px">3、建立网络使用和管理制度并贯彻执行。</p> 
						<p style="margin-left:5px">4、电脑维护、确保网络通信传输畅通，了解医院网络布局、内外网联接情况，监控内部网络运转情况，制定各IT设施管理办法并监督执行 。</p>
						<p style="margin-left:5px">5、网络系统维护，用户权限、医生权限、管理员权限等的设置与功能分配等，根据管理需要进行用户管理 与分配。 7、处理客户端计算机和应用软件故障。</p>
						<p style="margin-left:5px">6、处理Internet无法正常访问的故障, 维护Internet 服务器，监控外来访问和对外访问情况，如有安全问题，及时处理。</p>
						<p style="margin-left:5px">7、处理各类计算机软硬件和办公设备故障。</p>
						<p style="margin-left:5px">8、服务器安全运行和数据备份。</p>
						<p style="margin-left:5px">9、计算机系统防病毒管理, 各种软件的用户密码及权限管理,协助各科室进行数据备份和数据归档。</p>
						<p style="margin-left:5px">10、对于系统和网络出现的异常现象网管应及时进行分析，处理，采取积极应对措施。针对当时没有解决的问题或重要的问题应将问题描述、分析原因、处理方案、处理结果、预防措施等内容记录下来。</p>
						<p style="margin-left:5px">11、制定服务器的防病毒措施，及时下载最新的病毒库，防止服务器受病毒的侵害。</p>
						<p style="margin-left:5px">12、保障医院网站信息平台的稳定运行。</p>
						<p style="margin-left:5px">13、保管好医院网站后台,FTP密码,严禁对外泄露</p>
						<p style="margin-left:5px">14、按要求及时更新医院网站内容，更新情况记录详尽 </p>
						<p style="margin-left:5px">15、在医院网站上发布各项医院信息。 </p>
						<p style="margin-left:5px">16、服务器的维护；对于服务器托管或虚拟空间租用的网站,必须知道服务器所在地、联系人及24小时联系方式,确保出现网站无法访问的情况能及时得到解决。</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<script src="${contextPath}/js/jquery.min.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
	<script src="${contextPath}/js/content.min.js?v=1.0.0"></script>
	<script src="${contextPath}/js/plugins/iCheck/icheck.min.js"></script>
	<script src="${contextPath}/js/plugins/summernote/summernote.min.js"></script>
    <script src="${contextPath}/js/plugins/summernote/summernote-zh-CN.js"></script>
	<script>
		$(document).ready(function() {
			$(".i-checks").iCheck({
				checkboxClass : "icheckbox_square-green",
				radioClass : "iradio_square-green",
			})
		});
	</script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>
