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
    <link href="${contextPath}/css/font-awesome.min93e3.css" rel="stylesheet">
    <link href="${contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
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
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>医院信息（请不要随意修改）</h5>
                    </div>
                    <div class="ibox-content">
                        <form method="get" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">医院名称</label>

                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="name" value="">${name }
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">医院成立时间</label>

                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="buildTime">${buildTime }
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">医院院长</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="header">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">医院地址</label>

                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="address">${address }
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">联系电话</label>

                                <div class="col-sm-10">
                                    <input type="text"  class="form-control" id="telephone">${telephone }
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">医院邮箱</label>${email }

                                <div class="col-sm-10">
                                    <input type="email"  class="form-control" id="email">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">邮编</label>

                                <div class="col-sm-10">
                                    <input type="text"  class="form-control" id="youbian">${youbian }
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="button" style="margin-left: 300px;margin-top: 20px;" onclick="saveHospitalInfo()">保存内容</button>
                                </div>
                            </div>
                            </form>
                    </div>
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
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    
    <script>
    
    var contextPath="<%=contextPath%>";
    
    window.onload =function(){
    	
    	$.ajax({
			url : contextPath + "/Admin/queryHospitalInfo",
			type : "POST",
			dataType : "text",
			success : function(datas) {
				console.log(JSON.parse(datas));
				/* 将json字符串转为json对象 */
				datas=JSON.parse(datas);
				for(var i in datas){
					$("#name").val(datas.name);
					$("#address").val(datas.address);
					$("#email").val(datas.email);
					$("#youbian").val(datas.youbian);
					$("#telephone").val(datas.telephone);
					$("#header").val(datas.header);
					$("#buildTime").val(datas.buildTime);
				}
			}
		});
	
    	
    }
    
    function saveHospitalInfo(){
    	
    		var name=$("#name").val();
    		var address=$("#address").val();
    		var email=$("#email").val();
    		var youbian=$("#youbian").val();
    		var telephone=$("#telephone").val();
    		var header=$("#header").val();
    		var buildTime=$("#buildTime").val();
    		
    		$.ajax({
    			url : contextPath + "/Admin/saveHospitalInfo",
    			type : "POST",
    			data : {"name":name,"address":address,"email":email,"youbian":youbian,"telephone":telephone,"header":header,"buildTime":buildTime},
    			dataType : "text",
    			success : function(datas) {
    				if(datas>0){
    					parent.layer.msg('保存成功！');
    				}
    			}
    		});
    	
    }
    
    </script>
    
    
</body>
</html>
