<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/stylebasket.css" />
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <script type="text/javascript" src="${cp}/js/common.js"></script>
    <script type="text/javascript">
      $(function () {
        $(document).on("click", ".find_f", function () {
          dh = $(document).height();
          poph = $(".find_layer").height();

          $("#bgblack").height(dh).show();
          $(".find_layer")
            .show()
            .animate({ top: $(document).scrollTop() + 50 + "px" }, 100);
        });
        $("#bgblack,.btnx_").click(function () {
          $("#bgblack").height(dh).hide();
          $(".find_layer").hide();
        });
      });
    </script>
  </head>
  <body>
    <div id="wrap">
      <div id="bgblack"></div>
      <div class="find_layer" style="display: none; top: 50px">
        <iframe src="./shop/shop.html" frameborder="0" id="find_f"> </iframe>
        <div class="btnx_">
          <img src="${cp}/images/close.png" alt="" />
        </div>
      </div>
    <div class="popup_buttons">
      <a class="popup_button" href="">
        <div class="popup_button-txt">예약하기</div>
      </a>
      <a class="popup_button-close" onclick="jQuery(this).parent().hide(); return false" href="#">예약하기 버튼 닫기</a>
    </div>
    <!-- 헤더 시작  -->
     <%@ include file="/jungmin/header.jsp" %>
    <!-- 헤더 끝 -->
    <!-- 본문 시작  -->
    <div id="container" style="margin-top:-90px;">
      <div id="contents">
      
          <div class="pagetitle pn4">
          <h2>
                              고객지원											</h2>
          <p>
                              모나미는 언제나 소중한 의견에 귀 기울이겠습니다.											</p>
        </div>
          <div class="pagetabs">
                      <ul class="m4">
            <li><a href="${cp}/doyoon/FAQ.jsp">자주하는질문</a></li>
            <li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
            <li class="on"><a href="${cp}/event/EventList.bo">이벤트</a></li>
            <li><a class="find_f" href="${cp}/shop/shop.jsp">모나미 패밀리샵 찾기</a></li>
            <!--<li ><a href="http://mpms.monami.com" target="_blank">기업 및 단체 구매 문의</a></li>-->
      
          </ul>
                  
      
        </div>
      
        <h3 class="title1">MONAMI <span>EVENT</span></h3>
      <div class="event">
      <table cellpadding="0" cellspacing="0">
          
        <tbody>
        <c:choose>
								<c:when test="${boardList.size()>0 and boardList != null}">
									<c:forEach var="board" items="${boardList}" varStatus="status">
									
									
        <tr>
          <td class="thum">
          <a href="${cp}/event/EventView.bo?event_idx=${board.event_idx}">
          <c:choose>
          <c:when test="${filelist[status.index] != null}">
          <img src="${cp}/event/FileDownload.bo?systemname=${filelist[status.index].systemname}&orgname=${filelist[status.index].orgname}" title="page_1.jpg" alt="" width="640" height="325">
          </c:when>
          <c:otherwise><img src="${cp}/images/no-img.gif"></c:otherwise>
          </c:choose>
          </a>
          </td>
          <td>
            <div class="sbj">
            <c:choose>
            <c:when test="${board.event_startdate.compareTo(board.created_at.substring(0,10))>0}">
            [예정]
            </c:when>
            <c:when  test="${board.event_startdate.compareTo(board.created_at.substring(0,10))<0 && 
            0<board.event_enddate.compareTo(board.created_at.substring(0,10))}">
            [진행중]
            </c:when>
            <c:otherwise>
            [종료]
            </c:otherwise>
            </c:choose>
            <a href="${cp}/event/EventView.bo?event_idx=${board.event_idx}">${board.event_title}</a></div>
            <div class="evt_type" id="evt_type">
            <a href="${cp}/event/EventView.bo?event_idx=${board.event_idx}"><p>${board.event_content}</p></a>
            </div>
            <p class="date">${board.event_startdate}~${board.event_enddate}</p>
            <a href="${cp}/event/EventView.bo?event_idx=${board.event_idx}" class="btn"><span>자세히보기</span><div></div></a>
          </td>
        </tr>
        </c:forEach>
        </c:when>
        <c:otherwise>
									<td colspan="5" style="text-align: center; font-size: 20px">
										등록된 게시글이 없습니다.</td>
								</c:otherwise>
        </c:choose>
      </tbody></table>
      </div>
		<script>
			$(".evt_type span").attr("style","color:#666");
			$(".evt_type p").attr("style","text-align:left");
			$("strong").attr("style","font-weight:normal");
			 $(document).ready(function() {
				    $('.evt_type p').each(function(){
				        $(this).html($(this).html().replace(/&nbsp;/gi,''));
				    });
				});
			 $(".evt_type p").attr("style","display:inline")
			 $(".evt_type p img").remove();
		</script>
      <div class="paging">
       <c:choose>
					<c:when test="${page>1}">
					<a href="${cp}/event/EventList.bo?page=${page-1}" class="page_prev">
						
							<img src="${cp}/images/page_prev.gif" alt="">
						
					</a>
					</c:when>
					<c:when test="${page == null}">
						
					</c:when>
					<c:otherwise>
					<a href="#" class="page_prev">
						
							<img src="${cp}/images/page_prev.gif" alt="">
						
					</a>
					</c:otherwise>
					</c:choose>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${i == page}">
								<strong class="nowPage">${i}</strong>
							</c:when>
							<c:otherwise>
								<a href="${cp}/event/EventList.bo?page=${i}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
					<c:when test="${page<endPage}">
						<a href="${cp}/event/EventList.bo?page=${page+1}"
							class="page_next"> <img src="${cp}/images/page_next.gif" alt="">
						</a>
					</c:when>
					<c:otherwise>
						<a href="#" class="page_next">
						
							<img src="${cp}/images/page_next.gif" alt="">
						
					</a>
					</c:otherwise>
					</c:choose>
					<c:if test="${loginUser.user_id == 'tjtkdgns9369'}">
					<div class="write_btn">
					<a href="${cp}/jungmin/event_manegement.jsp">등록</a>
					</div>
					</c:if>
      				</div>
      
        <div class="btn_top">
          <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로"></a>
        </div>
      </div><!--/contents-->
      </div>
    <!-- 본문 끝 -->
    <!-- 푸터 시작 -->
  	<%@ include file="/jungmin/footer.jsp" %>
    <!-- 푸터 끝 -->
  </div>
  </body>
</html>