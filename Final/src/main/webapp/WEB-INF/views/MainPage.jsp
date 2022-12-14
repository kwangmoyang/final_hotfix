<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/BasicFrame.css?after">
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css?after">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/MainPage.css?after">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

    <!-- 유니콘 아이콘 사이트 -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <!-- 에디터 -->
    <script type="text/javascript" src="<c:url value="/resources/ckeditor/ckeditor.js"/>"></script>

    <link rel="icon" href="${Path}/resources/img/HotFavicon.png" type="image/png">

    <title>HOTFIX - Easy Solution For You</title>

</head>

<body>

<%@ include file="/WEB-INF/views/header/header.jsp" %>

<div class="container">
    <!-- ======================== 작업 섹션 ======================= -->

    <!-- 메인섹션 -->
    <div class="mains">
        <div id="main_big_preview">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <!-- 일단 테스트 이미지고 향후 이벤트배너등으로 활용가능 -->
                    <div class="swiper-slide"><img src="../resources/img/main2.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="../resources/img/main3.jpg" alt=""></div>
<%--                    <div class="swiper-slide"><img src="../resources/img/TestImage/testImage3.jpeg" alt=""></div>--%>
<%--                    <div class="swiper-slide"><img src="../resources/img/TestImage/testImage4.jpeg" alt=""></div>--%>
<%--                    <div class="swiper-slide"><img src="../resources/img/TestImage/testImage5.jpeg" alt=""></div>--%>
<%--                    <div class="swiper-slide"><img src="../resources/img/TestImage/testImage6.jpeg" alt=""></div>--%>
<%--                    <div class="swiper-slide"><img src="../resources/img/TestImage/testImage7.jpeg" alt=""></div>--%>
<%--                    <div class="swiper-slide"><img src="../resources/img/TestImage/testImage8.jpeg" alt=""></div>--%>
<%--                    <div class="swiper-slide"><img src="../resources/img/TestImage/testImage9.jpeg" alt=""></div>--%>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
  

        <!-- content_item은 보여줘야해서 늘려놓음 preview_content칸 안에서 6개들어감-->
        <div id="main_community_preview">
            <div id="fir_com_preview">
                <div id="request_preview">
                    <div class="preview_title" onclick="location.href='resolveMain'"><div class="titleDiv1">HOTFIX</div><div class="titleDiv2"><img src="../../resources/img/preview/HotfixPreview.png"></div></div>
                    <div class="preview_content">
                        <c:forEach var="Req" items="${Request}" begin="0" end="5">
                            <div class="content_item">
                                <c:set var="Req_time" value="${Req.Recruiting_time}"/>
                                <c:set var="Req_time_cut" value="${fn:substring(Req_time,11 ,19)}"/>
                                <div class="item_writer"><span>${Req.Requester}</span>&nbsp;
                                    <span><ion-icon name="construct-sharp"></ion-icon>&nbsp;
                                        ${Req.Commission}</span></div>
                                <div class="item_info"><span><ion-icon name="timer-sharp"></ion-icon> ${Req_time_cut}</span></div>
                                <div class="item_title"><span class="title_color" onclick="location.href='resolveMain'">${Req.Request_title}</span></div>
                                <div class="item_info2">
                                   
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div id="board1_preview">
                    <div class="preview_title" onclick="location.href='list'"><div class="titleDiv1">COMMUNITY</div><div class="titleDiv2"><img src="../../resources/img/preview/ComnPreview.png" style="height: 16vh; bottom: -2vh"></div></div>
                    <div class="preview_content">
                        <c:forEach var="Boa" items="${Boardlist}" begin="0" end="5">
                            <div class="content_item">
                                <div class="item_writer"><span>${Boa.Post_writer}</span>&nbsp;<span><ion-icon
                                        name="flame-sharp"></ion-icon>
                                        ${Boa.User_score}</span></div>
                                <c:set var="Boa_cr_date" value="${Boa.Post_cr_date}"/>
                                <c:set var="Boa_cr_date_cut" value="${fn:substring(Boa_cr_date,5 ,10)}"/>
                                <c:set var="Boa_cr_date_cut2" value="${fn:substring(Boa_cr_date,11 ,16)}"/>
                                <div class="item_info"><span>${Boa_cr_date_cut}&nbsp;&nbsp;${Boa_cr_date_cut2}</span></div>
                                <div class="item_title"><span class="title_color" onclick="location.href='/detail?Post_num=${Boa.Post_num}'">${Boa.Post_title}</span><span>&nbsp;&nbsp;#${Boa.Board_code}</span></div>
                                <div class="item_info2">
                                    <span><%-- <ion-icon name="eye-sharp"></ion-icon>&nbsp;${Boa.Post_view}&nbsp; --%>
                                            <ion-icon name="chatbubble-ellipses-sharp"></ion-icon>&nbsp;${Boa.Comment_cnt}&nbsp;
                                            <ion-icon name="swap-vertical-sharp"></ion-icon>&nbsp;${Boa.Post_like}</span>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div id="sec_com_preview">
                <div id="team_preview">
                    <div class="preview_title" onclick="location.href='teamlist'"><div class="titleDiv1">TEAM</div><div class="titleDiv2"><img src="../../resources/img/preview/TeamPreview.png" style="height:16vh;"></div></div>
                    <div class="preview_content">
                        <c:forEach var="Tea" items="${Teamlist}" begin="0" end="5">
                            <div class="content_item">
                                <div class="item_writer"><span>${Tea.Team_name}</span>&nbsp;<%--<span><ion-icon
                                        name="flame-sharp"></ion-icon>
                                        ${Tea.User_score}</span><span>${Tea.Team_num_mem}</span>--%></div>
                                <c:set var="Team_date" value="${Tea.Team_cr_date}"/>
                                <c:set var="Team_date_cut" value="${fn:substring(Team_date,0 ,10)}"/>
                                <div class="item_info"><span>${Team_date_cut}</span></div>
                                <div class="item_title"><span class="title_color" onclick="location.href='teamlist'">${Tea.Team_intro}</span></div>
                                <div class="item_info2"></div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div id="board2_preview">
                    <div class="preview_title"><div class="titleDiv1">공지사항</div><div class="titleDiv3"><img src="../../resources/img/preview/NoticePreview.png"></div></div>
                    <div class="preview_content">
                    	<c:forEach var="Not" items="${Notice}" begin="0" end="5">
                            <div class="content_item">
                                <div class="item_writer"><span>${Not.Notice_writer}</span>&nbsp;<%--<span><ion-icon
                                        name="flame-sharp"></ion-icon>
                                        ${Tea.User_score}</span><span>${Tea.Team_num_mem}</span>--%></div>
                                <c:set var="Notice_date" value="${Not.Notice_cr_date}"/>
                                <c:set var="Notice_date_cut" value="${fn:substring(Notice_date,2 ,10)}"/>
                                <c:set var="Notice_date_cut2" value="${fn:substring(Notice_date,11 ,16)}"/>
                                <div class="item_info"><span>${Notice_date_cut}&nbsp;&nbsp;${Notice_date_cut2}</span></div>
                                <div class="item_title" id="Main_notice" onclick="NoticeOn('<c:out value="${Not.Notice_contents}"/>')"><span class="title_color">${Not.Notice_title}</span></div>
                                <div class="item_info2"></div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
  

</div>

<!-- ====================== 공지사항 모달창 ====================== -->
<div class="Notice_modal">
    <div class="Notice_modal2">
    	<div><ion-icon name="close-outline" id="Notice_xicon"></ion-icon></div>
        <div class="noticeTitle"><p>공지사항</p></div>
        <div class="noticeCont"></div>
        <div class="close_btn">
                <button>닫기</button>
        </div>
    </div>
</div> 


<!-- 푸터 SLEEP 작업중 20221003-->
<%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

<script src="../resources/js/BasicFrame.js"></script>
<script src="../resources/js/MainPage.js"></script>

</html>
