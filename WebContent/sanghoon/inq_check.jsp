<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="./css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MONAMI</title>
</head>
<style>
/* The Modal (background) */
.modal , .modal1{
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.login , .join{
	background-color: #fefefe;
	margin: 5px auto; /* 15% from the top and centered */
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
	height: 500px;
	position: relative;
	margin: 0 auto;
	position: relative;
}
.join{
	height:700px;
	margin: -30px auto;
	overflow:scroll;
}

a {
	color: #333;
	text-decoration: none;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	-webkit-appearance: textfield;
	background-color: white;
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 0px;
	border-width: 2px;
	border-style: inset;
	border-color: initial;
	border-image: initial;
}

.modal h2 , .modal1 h2{
	font-size: 30px;
	text-align: center;
	padding: 30px;
	padding-bottom: 10px;
}

.inner_login {
	position: absolute;
	left: 50%;
	top: 50%;
	margin: -145px 0 0 -160px;
}

.screen_out {
	position: absolute;
	width: 0;
	height: 0;
	overflow: hidden;
	line-height: 0;
	text-indent: -9999px;
}

body, button, input, select, td, textarea, th {
	font-size: 13px;
	line-height: 1.5;
	-webkit-font-smoothing: antialiased;
}


fieldset{
	padding-left: 10px;
	padding-right: 10px;
	border:0;
}
img{
	border: 0;
}
.close {
	position: absolute;
	right: 5px;
	top: 0;
	color: #000;
	font-size: 20px;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

.login .box_login , .join .box_join{
	margin: 35px 0 0;
	border-radius: 3px;
	background-color: #fff;
	box-sizing: border-box;
	border-radius: 3px
}

.login .inp_text ,.join .inp_text{
	position: relative;
	width: 100%;
	margin: 0;
	padding: 18px 19px 19px;
	box-sizing: border-box;
	border:1px solid #ddd;
}
div#zipcode{
	width:60%;
	float:left;
}
.login .inp_text+.inp_text , .join .inp_text+.inp_text{
	border-top: 1px solid #ddd;
}

#loginForm #joinForm{
	width: 100%;
}

.inp_text input {
	display: block;
	width: 100%;
	height: 100%;
	font-size: 13px;
	color: #000;
	border: none;
	outline: 0;
	-webkit-appearance: none;
	background-color: transparent;
}
.btn_ck, .btn_zip{
	color:#fff;
	background-color:#000;
	padding: 10px 30px;
    margin: 5px;
    border: none;
    border-radius: 3px;
    cursor:pointer;
}
input.btn_zip{
	margin-left:20px;
	margin-top:2px;
	padding:15px 30px;
}
.btn_login, .btn_join{
	margin: 20px 0 0;
	width: 100%;
	height: 48px;
	border-radius: 3px;
	border:none;
	font-size: 16px;
	color: #fff;
    background: #c40f39;
    cursor:pointer;
}

.login_append {
	overflow: hidden;
	padding: 15px 0 0;
}

.inp_chk {
	display: inline-block;
	position: relative;
	margin-bottom: -1px;
}

.login_append .inp_chk {
	float: left;
}

.inp_chk .inp_radio {
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	width: 18px;
	height: 18px;
	border: none;
}

.inp_chk .lab_g {
	display: inline-block;
	margin-right: 19px;
	color: #909090;
	font-size: 13px;
	line-height: 19px;
	vertical-align: top;
	font-family: "Montserrat", sans-serif;
}

.inp_chk .ico_check {
	display: inline-block;
	width: 18px;
	height: 18px;
	margin: 1px 4px 0 0;
	background-position: -60px 0;
	color: #333;
}

.inp_chk .txt_lab {
	vertical-align: top;
	padding-left:20px;
	font-family: "Montserrat", sans-serif;
	color: #909090;
	font-size: 13px;
}

