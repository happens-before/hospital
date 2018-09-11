<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="tabledata">
	<div class="project-list">
		<table class="table table-hover">
			<tbody>
				<c:forEach items="${tabledata}" var="list">
					<tr>
						<td class="project-title">
							<div>${list['dname'] }</div>
						</td>
						<td class="project-title">
							<div>${list['sex'] }</div>
						</td>
						<td class="project-title">
							<div>${list['summary'] }</div>
						</td>
						<td class="project-title">
							<div>${list['department'] }</div>
						</td>
						<td class="project-title">
							<div>${list['position'] }</div>
						</td>
						<td class="project-actions">
							<button id="${list['jnumber'] }" onclick="yuyue(${list['jnumber'] })">预约</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
