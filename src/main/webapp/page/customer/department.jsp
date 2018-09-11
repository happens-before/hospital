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


    <title>科室查询</title>

    <link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="${contextPath}/css/font-awesome.min93e3.css" rel="stylesheet">
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
            <div class="col-sm-3">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>儿科</h5>
                    </div>
                    <div class="ibox-content">
                       
                        <h4>部门简介</h4>
                        <p>
                            儿科现有医务人员责任心强、经验丰富，能为患儿提供科学合理的治疗，努力让家长放心、满意。能开展儿科常见病、多发病的诊断治疗和小儿疾病的预防及健康指导；小儿喂养指导、计划免疫指导、常见疾病的家庭防治和护理等。配有微量注射泵、雾化吸入器和心电监护仪等儿科专业治疗、抢救设备。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                12
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                                1楼 
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>外科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            在普外、肝胆外科、泌尿外科、骨科等专业方面积累了丰富的经验，采用手法复位，小夹板、石膏外固定治疗四肢骨折。诊治各种痔疮、肛瘘、肛裂及各种肛肠疾病，效果好，痛苦小，无需住院。可开展全消化系统外科手术、胆囊切除术、胃穿孔修补术、肠粘连松解术、肝囊肿开窗引流术以及急腹症、胆囊及胆管结石、腹股沟疝、泌尿系结石、前列腺增生、肿瘤的手术。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                24
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                               3楼
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>内科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            科室为包含心血管、神经内科、呼吸内科、消化内科的综合大内科，技术力量强，现有临床医生均系正规院校毕业。科室拥有动态心电及血压监测、电生理检测仪、床边监护仪、肺功能检测仪、呼吸机、电子胃镜等先进设备，以消化、呼吸、疑难重症等系统疾病为重点。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                21
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                                3楼
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>妇产科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            病区环境优雅舒适，科室设备齐全。开展药物流产、人工流产、引产，妇科及产科常见病、多发病、并发症的诊治处理；各种难产处理；围产期保健；新生儿窒息抢救及护理；子宫肌瘤、卵巢囊肿、宫外孕的手术治疗。为母亲提供爱婴技术指导以及新生儿免疫接种等服务。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                20
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                               2楼
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>中医康复科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            中医康复科由中医、针灸、理疗、按摩、医学康复组成。科室设备齐全，有超短波治疗仪、超声波治疗仪、紫外线治疗仪、磁疗治疗仪、中频治疗仪、中药熏蒸床、微波治疗仪、等。开展了支气管哮喘、颈椎病、腰椎病、中风后遗症，面瘫、各种头痛，腰腿痹症以及各种神经、内分泌系统疾病的治疗。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                8
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">预算所在楼层</div>
                                1楼
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>骨科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            现骨科分为脊柱外科、创伤骨科(手显微外科)、关节外科(关节镜)三个亚专业组，能开展四肢骨折及矫形，脊柱骨折及相关疾病，髋、膝、肩关节置换等1000余种手术及骨肿瘤、骨质疏松等相关疾病的诊疗。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                25
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                                4楼
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox">
                    <div class="ibox-title">

                        <h5>眼科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            眼科下设屈光、白内障、眼底病、斜视与弱视、泪道病、青光眼、眼眶病与眼肿瘤、角膜病等专业组，其中屈光、白内障、眼底病、泪道病和青光眼专业组是眼科传统的优势专业。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                68
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                2个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                                3楼
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>口腔科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            口腔科是集医疗、教学、科研为一体的现代化综合科室。  设有口腔牙体牙髓病专业、牙周病专业、口腔粘膜病专业、儿童口腔专业、口腔修复专业、口腔颌面外科专业、口腔正畸专业和口腔种植专业。科室设备先进，拥有综合治疗椅20台，曲面断层机、数码x光照片机、根管长度测量仪、镍钛机动根管预备机，热牙胶充填机、冷光美白机等各种国内外先进医疗设备。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                16
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                                2楼
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>急诊科</h5>
                    </div>
                    <div class="ibox-content">
                        <h4>部门简介</h4>
                        <p>
                            急诊科配备有各种国内外最先进的抢救设备，能为广大市民提供24小时不间断的各临床科室的急诊急救服务(急诊内科、急诊外科、急诊妇产科、急诊儿科、急诊口腔科、急诊眼科、急诊耳鼻喉科、急诊肛肠科)，急诊科将用最精湛优质的技术、最先进的设备、最快捷的时间、最人文的服务为心肌梗塞、心绞痛、心律失常、各类心衰、急性中毒、脑出血、脑梗塞、消化道大出血、呼吸衰竭、各种危重创伤和车祸伤以及妇产、儿、口腔、眼耳鼻喉、肛肠等各类危急重患者提供院前和院内急诊急救服务。
                        </p>
                        <div class="row  m-t-sm">
                            <div class="col-sm-4">
                                <div class="font-bold">在职医生</div>
                                53
                            </div>
                            <div class="col-sm-4">
                                <div class="font-bold">成立时间</div>
                                10个月
                            </div>
                            <div class="col-sm-4 text-right">
                                <div class="font-bold">所在楼层</div>
                                1楼
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="${contextPath}/js/jquery.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script src="${contextPath}/js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>