.login_append .txt_find {
	float: right;
	color: #777;
}
.login_append .txt_find .link_find {
	font-size: 13px;
}
</style>
<body>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<div id="header">
		<div class="head">
			<div class="head_top">
				<div class="conwrap">
					<div class="links">
						<div class="lang">
							<div class="this_lang">
								<a>KOR</a>
							</div>
							<ul>
								<li>
									<a href="#">ENG</a>
								</li>
							</ul>
						</div>
						<div class="sns">
							<ul>
								<li>
									<a href="https://www.facebook.com/monami1960" target="_blank">
										<img src="${cp}/images/sns_facebook.gif" alt="페이스북" />
									</a>
								</li>
								<li>
									<a href="https://www.instagram.com/monami_official/" target="_blank">
										<img src="${cp}/images/sns_insta.gif" alt="인스타" />
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="topmenu">
						<ul>
						<c:choose>
           			<c:when test="${loginUser.user_id!=null}" >
            	<li><span>${loginUser.user_id} 님 환영합니다.</span>&nbsp;&nbsp;
					<a href="${cp}/jungmin/usermodify.mo">MYPAGE</a>&nbsp;
					<a href="${cp}/user/UserLogoutOk.us">LOGOUT</a></li>
					</c:when>
							<c:otherwise>
							<li><a class="join_click"
								onclick="document.getElementById('id02').style.display='block'">JOIN</a>
								<!-- The Modal -->
								<div class="modal1" id="id02">
									<div class="join">
										<span
											onclick="document.getElementById('id02').style.display='none'"
											class="close">&times;</span>
										<h2>
											<img src="${cp}/images/logo.jpeg">
										</h2>
										<div id="result">&nbsp;</div>
										
										<form method="post" id="joinForm" name="joinForm"
											action="${cp}/user/UserJoinOk.us"   onsubmit="return sendit()">
											<fieldset>
												<legend class="screen_out">회원가입 정보 입력폼</legend>
												<div class="box_join">
													<div class="inp_text">
														<input
															type="text" id="user_id" name="user_id" placeholder="ID">
													</div>
													<input type="button" value="중복검사" class="btn_ck" onclick="checkId()">
													<div class="inp_text">
														<label for="user_pw" class="screen_out">비밀번호</label> <input
															type="password" id="user_pw" name="user_pw"
															placeholder="Password">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_name" class="screen_out">이름</label> <input
															type="text" id="user_name" name="user_name"
															placeholder="이름">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_dob" class="screen_out">생년월일</label> <input
															type="txt" id="user_dob" name="user_dob"
															placeholder="생년월일 (예:19950427)">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text" id="zipcode">
														<label for="user_zipcode" class="screen_out">우편번호</label> <input
															type="txt" id="sample6_postcode" name="user_zipcode"
															placeholder="우편번호">
													</div>
													<input type="button"  class="btn_zip"onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addr" class="screen_out">주소</label> <input
															type="txt" id="sample6_address" name="user_addr"
															placeholder="주소">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addrdetail" class="screen_out">상세주소</label> <input
															type="txt" id="sample6_detailAddress" name="user_addrdetail"
															placeholder="상세주소">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addretc" class="screen_out">참고항목</label> <input
															type="txt" id="sample6_extraAddress" name="user_addretc"
															placeholder="참고항목">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_phone" class="screen_out">핸드폰 번호</label>
														<input type="tel" id="user_phone" name="user_phone"
															placeholder="핸드폰 번호">
													</div>
												</div>
												<button type="submit" class="btn_join">회원가입</button>
												
											</fieldset>
										</form>

									</div>
								</div></li>
							<li><a
								onclick="document.getElementById('id01').style.display='block'">LOGIN</a>
							
								<!-- The Modal -->
								<div class="modal" id="id01">
									<div class="login">
										<span
											onclick="document.getElementById('id01').style.display='none'"
											class="close">&times;</span>
										<h2>
											<img src="${cp}/images/logo.jpeg">
										</h2>
											
										<form method="post" id="loginForm"
											action="${cp}/user/UserLoginOk.us">
											
											<fieldset>
												<legend class="screen_out">로그인 정보 입력폼</legend>
												<div class="box_login">
													<div class="inp_text">
													 <label for="user_id1" class="screen_out">아이디</label> <input
															type="text" id="user_id1" name="user_id1" placeholder="ID"> 
													</div> 
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_pw1" class="screen_out">비밀번호</label> <input
															type="password" id="user_pw1" name="user_pw1"
															placeholder="Password">
													</div>
												</div>
												<button type="submit" class="btn_login">로그인</button>
												<div class="login_append">
													<div class="inp_chk">
														<!-- 체크시 checked 추가 -->
														<input type="checkbox" id="keepLogin" class="inp_radio"
															name="keepLogin">
															<span class="txt_lab"
															style="display: inline-block">로그인 상태 유지</span>
														
													</div>
													<span class="txt_find"> <a
														href="${cp}/jungmin/idsearch.mo" class="link_find">아이디</a> / <a
														href="/member/find/password" class="link_find">비밀번호 찾기</a>
													</span>
												</div>

											</fieldset>
										</form>

									</div>
								</div></li>
								</c:otherwise>
								
								</c:choose>
							<li>
								<a href="index.html">HOME</a>
							</li>
							<li>
								<a href="http://www.monami.com/sitemap.php">SITE MAP</a>
							</li>
							<li>
								<a href="http://www.monami.com/customer/inquiry.php">CONTACT US</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="gnb">
				<div class="conwrap">
					<h1>
						<a href="index.jsp">
							<img src="./images/logo.jpeg" alt="">
						</a>
					</h1>
					<div class="nav">
						<ul>
							<li>
								<a href="#">모나미소개</a>
									<ul>
										<li>
											<a href="#">CEO 메시지</a>
										</li>
										<li>
											<a href="#">회사정보</a>
										</li>
										<li>
											<a href="#">회사연혁</a>
										</li>
										<li>
											<a href="#">투자정보</a>
										</li>
										<li>
											<a href="#">CI</a>
										</li>
										<li>
											<a href="#">채용정보</a>
										</li>
										<li>
											<a href="#">찾아오시는 길</a>
										</li>
									</ul>
							</li>
							<li>
								<a href="#">모나미제품</a>
								<ul>
									<li>
										<a href="#">펜</a>
									</li>
									<li>
										<a href="#">마카</a>
									</li>
									<li>
										<a href="lightpen.html">형광펜</a>
									</li>
									<li>
										<a href="#">미술용품</a>
									</li>
									<li>
										<a href="#">기타</a>
									</li>
									<li>
										<a href="#">카탈로그</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">NEWS & VIDEO</a>
								<ul>
									<li>
										<a href="#">보도자료</a>
									</li>
									<li>
										<a href="#">동영상자료</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">모나미 미술대회</a>
								<ul>
									<li>
										<a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">미술대회 소개</a>
									</li>
									<li>
										<a href="#">수상작 발표</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">고객지원</a>
								<ul>
									<li>
										<a href="#">자주묻는질문</a>
									</li>
									<li>
										<a href="#">문의하기</a>
									</li>
									<li>
										<a href="#">이벤트</a>
									</li>
									<li>
										<a href="#">모나미 패밀리샵 찾기</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="http://mpms.monami.com">기업 구매 / 개발</a>
								<ul class="hovermenu">
									<li><a href="http://mpms.monami.com">기업 및 단체 구매</a></li>
									<li><a href="#">산업용 맞춤 제품개발</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="search">
						<div class="btn_all">
							<div></div>
							<div></div>
							<div></div>
						</div>
						<div class="nav_search">
							<input type="text" name="" id="" />
							<a href="#">
								<img src="./images/btn_search.gif" alt="" />
							</a>
						</div>
					</div>
					<div class="allmenu" style="display: none;">
						<div class="menubox">
							<h2>모나미소개</h2>
							<ul>
								<li><a href="#">CEO 메시지</a></li>
								<li><a href="#">회사정보</a></li>
								<li><a href="#">회사연혁</a></li>
								<li><a href="#">투자정보</a></li>
								<li><a href="#">CI</a></li>
								<li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
								<li><a href="#">찾아오시는 길</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>모나미제품</h2>
							<ul>
								<li><a href="#">펜</a></li>
								<li><a href="#">마카</a></li>
								<li><a href="lightpen.html">형광펜</a></li>
								<li><a href="#">미술용품</a></li>
								<li><a href="#">기타</a></li>
								<li><a href="#">카탈로그</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>NEWS &amp; VIDEO</h2>
								<ul>
									<li><a href="#">보도자료</a></li>
									<li><a href="#">동영상자료</a></li>
								</ul>
						</div>
						<div class="menubox">
							<h2>모나미 미술대회</h2>
							<ul>
								<li><a href="#" target="_blank">미술대회 소개</a></li>
								<li><a href="#" target="_blank">수상작 발표</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>고객지원</h2>
							<ul>
								<li><a href="#">자주묻는질문</a></li>
								<li><a href="#">문의하기</a></li>
								<li><a href="#">이벤트</a></li>
								<li><a class="#">모나미 패밀리샵 찾기</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2><a href="#" target="_blank">기업 구매 / 개발</a></h2>
							</div>
					</div>
				</div>
			</div>
		</div>
    </div>
    <!-- 헤더 끝 -->
    <!-- 본문 시작 -->
    <div  id="pw_area" style="width: 100%; height: 500px; margin-top: 108px; border: 1px solid black;">
        <div clss="pw_area"style="margin: 200px 48%; width: 200px;">
        <form method="post" action="${cp}/board/inq_pwchk.mo"></form>
            <h3>비밀번호를 입력해주세요</h3>
            <input type="password" name="password"  maxlength='4'>
        </div>
    </div>
    <!-- 본문 끝 -->
    <!-- 푸터 시작 -->
    <div id="footer">
		<div class="foot">
			<div class="foot_top">
				<h1><img src="${cp}/images/foot_logo.jpeg" alt="로고"></img></h1>
				<ul class="fm">
					<li>
						<a href="#">회사소개</a>
					</li>
					<li>
						<a href="#">개인정보처리방식</a>
					</li>
					<li>
						<a href="#">이메일무단수집거부</a>
					</li>
				</ul>
			</div>
			<div class="foot_btm">
				<div class="info">
					<div class="tit">INFO</div>
					<address>
					ADDRESS : 경기도 용인시 수지구 손곡로 17 <span>l</span> TEL :
					031-216-0153 <span>l</span>
					FAX : 031-270-5154
					</address>
					<p class="copy">
						COPYRIGHT(C) 2017 MONAMI.CO.,LTD. ALL RIGHTS RESERVED.
					</p>
				</div>
				<div class="cc">
					<div class="tit">CUSTOMER CENTER</div>
					<div class="cc_tel">080-022-0153</div>
				</div>
				<div class="fam_site">
					<a>FAMILY SITE</a>
					<ul>
						<li>
							<a href="#" target="_blank">모나미몰</a>
						</li>
						<li>
							<a href="#" target="_blank">모나르떼</a>
						</li>
						<li>
							<a href="#" target="_blank">모나미 컨셉스토어</a>
						</li>
						<li>
							<a href="#" target="_blank">주식회사 항소</a>
						</li>
						<li>
							<a href="#" target="_blank">모나미 스테이션</a>
						</li>
						<li>
							<a href="#" target="_blank">모나미 미술대회</a>
						</li>
						<li>
							<a href="#" target="_blank">모나미 기업서비스</a>
						</li>
						<li>
							<a href="#" target="_blank">모나미코스메틱</a>
						</li>
						</ul>
				</div>
			</div>
		</div>
	</div>
    <!-- 푸터 끝 -->
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>const cp = "${pageContext.request.contextPath}"</script>
<script src="${cp}/js/user.js"></script>
</html>