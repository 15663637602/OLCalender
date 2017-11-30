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
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<script type="text/javascript" src="js/respond.min.js"></script>
<script type="text/javascript" src="js/PIE_IE678.js"></script>
<![endif]-->
<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
<!--[if IE 7]>
<link href="font/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<title>Edit Event</title>

</head>
<body>
	<div class="pd-20">
		<div class="Huiform">
			<form action="updateCode2.do" method="post" id="groupform"
				target="_parent" >
				<table class="table table-bg">
					<tbody>
						<tr>
							<th class="text-r">When:</th>
							<td>${day}<span
								id="span1"></span></td>
						</tr>
						<tr style="display: none">
							<th class="text-r">id：</th>
							<td><input type="text" style="width: 200px"
								class="input-text" id="id"
								name="id" value="${id}"></td>
						</tr>
						<tr style="display: none">
							<th class="text-r">slot：</th>
							<td><input type="text" style="width: 200px"
								class="input-text" id="slot"
								name="slot" value="${slot}"></td>
						</tr>
						<tr>
							<th class="text-r">Input：</th>
							<td><textarea name="content" id="content" placeholder="e.g. Have a coffee" style="width:200px;height:200px;"></textarea></td>
						</tr>
						
						<tr>
							<th class="text-r"></th>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="btn btn-success radius" type="submit">
									<i class="icon-ok"></i> Submit
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
	<script type="text/javascript" src="layer/layer.min.js"></script>
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript" src="js/H-ui.admin.js"></script>
	<script type="text/javascript">
$(".Huiform").Validform(); 
</script>

</body>
</html>