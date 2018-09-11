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

    <title>医生查询</title>

    <link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="${contextPath}/css/font-awesome.min93e3.css" rel="stylesheet">
    <link href="${contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${contextPath}/css/style.min862f.css" rel="stylesheet">

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
                <div class="mail-box-header">

                    <form class="pull-right mail-search">
                        <div class="input-group">
                            <input type="text" class="form-control input-sm" name="search" placeholder="根据科室准确查询" id="department">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-sm btn-primary" onclick="searchDoctor()">
                                    搜索
                                </button>
                            </div>
                        </div>
                  	</form>
                    <h2>
                    			医生查询
                		</h2>
                    <div class="mail-tools tooltip-demo m-t-md">
                        <div class="btn-group pull-right">
                            <button class="btn btn-white btn-sm"><i class="fa fa-arrow-left"></i>
                            </button>
                            <button class="btn btn-white btn-sm"><i class="fa fa-arrow-right"></i>
                            </button>

                        </div>
                    </div>
                </div>
                <div id="doctorTable">
                </div>
            </div>
        </div>
    </div>
    <script src="${contextPath}/js/jquery.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script src="${contextPath}/js/content.min.js?v=1.0.0"></script>
    <script src="${contextPath}/js/plugins/iCheck/icheck.min.js"></script>
    <!-- <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script> -->
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    
    <script>
    
    		var contextPath="<%=contextPath%>";
    		
    		 $(function(){
    		    	
    		    	$.ajax({
    					url : contextPath + "/Customer/showPage",
    					type : "POST",
    					dataType : "text",
    					success : function(datas) {
    						$("#doctorTable").html(datas);
    						
    					}
    				});
    		    	});
    
    		function searchDoctor(){
    			
    			var department=$("#department").val();
    			
    			$.ajax({
        			url : contextPath + "/Customer/searchDoctor",
        			type : "POST",
        			data : {"department":department},
        			dataType : "text",
        			success : function(datas) {
        				$("#doctorTable").html(datas);
        			}
        		});
    		} 
    
    </script>
</body>

</html>
