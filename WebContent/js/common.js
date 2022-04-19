$(function () {
  /* 언어 선택 */
  $(".lang").click(function () {
    $(this).toggleClass("on");
  });

  /* 헤더 검색 */
  $("body").click(function (e) {
    Iw = $(".nav_search input").css("width");
    if (Iw == "0px") {
      $(".nav_search input").val("");
    } else {
      $(".nav_search").removeClass("on");
    }
  });

  /* sitemap */
  btnmenu = 0;
  $(".btn_all").click(function () {
    if (btnmenu == 0) {
      $(this).addClass("openmenu");
      $(".allmenu").slideDown();
      $(".nav>ul>li>ul").stop().slideUp();
      btnmenu = 1;
    } else {
      $(this).removeClass("openmenu");
      $(".allmenu").slideUp();
      btnmenu = 0;
    }
  });

  /* 서브 네비 */
  $(".nav>ul>li").mouseover(function () {
    if (btnmenu == 0) {
      $(this).addClass("on").siblings().removeClass("on");
      $(".nav>ul>li>ul").stop().slideUp(200);
      $(this).find("ul").stop().slideDown(200);
    } else {
    }
  });
  $(".gnb").mouseleave(function () {
    $(".nav>ul>li").removeClass("on");
    $(".nav>ul>li>ul").stop().slideUp(200);
  });

  /* top 버튼 */
  $(".topButton a").click(function () {
    $("body,html").animate({ scrollTop: 1 }, 300);
  });

  famchk = 0;
  $(".fam_site>a").click(function () {
    if (famchk == 0) {
      $(this).next("ul").slideDown();
      famchk = 1;
    } else {
      $(this).next("ul").slideUp();
      famchk = 0;
    }
  });

  $(".privacy_pop").click(function () {
    dh = $(document).height();
    $("#bgblack").height(dh).show();
    $(".foot_pop").show();
    $(".foot_pop .privacy").show();
  });
  $(".email_pop").click(function () {
    dh = $(document).height();
    $("#bgblack").height(dh).show();
    $(".foot_pop").show();
    $(".foot_pop .email").show();
  });
  $(".btn_close").click(function () {
    $("#bgblack").hide();
    $(".foot_pop").hide();
    $(".privacy").hide();
    $(".email").hide();
  });
});
