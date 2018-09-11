<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="tabledata">
	<div class="project-list">

		<button type="submit" class="btn btn-sm btn-primary" onclick="unJz()">待就诊</button>
		<button type="submit" class="btn btn-sm btn-primary" onclick="jz()">已就诊</button>
		<table class="table table-hover">
			<tbody>
				<tr class="unread">
					<td class="project-title">
						<div>预约人姓名</div>
					</td>
					<td class="project-title">
						<div style="margin-left: 26px;">预约人年龄</div>
					</td>
					<td class="project-title">
						<div style="margin-left: 26px;">预约人性别</div>
					</td>
					<td class="project-title">
						<div>预约日期</div>
					</td>
					<td class="project-title">
						<div style="margin-left: 26px;">预约时间</div>
					</td>
					<td class="project-title">
						<div>是否确认就诊</div>
					</td>
				</tr>
				<c:forEach items="${tabledata}" var="list">
					<tr>
						<td class="project-title">
							<div>${list['cname'] }</div>
						</td>
						<td class="project-title">
							<div style="margin-left: 50px;">${list['age'] }</div>
						</td>
						<td class="project-title">
							<div style="margin-left: 50px;">${list['sex'] }</div>
						</td>
						<td class="project-title">
							<div>${list['ydate'] }</div>
						</td>
						<td class="project-title">
							<div style="margin-left: 40px;">${list['ytime'] }</div>
						</td>
						<c:if test="${list['isok'] eq '待确诊'}">
							<td class="project-title">
								<div id="${list['yyh'] }">
									<button type="button" class="btn btn-sm btn-primary"
										onclick="sureJz(${list['yyh'] })">确认就诊</button>
									<button type="button" class="btn btn-sm btn-primary"
										onclick="needFz(${list['yyh'] })">还需复诊</button>
								</div>
							</td>
						</c:if>
						<c:if test="${list['isok'] eq '已就诊'}">
							<td class="project-title">
								<div style="margin-left: 5px;">已就诊，无需复诊</div>
							</td>
						</c:if>
						<c:if test="${list['isok'] eq '已就诊，需复诊'}">
							<td class="project-title">
								<div style="margin-left: 5px;">已就诊，需复诊</div>
							</td>
						</c:if>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>
