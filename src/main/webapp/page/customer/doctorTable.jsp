<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="mail-box">
	<table class="table table-hover table-mail">
		<tbody>
			<tr class="unread">
				<td>科室</td>
				<td>姓名</td>
				<td>性别</td>
				<td>职位</td>
				<td>简介</td>
			</tr>
			<c:forEach items="${tabledata}" var="list">
			<tr class="read">
				<td>${list['department'] }</td>
				<td>${list['dname'] }</td>
				<td>${list['sex'] }</td>
				<td>${list['position'] }</td>
				<td>${list['summary'] }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>