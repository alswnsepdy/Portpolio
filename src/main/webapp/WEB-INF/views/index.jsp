<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="css/style.css">
 <script type="text/javascript" src="member/member.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, 
                     minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<title>Insert title here</title>
<style>
div {
	width: 100%;
	height: 100%;
}

div.left {
	width: 50%;
	height :700px;
	float: left;
	box-sizing: border-box;
	background :  #f8d348;
}

div.right {
	width: 50%;
	height :700px;
	float: right;
	box-sizing: border-box;
	background :  #f8d348;
}

</style>
</head>

<body>
	<div>
	
		<div class="left"align="center">
		<h1>Brand New Information</h1>
			<section>
				<article>
					<a href="product_detail?pseq=${productVO.pseq }"
					onclick="logincheck()"> 
						<img src="images/jordan1top3.jpg"/>
					</a>
				</article>							
			</section>
			<pre>
AIR JORDAN 시리즈보다, 압도적 인기를 자랑하는 퍼스트 모델의 인기 칼라,
"시카고","빵","로열"의 3 칼라를 믹스 한 통칭 TOP3입니다.
좌우 비대칭의 크레이지로 대담한 디자인이 특징. 
일본을 시작해 온 세상에서 큰 화제가 되고 있는 1켤레입니다.
NIKE는, 해외로부터의 직수입의 상품이나 해외에서의 직접 매입에 의한 정규품이므로
, 안심해 주세요.덧붙여 박스에 데미지나 마킹등이 있는 것도 있습니다.
이러한 이유로의 캔슬은 받아 할 수 없기 때문에, 구입때는 주의해 주세요.
       		
        </pre>
		</div>
		<div class="right" align="center">
    <h1>Login</h1>
   <form method="post" action="login" name="login">
       <div>
       <lavel>User ID</lavel>
        <input type="text" placeholder="email@domain.com"  name="id">
        <lavel>Password</lavel>
        <input type="password" placeholder="Password" name="Pwd">
    	</div>
    	<div>
    	<input type="submit" value="Login" class="login">
    	<input type="button" value="Join Us" class="join"
    		onclick="location='join_form'">
    	<input type="button" value="ID/PW 찾기" class="submit"
    		onclick="find_id_form()">
    	</div>
    </form>
    </div>
    </div>
</body>
</html>