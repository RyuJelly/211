<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

	<main>
	<div class="main-wrap">
		<div class="main-slide">
			<!-- slide bar -->
			<div id="slider-div" class="content-center">
				<div class="slider-img">
					<img src="../assets/img/building-1246260_1280.jpg" alt="img1">
				</div>
				<div class="slider-img">
					<img src="../assets/img/computer-4484282_1280.jpg" alt="img2">
				</div>
				<div class="slider-img">
					<img src="../assets/img/meal-5921491_1280.jpg" alt="img3">
				</div>
				<div class="slider-img">
					<img src="../assets/img/nike-5126389_1280.jpg" alt="img4">
				</div>
			</div>
		</div>
		<section class="main-body content-center"> <!-- 상단 추천 상품 -->
		<div class="main-recomm">
			<div class="main-recomm__box">
				<a href="#" class="recomm-box">
					<div></div>
				</a> <a href="#" class="recomm-box">
					<div></div>
				</a> <a href="#" class="recomm-box">
					<div></div>
				</a>

			</div>
		</div>
		<!-- 상품 목록 -->
		<div class="main-product">
			<div class="main-product__list">

				<c:forEach items="${list}" var="product">
					<a href="product.html" class="list-box">
						<div class="list-box__img">							
							<img src="C:/upload/2021/05/4/1.jpg"
								alt="상품이미지">
						</div>

						<div class="list-box__text">
							<div class="list-box__title">
								<c:out value="${product.title}" />
							</div>
							<div class="list-box__info">
								<div class="list-box__price">
									<c:out value="${product.price}" />
								</div>
								<div class="list-box__time">
									<span><fmt:formatDate pattern="yyyy-MM-dd"
											value="${product.create_date}" /></span>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>

			</div>
		</div>
		</section>
	</div>
	</main>

	<footer>
	<div class="main-footer">
		<!-- <div class="main-footer__list">
                <a href="#">공지사항</a>
                <a href="#">신고</a>
                <a href="#">자주묻는질문</a>
                <a href="#">1:1문의하기</a>
            </div> -->
		<div class="main-footer__info">
			<div class="main-footer__intro">
				<div class="footer-intro__title">
					<h1>Shop</h1>
				</div>

				<div class="footer-intro__content notice">
					<a href="notice.html"> <span>공지사항</span>
					</a>
				</div>

				<div class="footer-intro__content report">
					<a href="#"> <span>신고</span>
					</a>
				</div>

				<div class="footer-intro__content question">
					<a href="#"> <span>자주묻는질문</span>
					</a>
				</div>

			</div>

			<div class="main-footer__detail">
				<div class="footer-detail__text">
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Laborum officiis ullam deleniti voluptas iure recusandae illum
						labore, voluptatibus atque dolores velit tenetur molestiae ad
						blanditiis necessitatibus maiores enim illo animi!</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Tempore perferendis aliquam, quod pariatur commodi vitae. Beatae
						doloribus placeat, quidem similique deserunt asperiores
						dignissimos cumque, consequatur, dolores odit illum quia odio.</p>
				</div>
			</div>

		</div>
	</div>
	</footer>
</body>
</html>