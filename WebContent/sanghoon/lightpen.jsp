<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MONAMI</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <script type="text/javascript" src=" ${cp}/js/common.js"></script>
    <link rel="stylesheet" type="text/css" href="${cp}/css/style.css">
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
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
							<li>
								<a href="">JOIN</a>
							</li>
							<li>
								<a href="">LOGIN</a>
							</li>
							<li>
								<a href="${cp}index.jsp">HOME</a>
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
							<img src="${cp}/images/logo.jpeg" alt="">
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
										<a href="#">형광펜</a>
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
								<a href="${cp}/board/Videolist.mo">NEWS & VIDEO</a>
								<ul>
									<li>
										<a href="#">보도자료</a>
									</li>
									<li>
										<a href="${cp}/board/Videolist.mo">동영상자료</a>
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
								<img src="${cp}/images/btn_search.gif" alt="" />
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
								<li><a href="#">형광펜</a></li>
								<li><a href="#">미술용품</a></li>
								<li><a href="#">기타</a></li>
								<li><a href="#">카탈로그</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>NEWS &amp; VIDEO</h2>
								<ul>
									<li><a href="#">보도자료</a></li>
									<li><a href="${cp}/board/VideoList.mo">동영상자료</a></li>
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
    <div id="container2">
        <div id="contents">
            <div id="visual2">
                <h2>모나미제품</h2>
                <p>모나미는 당신의 행복한 기록과 늘 함께 합니다. </p>
            </div>
            <div class="pagetabs">
                <ul class="m2">
                    <li><a href="#">펜</a></li>
                    <li><a href="#">마카</a></li>
                    <li class="on"><a href="#">형광펜</a></li>
                    <li><a href="#">미술용품</a></li>
                    <li><a href="#">기타</a></li>
                    <li><a href="#">카탈로그</a></li>
                </ul>
            </div>
        <h3 class="title1">PRODUCT<span>INFO</span></h3>
        <ul class="subcate">
            <li><a href="#">형광펜</a></li>
        </ul>
            <div class="product_list">
                <ul>
                    <li>
                        <a href="#">
                            <div class="thum">
                                <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060064323_file6_1636340558w5g3jvb5ke.jpg" alt="" width="255" height="390">		<div class="ondiv">
                                    <div class="btn_plus">
                                        <div></div><div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <div class="cate1">형광펜</div>
                                <div class="product_name">에센티 트윈</div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="thum">
                                <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060064308_file6_1621237881ck2tduncen.jpg" alt="" width="255" height="390">	<div class="ondiv">
                                <div class="btn_plus">
                                        <div></div><div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <div class="cate1">형광펜</div>
                                <div class="product_name">가디플러스 에센티 트윈</div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="thum">
                                <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060064301_file6_1510656159c09i4wzeqa.jpg" alt="" width="255" height="390">		<div class="ondiv">
                                    <div class="btn_plus">
                                        <div></div><div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <div class="cate1">형광펜</div>
                                <div class="product_name">에센티 브라이트 / 소프트</div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="thum">
                                <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060072001_file6_1510655846ba5524yez1.jpg" alt="" width="255" height="390">		<div class="ondiv">
                                    <div class="btn_plus">
                                        <div></div><div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <div class="cate1">형광펜</div>
                                <div class="product_name">에센티스틱 브라이트 / 소프트</div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="thum">
                                <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060067005_file6_1510655117e6f5plh5wu.jpg" alt="" width="255" height="390">		<div class="ondiv">
                                    <div class="btn_plus">
                                        <div></div><div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <div class="cate1">형광펜</div>
                                <div class="product_name">에딩 슈퍼 형광펜 600</div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="thum">
                                <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060066004_file6_1510654839zjqph6nd7t.jpg" alt="" width="255" height="390">		<div class="ondiv">
                                    <div class="btn_plus">
                                        <div></div><div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <div class="cate1">형광펜</div>
                                <div class="product_name">메모리 S</div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="thum">
                                <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060032401_file6_151065460562cdzu32p3.jpg" alt="" width="255" height="390">		<div class="ondiv">
                                    <div class="btn_plus">
                                        <div></div><div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <div class="cate1">형광펜</div>
                                <div class="product_name">칼라풀데이</div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="paging">
                <a class="page_prev"><img src="${cp}/images/page_prev.gif" alt=""></a><strong>1</strong>
                <a class="page_next"><img src="${cp}/images/page_next.gif" alt=""></a>
            </div>
            <div class="btn_top">
                <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로"></a>
            </div>
        </div>
    </div>
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
            </div>
        </div>
    </div>
</body>
</html>