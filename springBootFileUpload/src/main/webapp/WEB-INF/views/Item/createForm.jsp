<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Community | Write</title>
<style>
/* T1 Official Theme */
:root {
	--t1-red: #E2012D;
	--t1-black: #0f0f0f;
	--t1-gray: #1a1a1a;
	--t1-gold: #C69C6D;
}

body {
	background-color: var(--t1-black);
	font-family: 'Pretendard', sans-serif;
	color: #ffffff;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
}

.write-container {
	width: 100%;
	max-width: 700px;
	background: var(--t1-gray);
	padding: 40px;
	border-radius: 15px;
	border: 2px solid var(--t1-red);
	box-shadow: 0 0 30px rgba(226, 1, 45, 0.2);
}

.header {
	text-align: center;
	margin-bottom: 40px;
}

.header h1 {
	font-size: 2rem;
	font-weight: 900;
	letter-spacing: -1px;
}

.header span {
	color: var(--t1-red);
}

/* Form Styles */
.form-group {
	margin-bottom: 25px;
}

.form-group label {
	display: block;
	font-size: 0.9rem;
	color: var(--t1-gold);
	margin-bottom: 8px;
	text-transform: uppercase;
	font-weight: bold;
}

input[type="text"], input[type="password"], input[type="number"] {
	width: 100%;
	padding: 12px 15px;
	background: #0b0b0b;
	border: 1px solid #333;
	border-radius: 5px;
	color: #fff;
	font-size: 1rem;
	box-sizing: border-box;
	transition: 0.3s;
}

input[type="text"]:focus, input[type="password"]:focus, input[type="number"]{
	border-color: var(--t1-red);
	outline: none;
	box-shadow: 0 0 10px rgba(226, 1, 45, 0.3);
}


/* Buttons */
.btn-area {
	display: flex;
	gap: 15px;
	margin-top: 30px;
}

.btn {
	flex: 1;
	padding: 15px;
	font-size: 1rem;
	font-weight: bold;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
	text-transform: uppercase;
}

.btn-submit {
	background: var(--t1-red);
	color: #fff;
}

.btn-submit:hover {
	background: #ff1a4a;
	transform: translateY(-3px);
	box-shadow: 0 5px 15px rgba(226, 1, 45, 0.5);
}

.btn-reset {
	background: #333;
	color: #fff;
}

.btn-reset:hover {
	background: #fff;
	color: #ff1a4a;
	transform: translateY(-3px);
	box-shadow: 0 5px 15px rgba(226, 1, 45, 0.5);
}

.btn-cancel {
	background: #333;
	color: #bbb;
}

.btn-cancel:hover {
	background: #444;
	color: #fff;
}

/* Decoration */
.bottom-deco {
	margin-top: 30px;
	font-size: 12px;
	color: #444;
	text-align: center;
	font-family: monospace;
}

.btn-list {
	display: inline-block;
	padding: 15px 40px;
	background: var(--t1-red);
	color: white;
	text-decoration: none;
	font-weight: bold;
	border-radius: 5px;
	transition: 0.3s;
	border: none;
	cursor: pointer;
}

.btn-list:hover {
	background: #ffffff;
	color: var(--t1-red);
	box-shadow: 0 0 20px rgba(255, 255, 255, 0.4);
}
</style>
</head>
<body>

	<div class="write-container">
		<div class="header">
			<h1>
				자료실<span>업로드</span>
			</h1>
		</div>

		<form action="/item/createForm" method="post" enctype="multypart/form-data">
			<div class="form-group">
				<label for="id">상품이름</label> <input type="text"
					id="name" name="name" placeholder="상품이름을 입력하세요" required>
			</div>

			<div class="form-group">
				<label for="price">상품가격</label> <input type="password" id="price"
					name="price" placeholder="상품가격을 입력하세요" required>
			</div>
			
			<div class="form-group">
				<label for="name">상품파일</label> <input type="file" id="picture"
					name="picture" required>
			</div>
			
			<div class="form-group">
				<label for="picture">상품이미지설명</label> <textarea type="" id="description"
					name="description" rows="5" cols="20">
			</div>

			<div class="btn-area">
				<a href="/item/itemList" class="btn-list">상품이미지 리스트</a>
				<button type="submit" class="btn btn-submit">상품등록</button>
				<button type="reset" class="btn btn-reset">상품등록취소</button>
			</div>
		</form>

		<div class="bottom-deco">[ SYSTEM: READY TO TRANSMIT DATA TO
			JDBCBOARD ]</div>
	</div>

</body>
</html>