<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../resources/css/BasicFrame.css?after">
    <link rel="stylesheet" href="../../resources/css/global.css?after">
    <link rel="stylesheet" href="../../resources/css/admin.css?after">
    <!-- 유니콘 아이콘 사이트 -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <title>HotFix_admin</title>
</head>

<body>

    <%@ include file="/WEB-INF/views/header/header.jsp" %>

    <div class="container">
        <!-- ======================== 작업 섹션 ======================= -->
        <div class="common_section">
            <!-- 왼쪽 사이드 -->
            <div class="sideLeft">
                <div class="adminList">
                    <li><a href="/admin/index">회원관리</a></li>
                    <li><a href="/admin/report">신고관리</a></li>
                    <li><a href="/admin/board">게시판관리</a></li>
                    <li><a href="/admin/ask">1:1문의</a></li>
                </div>
            </div>

            <!-- 메인섹션 -->
            <div class="main">
                <!-- 관리자페이지 2022-08-22 bear 
                  여기서부터 작업하고 최종파일에 복붙하기 -->

                <div class="adminTitle">
                    <h2>회원관리</h2>
                   <!-- <button class="setBtn">선택삭제</button> -->
                </div>
                <div class="adminT">
                    <!-- <button class="admin_Membtn">전체목록</button> -->
                    <button class="admin_Membtn">총회원수</button><button class="Figure"> "${total}"명</button>
                    <!-- <button class="admin_Membtn">차단</button><button class="Figure"> 3명</button> -->
                    <!-- <button class="admin_Membtn">탈퇴</button><button class="Figure"> 5명</button> -->
                    <br>
                    <br>
                    <table border="1" class="admin_Customer">
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>이름</td>
                            <td>아이디</td>
                            <td>닉네임</td>
                            <td>이메일</td>
                            <td>핸드폰번호</td>
                            <td>가입일</td>
                            <td>활동점수</td>
                        </tr>
                        <c:forEach var="row" items="${map}">
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>${row.User_name}</td>
                            <td>${row.User_id}</td>
                            <td>${row.User_nickname}</td>
                            <td>${row.Email_address}</td>
                            <td>${row.Phone_num}</td>
                            <td>${row.SignDate}</td>
                            <td>${row.User_score}</td>
                        </tr>
                        </c:forEach>
                    </table>
                    <div class="admin_Paging">
                        <a href="#">이전</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">다음</a>
                    </div>
                </div>
                <!-- 여기까지 복붙라인 -->
                <!-- ==============작업공간============== -->
            </div>

        </div>

    </div>

    <!-- 푸터 -->
    <div class="common_footer">푸터임다</div>

</body>

<script src="../../resources/js/BasicFrame.js"></script>
<script src="../../resources/js/admin.js"></script>

</html>