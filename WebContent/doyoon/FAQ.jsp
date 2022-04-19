<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MONAMI</title>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<link rel="shortcut icon" href="${cp}/images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="${cp}/css/prodiqr.css" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${cp}/js/common.js"></script>
<script type="text/javascript" src="${cp}/js/prodiqr.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
</head>
<body>
	<div id="wrap">
		<%@ include file="/doyoon/header.jsp"%>
		 <!-- 본문 시작  -->
    <div id="container">
        <div class="pagetitle pn4">
            <h2>고객지원</h2>
            <p>모나미는 언제나 소중한 의견에 귀 기울이겠습니다.</p>
        </div>
        <div class="pagetabs">
            <ul class="m4">
                <li><a href="${cp}/doyoon/FAQ.jsp" class="on">자주하는질문</a></li>
                <li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
                <li><a href="${cp}/geunseok/board_event.jsp">이벤트</a></li>
                <li><a href="${cp}/shop/shop.jsp">모나미 패밀리샵 찾기</a></li>
  
            </ul>
        </div>
        <h3 class="title1">
            MONAMI <span>FAQ</span>
        </h3>
        <div class="faq">
            <div class="faq_box">
                <div class="question">
                    <a>
                        아이디어를 제공하고 싶어요. 어떻게 하나요?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        모나미는 다양한 아이디어와 의견을 기다리고 있습니다. 아이디어 및 의견 제공은 아래의 이메일로 문의 주시기 바랍니다.
                        <span class="dot">E-MAIL : help2@monami.com</span>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        특판에 대해 궁금합니다.
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        모나미 기업서비스팀은 기업의 프로모션 제품을 담당합니다.
                        <span class="br"></span>
                        상품기획, 디자인, 영업, 구매 생산 담당자들의 노하우와 전문성을 바탕으로 모나미 최상의 상품은 물론 특판상품을 기획 제작하여 서비스 하고 있습니다.
                        <span class="br"></span>
                        중국지사(이우, 광주, 상해 등)를 통한 직수입으로 원가 경쟁력을 확보하여 소비자(기업)의 만족도를 극대화함과 동시에 기업행사의 상품별 효과를 분석하여 제안합니다.
                    </p>
                    <ul>
                        <li>모나미 문구 사무용품 각종 상품 로고 및 인쇄 판촉물 제작</li>
                        <li>팬시용품과 생활 잡화 용품 판촉 홍보용품의 Quality와 Service의 일대 혁신</li>
                        <li> 고품격, 신뢰성을 바탕으로 타사들과는 다른 차별점을 찾아 기업의 이미지를 최대화</li>
                        <li> 정확한 타켓, 확실한 컨셉, 탄탄한 기획까지 책임</li>
                        <li>상품기획 및 디자인관련 전문적 지식으로 차별화된 'Creative Product' 제안</li>
                        <li>시작부터 마무리까지 고객중심의 1:1 맞춤 제안</li>
                    </ul>
                    <p>
                        특판에 관한 궁금한 사항이 있으면 아래의 연락처로 문의하시면 친절한 상담을 받을 수 있습니다.
                        <br>
                        (주)모나미 기업서비스팀
                        <br>
                        <span class="dot">TEL : 031-270-5363</span>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        잉크를 지우는 방법이 궁금합니다.
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        <span class="numtitle">
                            <span>01</span>
                            유성볼펜류
                        </span>
                        오염된 부분을 소량의 벤질 알코올에 약 5분간 담가둔 다음, 가볍게 주무르거나 비벼서 잉크를 녹여낸다. 이때 오염 주의에 녹아난 잉크로 지저분해진 부분은 즉시 비눗물로
                        세척하거나,<br> 메칠 알코올로 세척하면 깨끗해진다.견직(Silk), 모직(Wool) 등의 섬유에는 손상을 줄 우려가 있으므로, 겉에서 보이지 않는 부분을 실험해 본 후
                        세탁하며, 가볍게 비벼야 한다.
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>02</span>
                            수성류
                        </span>
                        가능한 한 빠른 시간내에 세탁하도록 한다.<br>
                        세탁은 시판중인 표백제(유한락스 등)를 30배로 물로 희석시켜, 오염된 부분을 10~20분간 담가둔 다음 가볍게 비벼서 세탁한다.<br>
                        천연섬유, 색상이 있는 섬유 등은 변색될 우려가 있으므로, 겉에서 보이지 않는 부분을 실험해 본 후 세탁한다. 견직, 모직에는 사용할 수 없다.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>03</span>
                            매직류
                        </span>
                        오염된 부분을 크실렌(Xylene 또는 벤젤, 틀루엔)에 담가서, 가볍게 비벼서 녹여낸다(유성매직, 네임펜의 경우 메칠 셀로솔부를 사용). 견직, 모직, 플라스틱 단추 등의
                        부착물에는 손상을 줄 우려가 있으므로,<br>
                        사용 전에 겉에서 보이지 않는 부분을 실험해 본 후 세탁한다. 약품의 화기 접촉은 절대 피한다.
                    </p>
                    <p>
                        <span class="dot">공통사항</span>
                        약품을 취급할 때에는 고무장갑 등을 사용하여 피부와 접촉하지 않도록 주의한다.<br>
                        사용되는 약품은 어린이의 손이 닿지 않는 곳에 보관한다.<br>
                        40°C 이상 고온에서 수명이 짧아질수 있습니다.<br>
                        장기간 보관시 수평으로 보관하십시오.<br>
                        의류 오염시 합성세제로 세탁하십시오.<br>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        제품의 사용 및 보관시 주의사항은?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        <span class="numtitle">
                            <span>01</span>
                            볼펜 보관요령
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        외형적으로 부품의 대부분이 플라스틱이기 때문에 40°C이상 고온에서는 수명이 짧아질수 있습니다.<br>
                        60~70° 각도로 필기해 주십시오.<br>
                        장기간 보관시 수평으로 보관하여 주십시오.<br>
                        펜촉을 위로 향하면 잉크가 뒤로 흐를 수 있습니다.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>02</span>
                            중성펜 보관요령
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        펜촉을 위로 향하면 잉크가 뒤로 샐 수 있습니다.<br>
                        종이 옷감과 같은 흡수체에 오염되었을 때는 깨끗하게 제거하기 어려우니 오염되지 않도록 주의하십시오.<br>
                        중성 볼펜은 잉크가 물로 만들어졌기 때문에 사용 후는 반드시 뚜껑을 닫아 두도록 해야 합니다.<br>
                        중성펜에는 잉크가 뒤로 새지 않도록 트윈 볼(Twin Ball)구조를 가지고 있습니다.<br>
                        따라서 펜을 거꾸로 세워서 필기하면 볼이 잉크가 뒤로 흘러내리지 못하도록 만들어 줍니다.<br>
                        또 볼이 잉크를 차단시키는 과정에서 작은 공기방울이 들어가는 경우가 있기도 하는데 이럴 경우는 이럴 경우는 다음 필기시 필기 상태가 원활치 않게 되는 요인으로
                        작용합니다.<br>
                        그러므로 유성볼펜과 중성볼펜이 필기 상태가 안좋다고 불만을 갖기도 하는데 이럴 경우의 대부분은 펜을 사용할 때 습관적으로 펜 끝을 위로 향하기 때문입니다.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>03</span>
                            수성펜 보관요령
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        펜에 심한 충격을 주면 잉크가 샐 수 있습니다.<br>
                        40°C 이상 고온에서 수명이 짧아질수 있습니다.<br>
                        장기간 보관시 수평으로 보관하십시오.<br>
                        의류 오염시 합성세제로 세탁하십시오.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>04</span>
                            네임펜류
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        장기간 보관시 수평으로 보관하여 주십시오.<br>
                        종이, 유리, 금속, 플라스틱에도 사용이 가능합니다.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>05</span>
                            수성펜(사인펜류)
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        40°C 이상 고온에서는 수명이 짧아질 수 있습니다.<br>
                        장기간 보관시 수평으로 보관하십시오.<br>
                        의류에 오염되었을 때에는 시판중인 표백제를 30배로 희석시켜 오염된 부분을 10~20분간 담가둔 다음 가볍게 비벼서 세탁하십시오.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>06</span>
                            유성마카
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        장기간 보관시 수평으로 보관하십시오.<br>
                        에틸알콜이 주용제이므로 화기에 주의하여 주십시오.<br>
                        장시간 사용후에 환기시켜 주십시오.<br>
                        펜색상이 흐리게 된 경우에는 펜촉을 아래로 세워 놓은 후 색상이 다시 진해지면 다시 수평으로 놓고 사용하십시오.<br>
                        의류에 오염된 부분은 메탄올에 담가 가볍게 비벼서 녹여내 주십시오.<br>
                        약품의 화기접촉은 절대 피해주십시오.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>07</span>
                            형광펜
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        2~3시간 이상 뚜껑을 닫아 놓으면 사용이 가능합니다.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>08</span>
                            수정펜류
                        </span>
                        사용후 반드시 뚜껑을 닫아 주십시오.<br>
                        사용 전에 충분히 흔들어 주십시오. 펜촉이 매우 정밀하게 제작되어 안료가 볼 틈새에 쌓이게 되면 필기가 되지 않는다는 것을 유의해야 합니다.<br>
                        잉크에 인화성 물질이 들어 있으므로 화기에 주의하여 주십시오.<br>
                    </p>
                    <p>
                        유성마킹펜처럼 속건성이므로 사용후에는 뚜껑을 잘 닫아두어야 합니다. 또한 수정펜의 잉크 역시 안료로 구성되어 있는데 다른 종류의 잉크와 비교해서 안료가 매우 무겁고
                        침전속도가 매우 빠릅니다.<br>
                        따라서 사용 전에는 수정펜을 충분히 흔들어서 사용해야 하며 보관 할 때는 항상 세워서 놓아야 합니다.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>09</span>
                            파스
                        </span>
                        양초와 유사한 왁스로 만들어져 더운 곳을 피하여 보관하여 주십시오.<br>
                        앞부분을 잡거나 홀더를 사용하면 부러짐을 적게 할 수 있습니다.<br>
                        무독성 마크가 있는 경우라도 입에 대는 것을 피하고 사용 후에는 손을 씻어 주십시오.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>10</span>
                            물감
                        </span>
                        사용 후 뚜껑을 잘 닫아서 보관하여 주십시오.<br>
                        제품이 굳어지면 용해제나 뜨꺼운 물을 넣어 주십시오.<br>
                    </p>
                    <p>
                        <span class="numtitle">
                            <span>11</span>
                            샤프펜슬
                        </span>
                        심이 나오는 파이프에 충격을 주면 심이 자주 부러지므로 충격에 주의하십시오.
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        볼펜이 추운겨울이 되면 잘 나오지 않는 이유는?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        일반적으로 액체는 온도에 따라 점성 즉 흐름성의 변화가 다른데, 온도가 높으면 흐름성(분자운동)이 크고 온도가 낮으면 흐름성(분자운동)이 적어집니다.<br>
                        볼펜잉크도 마찬가지로 온도변화에 따라 흐름성의 차이가 있어 날씨가 추운 겨울철에는 잘 나오지 않습니다.<br>
                        그러나 실내온도에 잠시 놔둔 후 사용하면 잘 써집니다.<br>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        보관이 오래되어 잉크가 샌 컴퓨터용 싸인펜을 사용해도 되나요?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        당사의 컴퓨터펜은 수명은 1년 ~ 1년6개월입니다.<br>
                        펜들은 보관 중에도 플라스틱 자체의 미세한 기공에 의해 기간이 경과되면서 잉크가 서서히 마르게 되고, 결국에는 잉크가 거의 마르게 되면 수명을 다하게 됩니다.<br>
                        그러나 1년~ 1년6개월은 유통과정 중에 여러가지 심한 조건을 감안하여 정한 기준이기 때문에, 보관창고나 매장의 온도가 안정적이면 더욱 오랜 동안 수명을 가질 수
                        있습니다.<br>
                        또한, 가장 중요한 점은 컴퓨터의 판독 성능인데, 컴퓨터 판독성능은, 소비자 분들이 사용을 할 때, 눈으로 보아서 검정색 표시가 되기만 한다면, 1년이 아니라 10년이
                        지나더라도<br>
                        컴퓨터 판독 성능에는 전혀 변함이 없습니다. 소비자분들이 아무리 오랜된 펜이라 할지라도 뚜껑을 열고, 사용해 보시고, 눈으로 보아 표시가 된다면 판독 성능에는 이상이
                        없습니다.<br>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        아이가 장난을 치다가 잉크를 먹었습니다. 응급조치 방법은?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        필기구 잉크는 원칙적으로 저자극성, 무독성 원료를 사용합니다.<br>
                        참고로 문구제품은 사람들이 지니고 다니거나, 가까이 두고 사용하는 물건이기 때문에 잉크의 원료 하나하나가 안정성을 고려해 만들어져 있습니다.<br>
                        그러므로 아이가 잉크를 먹었다해도 치명적인 문제는 발생하지 않으며, 당황하지 말고 입속과 주위를 깨끗하게 닦아주시면 됩니다.<br>
                        단지, 아이를 잘 관찰하다가 이상이 있다고 생각되면 의사와 상담하는 것이 바람직합니다.<br>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        아이가 크레파스를 먹었을때 응급조치 방법은?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        우선 파스의 성분은 무해합니다.<br>
                        그러나 음식물이 아닌 이상 건강에 좋지는 않겠지요.<br>
                        그러니 아이들이 파스를 사용하다 입에 넣지 않도록 주의하여 주시고, 특히 유아인 경우 기도를 막아 호흡곤란을 일으킬 수 있으니 상태를 잘 관찰해서 응급조치를 취해야
                        합니다.<br>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        사인펜이나 프러스펜의 색이 흐려졌을때 물을 넣어도 되나요?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        사인펜이나 프러스펜은 수성잉크를 사용합니다.<br>
                        때문에 물을 넣으면 잉크가 섞여 다시 필기를 할 수 있습니다.<br>
                        그러나 이는 일시적인 방법으로, 물을 섞게 되면 펜촉이 빨리 마르거나 온도변화에 따라 필기 기능이 저하될 수 있어 오랫동안 사용하기 위한 방법으로 권장되지는
                        않습니다.<br>
                    </p>
                </div>
            </div>
            <div class="faq_box">
                <div class="question">
                    <a>
                        크레파스의 뭉치는 현상은 왜 일어나나요?
                        <div class="arr"></div>
                    </a>
                </div>
                <div class="answer">
                    <p>
                        크레파스는 왁스(Wax), 색소를 혼합해 만드는데 문의하신 찌꺼기(뭉침현상)는 왁스성분 때문에 발생하게 됩니다.<br>
                        파스는 제조과정에서 단단하게 만들 수도 있고 부드럽게도 만들 수도 있습니다.<br>
                        파스의 연질을 단단하게 만들면 찌꺼기는 훨씬 적게 생기지만 색상이 흐리고 딱딱한 반면 파스를 연하게 만들면 찌꺼기는 많이 생기지만 색상이 짙어 어린이들이<br>
                        색감각을 키우기가 좋고 부드럽게 칠해져 아이들이 손쉽게 색칠을 할 수 있다는 장점이 있습니다.<br>
                    </p>
                </div>
            </div>
        </div>
        <!-- 본문 끝 -->
        <!-- top버튼 시작 -->
        <div class="btn_top">
            <a href="#"><img src="${cp}/images/btn_top.gif" alt="상단으로 이동"></a>
        </div>
        <!-- top버튼 끝 -->
    </div>
    <!-- container 끝  -->
		<%@ include file="/doyoon/footer.jsp"%>
	</div>
</body>
</html>