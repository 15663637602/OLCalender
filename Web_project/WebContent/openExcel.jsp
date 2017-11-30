<%@ page language="java" contentType="application/msexcel" pageEncoding="utf-8"%>
<% response.setHeader("Content-disposition","inline; filename=My Calendar.xls");%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<table>
			<thead>
				<tr>
					<th>Date</th>
					<th>12am - 4am</th>
					<th>4am - 8am</th>
					<th>8am - 12pm</th>
					<th>12pm - 4pm</th>
					<th>4pm - 8pm</th>
					<th>8pm - 12am</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${CodeList}" var="temp">
					<tr>
						<td>${temp.datestr}</td>
						<td>${temp.s0to4}</td>
						<td>${temp.s4to8}</td>
						<td>${temp.s8to12}</td>
						<td>${temp.s12to16}</td>
						<td>${temp.s16to20}</td>
						<td>${temp.s20to24}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>