
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
							<a class="btn btn-block btn-primary compose-mail" href="${contextPath}/page/doctor/doctorMain.jsp"
								>医生</a>
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
								<li><a href="${contextPath}/page/doctor/doctorFzManage.jsp"> <i
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
			<div class="col-sm-9 animated fadeInRight">
			<div class="mail-box">
			<div class="mail-text h-200">

				<div class="summernote">
					<h2 style="margin-left:400px">医生守则</h2>
					<p style="margin-left:5px">1、不要试图扮演上帝的角色。你所受的医学教育都是最理想化治疗手段，实际上在和死神博弈的过程，我们能做到的并不多，无非只能在可以争取的范围内做到最好而已。</p>
						<p style="margin-left:5px">2、不要以为自己是超人。你不会因为学医而对疾病和劳累有免疫力，悠着点，你已经把自己的青春和热血奉献给了医学事业，犯不着再把自己命搭上。</p>
						<p style="margin-left:5px">3、护士姐姐永远是正确的。无原则的冲突尽量避免。当然，假如有原则性问题，那你也得顶回去，不过请注意方式方法，否则将使你在护士MM中的地位和魅力值显著下降。</p>
						<p style="margin-left:5px">4、上天给了你一张嘴和两个耳朵，就是让你多听少说的，多问几个为什么，少一些我认为，不会降低智商的。不要倚仗自己和某领导的特殊关系之类的。医生是自己当出来的，不是等和靠出来的，没有真本事，再好的关系也无用。</p>
						<p style="margin-left:5px">5、任何人都会犯错误，你也一样，所以，如果是人家的错误，那么警告自己不要犯同类错误；如果是你犯错误，不要执迷不悟，死不悔改，承担自己应承担的责任，当然，如果有人要把整盆脏水倒到你头上，那多余部分还是施展乾坤大挪移为妙。</p>
						<p style="margin-left:5px">6、对病人态度一定要好，如果病人难缠，那态度再好十分，同时可在心里默念其祖宗，如果病人病情危重，那态度再好上百倍，假如此时他还态度恶劣，在心里默默想他已经得到应有的报应了。在病人住院期间，不要和病人有超出医患之外的关系，即使她是天仙你也忍到出院后去追求。</p>
						<p style="margin-left:5px">7、永远把丑话说在前头，多想几个可能，自信但千万不要自负，术前谈话的最高境界是：做手术可能死，不做手术肯定死，一切与医院无关。抢救病人一定要沉着冷静，即使尿意频频也需强作镇定，如果实在害怕，建议在备好尿不湿的情况下值班。</p>
						<p style="margin-left:5px">8、出现他科问题则请有关科室会诊，并要求会诊大夫留详细会诊记录意见，并照执行，切勿班门弄斧。</p>
						<p style="margin-left:5px">9、对身上暂时无钱的、或者如外地打工真的无钱的，给他基本的药物和检查，同时，要不停地向领导上级汇报----可以越级上报，要求他们给出意见。并把意见记录在案-----病程纪录、交接班记录中。</p>
						<p style="margin-left:5px">10、遵循医学科学规律，不断更新医学理念和知识，保证医疗技术应用的科学性、合理性。</p>
						<p style="margin-left:5px">11、规范行医，严格遵循临床诊疗和技术规范，使用适宜诊疗技术和药物，因病施治，合理医疗，不隐瞒、误导或夸大病情，不过度医疗。</p>
						<p style="margin-left:5px">12、学习掌握人文医学知识，提高人文素质，对患者实行人文关怀，真诚、耐心与患者沟通。</p>
						<p style="margin-left:5px">13、认真执行医疗文书书写与管理制度，规范书写、妥善保存病历材料，不隐匿、伪造或违规涂改、销毁医学文书及有关资料，不违规签署医学证明文件</p>
						<p style="margin-left:5px">14、依法履行医疗质量安全事件、传染病疫情、药品不良反应、食源性疾病和涉嫌伤害事件或非正常死亡等法定报告职责。 </p>
						<p style="margin-left:5px">15、认真履行医师职责，积极救治，尽职尽责为患者服务，增强责任安全意识，努力防范和控制医疗责任差错事件。</p>
						<p style="margin-left:5px">16、严格遵守医疗技术临床应用管理规范和单位内部规定的医师执业等级权限，不违规临床应用新的医疗技术。 </p>
						<p style="margin-left:5px">17、严格遵守药物和医疗技术临床试验有关规定，进行实验性临床医疗，应充分保障患者本人或其家属的知情同意权医学教|育网搜集整理。</p>
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
