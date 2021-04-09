<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<title>익명 채팅</title>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript">
		function submitFunction(){
			var chatName = $('#chatName').val();
			var chatContent = $('#chatContent').val();
			$.ajax({
				type: "POST",
				url: ".chatSubmitServlet",
				data: {
					chatName: chatName,
					chatContent: chatContent
				},
				success: function(result){
					if(result == 1){
						alert("전송에 성공했습니다.");
					} else if(result == 0){
						alert("이름과 내용을 정확히 입력하세요");
					} else{
						alert("데이터베이스 오류가 발생했습니다.");
					}
				}
			});
			$("chatContent").val('');
		}
	</script>
</head>
<body>
	<div class="container">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>
									<i class="fa fa-circle text-green"></i>실시간 채팅방
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<div id="chat" class="panel-cpllapse collapse in">
							<div class="portlet-body chat-widget"
								style="overflow-y: auto; width: auto; height: 300px;">
								<div class="row">
									<div class="col-lg-12">
										<p class="text-center text-muted small">2021년 4월 8일</p>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="media">
											<a class="pull-left" href="#"> <img
												class="media-object img-circle" src="images/">
											</a>
											<div class="media-body">
												<h4 class="media-heading">
													홍길동 <span class="small pull-right">오후 2:14</span>
												</h4>
											</div>
											<p>안녕하세요</p>
										</div>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-lg-12">
										<div class="media">
											<a class="pull-left" href="#"> <img
												class="media-object img-circle" src="images/">
											</a>
											<div class="media-body">
												<h4 class="media-heading">
													콩길동 <span class="small pull-right">오후 2:14</span>
												</h4>
											</div>
											<p>안녕하세요 네</p>
										</div>
									</div>
								</div>
								<div class="portlet-footer">
									<div class="row">
										<div class="form-group col-xs-4">
											<input style="height: 40px;" type="text" id="chatName"
												class="form-control" placeholder="이름" maxlength="20">
										</div>
									</div>
									<div class="row" style="heigh: 90px;">
										<div class="form-group col-xs-10">
											<textarea style="height: 80px;" id="chatContent" class="form-control" placeholder="메세지를 입력하세요." maxlength="100"></textarea>
										</div>
										<div class="form-group col-xs-2">
											<button type="button" class="btn btn-default pull-right" onclick="submitFunction();">전송</button>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>