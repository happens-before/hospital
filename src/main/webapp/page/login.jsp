<%String contextPath = request.getContextPath();
request.setAttribute("contextPath",contextPath);%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>登录</title>
    <link href="${contextPath}/css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="${contextPath}/css/font-awesome.min93e3.css" rel="stylesheet">

    <link href="${contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${contextPath}/css/style.min862f.css" rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name" style="margin-left: -160px">Hospital</h1>

            </div>
            <h3>预约挂号系统</h3>

                <div class="form-group">
                    <input type="text" class="form-control" placeholder="用户名" required="" id="name">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" required="" id="password">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b" onclick="login()">登 录</button>

                <p class="text-muted text-center"> <a href="${contextPath}/page/register.jsp">注册一个新账号</a>
                </p>

        </div>
    </div>
    <script src="${contextPath}/js/jquery.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script src="${contextPath}/js/plugins/layer/layer.min.js"></script>
    <script src="${contextPath}/js/demo/layer-demo.min.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    
    
    
<script>
var contextPath="<%=contextPath%>";

function login(){
	var name=$("#name").val();
	var password=$("#password").val();
	$.ajax({
		url : contextPath + "/Login/login",
		type : "POST",
		data : {"name":name,"password":password},
		dataType : "text",
		success : function(datas) {
			console.log(datas);
			if(datas==1){
				window.location.href="${contextPath}/Login/loginInCustomer.do"
			}
			else if(datas==2){
				window.location.href="${contextPath}/Login/loginInDoctor.do"
			}
			else if(datas==3){
				window.location.href="${contextPath}/Login/loginInAdmin.do"
			}
			else{
				parent.layer.msg('用户名或密码错误!');
				window.location.reload();
			}
		}
	});
}

</script>
    
    
</body>

</html>
