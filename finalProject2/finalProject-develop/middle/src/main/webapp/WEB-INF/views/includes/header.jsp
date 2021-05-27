<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>다있소</title>

<!-- Bootstrap Core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugin/slick/slick.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugin/slick/slick-theme.css"
	type="text/css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">

<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/resources/plugin/slick/slick.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/js/slider.js"
	type="text/javascript"></script>

</head>

<body>
	<!-- 헤더 검색부분 -->
	<header class="header-main">
	<div class="header-main__content content-center">
		<a href="main.html">
			<h1>Shop</h1>
		</a>
		<div class="header-input">
			<input type="text" placeholder="Search" id="header-input__v1">
			<button>
				<i class="fas fa-search fa-lg"></i>
			</button>
		</div>

		<div class="header-btn">
			<a href="#" class="header-btn__text"> Sale </a> <a href="#"
				class="header-btn__text"> MyShop </a> <a href="#"
				class="header-btn__text"> Chat </a> <a href="#"
				class="header-btn__text"> Login </a>
		</div>
	</div>
	</header>


	<div id="page-wrapper" style="margin-right: 250px; margin-top: 30px; margin-bottom: 30px;">

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>