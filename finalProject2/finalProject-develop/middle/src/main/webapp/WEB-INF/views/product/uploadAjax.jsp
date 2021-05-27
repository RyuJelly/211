<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body> -->
<%@include file="../includes/header.jsp"%>
	<h1>Upload with Ajax</h1>

	<div class='uploadDiv'>
		<input type='file' name='uploadFile' multiple>
	</div>

	<button id='uploadBtn'>Upload</button>

	<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script> -->

	<script type="text/javascript">
		$(document).ready(function() {

			var regex = new RegExp("(.*?)\.(jpg|png|PNG)$");

			var maxSize = 5242880;

			function checkExtension(fileName, fileSize) {
				console.log("tttttttttttttttttttttttttttttttttttttttttttttt" +fileName);
				if (fileSize >= maxSize) {
					alert("이미지 사이즈 초과");
					return false;
				}

				if (!regex.test(fileName)) {
					alert("jpg, png 형식의 이미지를 선택해 주세요.");
					return false;
				}

				return true;
			}

			$("#uploadBtn").on("click", function(e) {

				var formData = new FormData();

				var inputFile = $("input[name='uploadFile']");

				var files = inputFile[0].files;

				console.log(files);

				//add filedate to formdata
				for (var i = 0; i < files.length; i++) {
					
					if(!checkExtension(files[i].name, files[i].size)){
						return false;
					}

					formData.append("uploadFile", files[i]);

				}

				$.ajax({
					url : '/product/uploadAjaxAction',
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					success : function(result) {
						alert("Uploaded");
					}
				}); //$.ajax

			});
		});
	</script>

</body>
</html>