<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugin/slick/slick.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugin/slick/slick-theme.css" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" type="text/css">
    <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/resources/plugin/slick/slick.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/resources/js/slider.js" type="text/javascript"></script>
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
                <a href="#" class="header-btn__text">
                    Sale
                </a>
                <a href="#" class="header-btn__text">
                    MyShop
                </a>
                <a href="#" class="header-btn__text">
                    Chat
                </a>
                <a href="#" class="header-btn__text">
                    Login
                </a>
            </div>
        </div>
    </header>


    <main class="product-main">
         <form role="form"  method="post" name='myForm'>
        
        <div class="form-group">
            <label>Product Name</label> <input class="form-control" name='product_name'>
          </div>
        
        <div class="form-group">
            <label>Category</label> <input class="form-control" name='category_id'>
          </div>
        
          <div class="form-group">
            <label>Title</label> <input class="form-control" name='title'>
          </div>

          <div class="form-group">
            <label>Text area</label>
            <textarea class="form-control" rows="3" name='product_info'></textarea>
          </div>

          <div class="form-group">
            <label>User</label> <input class="form-control" name='user_id'>
          </div>
          
          <div class="form-group">
            <label>Price</label> <input class="form-control" name='price'>
          </div>
          
          <div class="form-group uploadDiv">
            <label>Photo</label> <input class="form-control" type='file' name='image' multiple>
          </div>
          
          <!-- <button type="submit" id='uploadBtn' class="btn btn-default">Submit Button</button> --> 
          <button id='uploadBtn' class="btn btn-default">Submit Button</button>
          <button type="reset" class="btn btn-default">Reset Button</button>
        </form>
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
                <div class="main-footer__intro content-center">
                    <div class="footer-intro__title">
                        <h1>Shop</h1>
                    </div>

                    <div class="footer-intro__content notice">
                        <a href="notice.html">
                            <span>공지사항</span>
                        </a>
                    </div>

                    <div class="footer-intro__content report">
                        <a href="#">
                            <span>신고</span>
                        </a>
                    </div>

                    <div class="footer-intro__content question">
                        <a href="#">
                            <span>자주묻는질문</span>
                        </a>
                    </div>

                </div>

                <div class="main-footer__detail">
                    <div class="footer-detail__text">
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laborum officiis ullam deleniti voluptas iure recusandae illum labore, voluptatibus atque dolores velit tenetur molestiae ad blanditiis necessitatibus maiores enim illo animi!</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore perferendis aliquam, quod pariatur commodi vitae. Beatae doloribus placeat, quidem similique deserunt asperiores dignissimos cumque, consequatur, dolores odit illum quia odio.</p>
                    </div>
                </div>

            </div>
        </div>
    </footer>
</body>
</html>