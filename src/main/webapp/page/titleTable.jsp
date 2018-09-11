<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="tabledata">
	<div class="project-list">

		<table class="table table-hover">
			<tbody>
				<c:forEach items="${tabledata}" var="list">
					<tr class="unread">
						<td onclick="watch(${list['newsId']})">${list['title']}</td>
						<td>${list['time']}</td>
						</h5>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
