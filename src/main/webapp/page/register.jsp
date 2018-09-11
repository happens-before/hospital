<%String contextPath = request.getContextPath();
request.setAttribute("contextPath",contextPath);%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>注册</title>

	<link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="${contextPath}/css/font-awesome.min93e3.css" rel="stylesheet">
    <link href="${contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${contextPath}/css/style.min862f.css" rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name" style="margin-left: -160px">Hospital</h1>

            </div>
            <h3>欢迎注册</h3>
            <p>创建一个新账户</p>
            
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入用户名" required="" id="name">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="请输入密码" required="" id="password">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="请再次输入密码" required="" id="password2">
                </div>
                 <div class="form-group">
                    <input type="text" class="form-control" placeholder="请如实输入角色名称" required="" id="definition">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b" onclick="register()">注 册</button>

                <p class="text-muted text-center"><small>已经有账户了？</small><a href="${contextPath}/index.jsp">点此登录</a>
                </p>

        </div>
    </div>
    <script src="${contextPath}/js/jquery.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script src="${contextPath}/js/plugins/layer/layer.min.js"></script>
    <script src="${contextPath}/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${contextPath}/js/demo/layer-demo.min.js"></script>
    <script>
    var contextPath="<%=contextPath%>";
    
    function register(){
    	
    		var name=$("#name").val();
		var password=$("#password").val();
		var password2=$("#password2").val();
		var definition=$("#definition").val();
		
		$.ajax({
			url : contextPath + "/Login/register",
			type : "POST",
			data : {"name":name,"password":password,"password2":password2,"definition":definition},
			dataType : "text",
			success : function(datas) {
				if(datas==0){
					parent.layer.msg('两次输入的密码不一致！');
					window.location.reload();
				}
				else{
					window.location.href="${contextPath}/Login/index.do"
				}
			}
		});
    	
    }
       
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>
