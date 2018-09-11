
<%
	String contextPath = request.getContextPath();
	request.setAttribute("contextPath", contextPath);
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>医院首页</title>

<link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
<link href="${contextPath}/css/font-awesome.min93e3.css"
	rel="stylesheet">
<link href="${contextPath}/css/animate.min.css" rel="stylesheet">
<link href="${contextPath}/css/style.min862f.css" rel="stylesheet">


</head>

<body class="gray-bg">
	<div class="row  border-bottom white-bg dashboard-header">
		<div class="col-sm-12">
				<a href="${contextPath}/page/login.jsp" class="btn btn-sm btn-primary" style="width:1388px;margin-bottom: 20px;margin-top: -20px;">登陆或注册</a>
		</div>
		<div class="col-sm-12">
			<img src="${contextPath}/img/c.jpg" width="200%"
				style="max-width: 1390px;margin-top: -20px;"> <br>
		</div>
		<div class="col-sm-6">
			<h2>医院介绍</h2>
			<p>
				XX医院（简称浙医二院）是一所集医疗、教学、科研于一体的大型综合性研究型医院，以学科门类齐全、特色专科鲜明、技术力量雄厚、多学科综合优势强大、管理水平精细享誉海内外。1989年，全国首家通过三级甲等医院评审；2013年，全球首批通过JCI学术医学中心评审；2016年，通过JCI学术医学中心复评审。
			</p>
			<br>
			<p>医院创建于1869年，其前身为英国圣公会设立的XX医院，20世纪初被国内外同行誉为“远东最好的医院”
				；同时也是浙江省多个学科的发源地，包括骨科、神经内外科等等；1885年至1925年，医院附设的广济医校是国内最早的西医学校之一。</p>
			<br>
			<p>
				医院始终保持着国际视野，致力于成为全球化医疗的引领者：率先在国内探索国际远程医学的应用，拥有国内最大的国际远程会诊中心和四级远程网络平台，与国际顶级的医疗机构对接，包括UCLA、Johns
				Hopkins、M.D.Anderson等，常态化地开展国际远程病理、放射会诊，让老百姓不出国门就能享受到国际专家的诊疗服务，已会诊病例累计两千余例；与UCLA、科罗拉多大学联合成立国际联合住院医师培训中心，获美国毕业后医学教育委员会（ACGME）认可，已有多位美国青年医师来我院培训；与美国哈佛医学院麻省总医院有20余年的友好合作关系，并于2006年合作建立中国首家“高级灾难医学救援培训中心”。与多家国际保险公司签订直接结算协议，包括招商信诺（CIGNA）、平安保险（Pingan）、国际SOS等。
			</p>
			<br>
		</div>
		<div class="col-sm-6">
			<h2>
				院长寄语
				</h4>
				<ol>
					<p>
						身为院长，我期待有一天患者们能这样描述XX医院—“是希望和重生的灯塔”，即使这条道路充满艰辛和挑战，我们的信条和承诺始终围绕“患者与服务对象至上”，我们依然不懈努力，坚持每日提供优质、细致的医疗服务，相信终有一天能达到成功的彼岸犹如灯塔般照耀每一位患者，成为他们值得信赖和安心的目的地医院。</p>
					<br>
					<p>
						在这里，患者安全是每位员工的责任，患者需要我们而来，他们的信任是我们的荣耀。患者把他们的健康甚至生命交托到我们的手里，为了确保他们得到最高品质的医疗服务。我们引入了“质量与安全”的管理理念，通过了JCI学术医疗中心的评审，现在每一位员工，都将患者安全作为首要责任贯彻到每日的工作中。</p>
					<br>
					<p>在这里，倾听和满足患者的需求，我们倡导创新理念，发展创新技术，提供先进的设备和设施用于疑难杂症的治疗。微创、移植、转化型技术是医学发展的必然，重点专科、重点学科的创建是医疗质量持续改进的关键。优质护理病房的建设，专科护理团队的打造，这一切都是为了改善患者服务质量，满足每位患者不同的需求。</p>
				</ol>
		</div>

	</div>
	<div class="wrapper wrapper-content">
		<div class="row">
			
			<div class="col-sm-4">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>最新新闻</h5>
					</div>
					<div class="ibox-content no-padding">
						<div class="panel-body">
							<div class="panel-group" id="version">
								<div class="panel panel-default">
									<div class="panel-heading">
										<div id="titleTable">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>新闻详情</h5>
					</div>
					<div class="ibox-content">
					<div id="newsTable"></div>

					</div>
				</div>
			</div>
			<div class="col-sm-12">

				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>医院信息</h5>

					</div>
					<div class="ibox-content">
						<p>
							<i class="fa fa-hospital-o"></i> 医院地址：xx市xx区xx路xx号
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<i class="fa fa-phone"></i> 电话：0000-0000000</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<i class="fa fa-envelope"></i> 邮箱：xxhotel@hotel.com
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<i class="fa fa-envelope-o"></i> 邮编：313200
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script id="welcome-template" type="text/x-handlebars-template">
       
    </script>
	<script src="${contextPath}/js/jquery.min.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
	<script src="${contextPath}/js/plugins/layer/layer.min.js"></script>
	<script src="${contextPath}/js/content.min.js"></script>
	<script src="${contextPath}/js/welcome.min.js"></script>
	
	<script>
	
	var contextPath="<%=contextPath%>";
	
	$(function() {
		
		$.ajax({
			url : contextPath + "/Login/AllInfo",
			type : "POST",
			dataType : "text",
			success : function(datas) {
				$("#titleTable").html(datas);
			}
		});
	});
	
	function watch(a){
		
		var newsId=a;
		
		$.ajax({
			url : contextPath + "/Login/watchNews",
			type : "POST",
			data:{"newsId":newsId},
			dataType : "text",
			success : function(datas) {
				$("#newsTable").html(datas);
			}
		});
		
	}
	
	
	</script>
</body>
		
</html>