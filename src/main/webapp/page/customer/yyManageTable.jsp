<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="tabledata">
	<div class="project-list">
		<button type="button" class="btn btn-sm btn-primary"
			onclick="yuyueIng()">预约中</button>
		<button type="button" class="btn btn-sm btn-primary"
			onclick="yuyueSuc()">预约成功</button>
		<button type="button" class="btn btn-sm btn-primary"
			onclick="yuyueFai()">预约失败</button>
		<table class="table table-hover">
			<tbody>
				<tr class="unread">
					<td class="project-title">
						<div>预约号</div>
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
						<td class="project-title">
							<div>${list['yyh'] }</div>
						</td>
						<td class="project-title">
							<div>${list['dname'] }</div>
						</td>
						<td class="project-title">
							<div>${list['ydate'] }</div>
						</td>
						<td class="project-title">
							<div>${list['ytime'] }</div>
						</td>
						<td class="project-title">
							<div>${list['isok'] }</div>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>
