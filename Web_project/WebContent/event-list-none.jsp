<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
<title>Event</title>
</head>
<body>
	<nav class="Hui-breadcrumb"> <i class="icon-home"></i> Index <span
		class="c-gray en">&gt;</span> My Calendar <span class="c-gray en">&gt;</span>
	Search Event <a class="btn btn-success radius r mr-20"
		style="line-height:1.6em;margin-top:3px"
		href="javascript:location.replace(location.href);" title="refresh"><i
		class="icon-refresh"></i></a></nav>
	<div class="pd-20">
		<div class="text-c">
			<form action="selectEvent.do" method="post">
				Please enter a query： <input type="text" class="input-text"
					style="width:250px" placeholder="Please enter an event title"
					id="event" name="event">&nbsp;&nbsp;&nbsp;
				<button type="submit" class="btn btn-success">
					<i class="icon-search"></i> Search Event
				</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="showAllEvent.do"><button
						type="button" class="btn btn-success">
						<i class="icon-search"></i> All
					</button></a>
			</form>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="r">Current：<strong>0</strong> items
			</span>
		</div>
		<table class="table table-border table-bordered table-hover table-bg">
			<thead>
				<tr class="text-c">
					<th>Date</th>
					<th width="14%">12am - 4am</th>
					<th width="14%">4am - 8am</th>
					<th width="14%">8am - 12pm</th>
					<th width="14%">12pm - 4pm</th>
					<th width="14%">4pm - 8pm</th>
					<th width="14%">8pm - 12am</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-c">
					<td colspan="8">No results</td>
				</tr>
			</tbody>
		</table>
		<!--   <div id="pageNav" class="pageNav"></div> -->
	</div>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="layer/layer.min.js"></script>
	<script type="text/javascript" src="js/pagenav.cn.js"></script>
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript"
		src="plugin/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/H-ui.admin.js"></script>

</body>
</html>