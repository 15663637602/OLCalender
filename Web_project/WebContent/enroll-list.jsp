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
<script type="text/javascript">

	function group_show(id, w, h, title, url) {
		layer_show(w, h, title, url);
	}

	var req;
	function event_del(obj, id, String) {
		layer.confirm('Are you sure you want to delete this event?', function(index) {
		    var eid = id;
			var name = String;
			if (window.XMLHttpRequest) {
				req = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				req = new ActiveXObject("Microsoft.XMLHTTP");
			}
			if (req) {
				var t = new Date();
				req.open("POST", "deleteEvent.do?time=" + t.getTime(), true);
				req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				req.onreadystatechange = callback;
				req.send("slot=" + name+"&id=" + eid);
			}
		});
	}
	function callback() {
		if (req.readyState == 4) {
			if (req.status == 200) {
				parseMessage();
			} else {
				layer.msg('error!', 1);
			}
		}
	}
	function parseMessage() {
		layer.msg('deleted!', 1);
		window.location.href = "showEventByWeek.do";
	}

</script>
</head>
<body>
	<nav class="Hui-breadcrumb">
	<i class="icon-home"></i> Welcome <span class="c-gray en">&gt;</span> My
	Calendar <span class="c-gray en">&gt;</span> Search Event <a
		class="btn btn-success radius r mr-20"
		style="line-height:1.6em;margin-top:3px"
		href="javascript:location.replace(location.href);" title="refresh"><i
		class="icon-refresh"></i></a></nav>
	<div class="pd-20">
		<div class="text-c">
			<form action="selectEvent.do" method="post">
				Please enter a query： <input type="text" class="input-text" style="width:250px"
					placeholder="Please enter an event title" id="event" name="event">&nbsp;&nbsp;&nbsp;
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
			 <span class="r">Current：<strong>${list_size}</strong>
				items
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
				<c:forEach items="${CodeList}" var="temp">
					<tr class="text-c" height="100">
						<td>${temp.datestr}</td>
						<td>${temp.s0to4}<a title="Event" href="javascript:;"
							onClick="user_edit('4','550','','Event','updateCode.do?id=${temp.id}&slot=1&day=${temp.datestr}')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-edit"></i></a> <a title="delete" href="javascript:;"
							onClick="event_del(this,'${temp.id}','1')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-trash"></i></a></td>
						<td>${temp.s4to8}<a title="Event" href="javascript:;"
							onClick="user_edit('4','550','','Event','updateCode.do?id=${temp.id}&slot=2&day=${temp.datestr}')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-edit"></i></a> <a title="delete" href="javascript:;"
							onClick="event_del(this,'${temp.id}','2')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-trash"></i></a></td>
						<td>${temp.s8to12}<a title="Event" href="javascript:;"
							onClick="user_edit('4','550','','Event','updateCode.do?id=${temp.id}&day=${temp.datestr}&slot=3')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-edit"></i></a> <a title="delete" href="javascript:;"
							onClick="event_del(this,'${temp.id}','3')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-trash"></i></a></td>
						<td>${temp.s12to16}<a title="Event" href="javascript:;"
							onClick="user_edit('4','550','','Event','updateCode.do?id=${temp.id}&slot=4&day=${temp.datestr}')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-edit"></i></a> <a title="delete" href="javascript:;"
							onClick="event_del(this,'${temp.id}','4')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-trash"></i></a></td>
						<td>${temp.s16to20}<a title="Event" href="javascript:;"
							onClick="user_edit('4','550','','Event','updateCode.do?id=${temp.id}&slot=5&day=${temp.datestr}')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-edit"></i></a> <a title="delete" href="javascript:;"
							onClick="event_del(this,'${temp.id}','5')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-trash"></i></a></td>
						<td>${temp.s20to24}<a title="Event" href="javascript:;"
							onClick="user_edit('4','550','','Event','updateCode.do?id=${temp.id}&slot=6&day=${temp.datestr}')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-edit"></i></a> <a title="delete" href="javascript:;"
							onClick="event_del(this,'${temp.id}','6')"
							class="ml-5" style="text-decoration:none"><i
								class="icon-trash"></i></a></td>
					</tr>
				</c:forEach>
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