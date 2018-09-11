<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="tabledata">
	<div class="project-list">

		<button type="submit" class="btn btn-sm btn-primary"
			onclick="unsureYuyue()">未确认预约</button>
		<button type="submit" class="btn btn-sm btn-primary"
			onclick="sureYuyue()">已确认预约</button>
		<table class="table table-hover">
			<tbody>
				<tr class="unread">
					<td class="project-title">
						<div>预约人姓名</div>
					</td>
					<td class="project-title">
						<div>预约人年龄</div>
					</td>
					<td class="project-title">
						<div>预约人性别</div>
					</td>
					<td class="project-title">
						<div>预约日期</div>
					</td>
					<td class="project-title">
						<div>预约时间</div>
					</td>
					<td class="project-title">
						<div>是否确认预约</div>
					</td>
				</tr>
				<c:forEach items="${tabledata}" var="list">
					<tr>
						<td class="project-title">
							<div>${list['cname'] }</div>
						</td>
						<td class="project-title">
							<div>${list['age'] }</div>
						</td>
						<td class="project-title">
							<div>${list['sex'] }</div>
						</td>
						<td class="project-title">
							<div>${list['ydate'] }</div>
						</td>
						<td class="project-title">
							<div>${list['ytime'] }</div>
						</td>
						<c:if test="${list['isok'] eq '预约中'}">
							<td class="project-title">
								<div id="${list['yyh'] }">
									<button type="button" class="btn btn-sm btn-primary"
										onclick="success(${list['yyh'] })">确认</button>
									<button type="button" class="btn btn-danger btn-sm"
										onclick="fail(${list['yyh'] })">拒绝</button>
								</div>
							</td>
						</c:if>
						<c:if test="${list['isok'] eq '待确诊'}">
							<td class="project-title">
								<div style="margin-left: 22px;">已确认</div>
							</td>
						</c:if>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>
