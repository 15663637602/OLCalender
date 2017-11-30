<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow-y:hidden;">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico">
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<link href="css/H-ui.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
<title>Online Calendar</title>
<meta name="keywords" content="LYQ">
<meta name="description" content="Jake Li">
<script type="text/javascript">
	function forbid() {
		alert("asd");
	}
</script>
</head>
<body style="overflow:hidden">
	<header class="Hui-header cl"> <a class="Hui-logo l"
		title="H-ui.admin v2.1" href="/">Online Calendar</a> <a
		class="Hui-logo-m l" href="/" title="H-ui.admin">my12306</a> <span
		class="Hui-subtitle l">V1.0</span> <span class="Hui-userbox"><span
		class="c-white">${sessionScope.busername}</span> <a
		class="btn btn-danger radius ml-10" href="b_cancel.do" title="signout"><i
			class="icon-off"></i> Sign out</a></span> <a aria-hidden="false"
		class="Hui-nav-toggle" id="nav-toggle" href="#"></a> </header>
	<div class="cl Hui-main">
		<aside class="Hui-aside" style=""> <input runat="server"
			id="divScrollValue" type="hidden" value="" />
		<div class="menu_dropdown bk_2">
			<dl id="menu-user">
				<dt>
					<i class="icon-user"></i> My Calendar<b></b>
				</dt>
				<dd>
					<ul>
						<li><a _href="showEventByWeek.do" href="javascript:;">
								Calendar</a></li>

						<li><a _href="showAllEvent.do" href="javascript:;">
								Search Event</a></li>
					</ul>
				</dd>
			</dl>



		</div>
		</aside>
		<div class="dislpayArrow">
			<a class="pngfix" href="javascript:void(0);"></a>
		</div>
		<section class="Hui-article">
		<div id="Hui-tabNav" class="Hui-tabNav">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="Welcome" data-href="welcome.jsp">Welcome</span><em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default btn-small"
					href="javascript:;"><i class="icon-step-backward"></i></a><a
					id="js-tabNav-next" class="btn radius btn-default btn-small"
					href="javascript:;"><i class="icon-step-forward"></i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-articlebox">
			<div class="show_iframe">
				<div style="display:none" class="loading"></div>
				<iframe scrolling="yes" frameborder="0" src="welcome.jsp"></iframe>
			</div>
		</div>
		</section>
	</div>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
	<script type="text/javascript" src="layer/layer.min.js"></script>
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript" src="js/H-ui.admin.js"></script>

</body>
</html>