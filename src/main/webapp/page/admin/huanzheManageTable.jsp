<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="tabledata">
	<div class="project-list">
		
		<table class="table table-hover">
			<tbody>
				<tr class="unread">
					<td class="project-title">
						<div>预约号</div>
					</td>
					<td class="project-title">
						<div>预约人</div>
					</td>
					<td class="project-title">
						<div>预约人年龄</div>
					</td>
					<td class="project-title">
						<div>预约人性别</div>
					</td>
					<td class="project-title">
						<div>预约人手机</div>
					</td>
					<td class="project-title">
						<div>预约医生</div>
					</td>
					<td class="project-title">
						<div>预约日期</div>
					</td>
					<td class="project-title">
						<div>预约时间</div>
					</td>
					<td class="project-title">
						<div>预约结果</div>
					</td>
				</tr>
				<c:forEach items="${tabledata}" var="list">
					<tr>
						<c:if test="${list['isok'] ne '预约失败'}">
							<td class="project-title">
								<div>${list['yyh'] }</div>
							</td>
							<td class="project-title">
								<div>${list['cname'] }</div>
							</td>
							<td class="project-title">
								<div style="margin-left: 24px;">${list['age'] }</div>
							</td>
							<td class="project-title">
								<div style="margin-left: 24px;">${list['sex'] }</div>
							</td>
							<td class="project-title">
								<div>${list['phone'] }</div>
							</td>
							<td class="project-title">
								<div style="margin-left: 10px;">${list['dname'] }</div>
							</td>
							<td class="project-title">
								<div>${list['ydate'] }</div>
							</td>
							<td class="project-title">
								<div style="margin-left: 10px;">${list['ytime'] }</div>
							</td>

							<td class="project-title">
								<div>${list['isok'] }</div>
							</td>
						</c:if>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>
