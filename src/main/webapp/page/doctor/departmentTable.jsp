<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="tabledata">
	<div class="project-list">
		<table>
			<tbody>
				<c:forEach items="${tabledata}" var="list">
					<body class="gray-bg">
						<div class="wrapper wrapper-content animated fadeInRight">
							<div class="row">
								<div class="col-sm-6">
									<div class="contact-box">
											<div class="col-sm-4">
												<div class="text-center">
													<img alt="image" class="img-circle m-t-xs img-responsive"
														src="${contextPath}/hospital/img/timg.jpeg">
												</div>
											</div>
											<div class="col-sm-8">
												<h3>
													<strong>${list['dname'] }</strong><br>
												</h3>

												<c:if test="${list['sex'] eq '女'}">
													<p>
														<i class="fa fa-venus"></i> 女
													</p>
												</c:if>
												<c:if test="${list['sex'] eq '男'}">
													<p>
														<i class="fa fa-mars"></i> 男
													</p>
												</c:if>

												<address>
													<strong>${list['position'] }</strong><br>
													<br>邮件:${list['email'] }<br>
													<br> 电话:${list['phone'] }<br>
													<br>简介:${list['summary'] }
												</address>
											</div>
											<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</body>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
