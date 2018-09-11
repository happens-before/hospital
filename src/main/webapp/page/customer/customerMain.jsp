
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


<title>用户页面</title>

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
							<a class="btn btn-block btn-primary compose-mail" href="${contextPath}/page/customer/customerMain.jsp"
								>用户</a>
							<div class="space-25"></div>
							<ul class="folder-list m-b-md" style="padding: 0">
								<li><a href="${contextPath}/page/customer/UserInfo.jsp"> <i class="fa fa-user "></i>
										用户信息 
								</a></li>
								<li><a href="${contextPath}/page/customer/department.jsp"> <i class="fa fa-hospital-o"></i>
										科室查询
								</a></li>
								<li><a href="${contextPath}/page/customer/doctor.jsp"> <i
										class="fa fa-user-md"></i> 医生查询
								</a></li>
								<li><a href="${contextPath}/page/customer/yuyueguahao.jsp"> <i
										class="fa fa-calendar"></i> 预约挂号
								</a></li>
								<li><a href="${contextPath}/page/customer/yyManage.jsp"> <i class="fa fa-cog"></i>
										预约管理
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
					<h2 style="margin-left:400px">预约挂号须知</h2>
					<p style="margin-left:5px">1、实名制预约，预约时必须提供真实姓名、身份证（包括成人及儿童）、手机号。</p>
						<p style="margin-left:5px">2、港澳台籍用户注册、预约需提供《港澳居民来往内地通行证》 、《台湾居民来往大陆通行证》。</p>
						<p style="margin-left:5px">3、挂号分预约挂号、当天挂号。</p> 
						<p style="margin-left:5px">4、妇产科只接受女性预约。儿科只接受14周岁以下儿童预约。</p>
						<p style="margin-left:5px">5、支持预约7天内号源，部分医院可预约一周以上的号源。</p>
						<p style="margin-left:5px">6、每人每天只能预约2次。</p>
						<p style="margin-left:5px">7、每月预约不能超6次。</p>
						<p style="margin-left:5px">8、爽约不能超3次。</p>
						<p style="margin-left:5px">9、同一个医生、同一个科室，每人每天只能预约1次。</p>
						<p style="margin-left:5px">10、必须在预约就诊前提前一天（24点前）取消订单,当天挂号不予以退号及退费。</p>
						<p style="margin-left:5px">11、为子女预约：已添加的子女信息不能删除，子女的身份证号、性别、出生日期不能修改。(为子女预约仅限16周岁以下儿童)</p>
						<p style="margin-left:5px">12、看病当天到门诊一楼预约取号处，凭登记的有效证件和病人就诊卡取号。</p>
						<p style="margin-left:5px">13、预约报到</p>
						<p style="margin-left:5px">（1）网上、电话预约成功后，必须在就诊当天按预约时间段提前15分钟以上到挂号处确认、交费、取号，并提前10分钟到护士站报到候诊，未报到候诊者按过号处理。</p>
						<p style="margin-left:5px">（2）所预约专家开诊时间临时有变，医院将及时与您联系，并另行约定就诊时间或推荐同等资历的其他专家为您服务。如遇突发情况，医院或许来不及与您联系，敬请谅解。</p>
						<p style="margin-left:5px">14、过号的处理 </p>
						<p style="margin-left:5px">（1）预约成功并交费取挂号票，但到候诊室时间已超过预约就诊时间段，分诊护士将视情况予以安排延后就诊。</p>
						<p style="margin-left:5px">（2）医院的预约挂号是严谨的服务行为，如因故不能按时就诊，请自觉执行取消办法，以便将空出的号源让给他人预约。我们对每个预约人员建立了诚信管理系统，如系统有超过3次以上的爽约记录，将取消您一个月的网上预约资格。一个月后爽约次数重新计算。</p>
						<p style="margin-left:5px">15、如遇预约的专家因特殊情况当天不能出诊，则由医院安排其他专家出诊，敬请谅解。 </p>
						<p style="margin-left:5px">16、电话预约： 0919-2159834。</p>
						<p style="margin-left:5px">17、本网站保留对以上条款的解释权，并可以在适当的时候对相应的条款进行修改。</p>
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
