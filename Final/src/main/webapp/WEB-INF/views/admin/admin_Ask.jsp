<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../resources/css/BasicFrame.css">
    <link rel="stylesheet" href="../../resources/css/global.css">
    <link rel="stylesheet" href="../../resources/css/admin.css">
    <!-- 유니콘 아이콘 사이트 -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="icon" href="${Path}/resources/img/HotFavicon.png" type="image/png">
    <title>HOTFIX - Easy Solution For You</title>
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
                    <h2>1:1 문의</h2>
                    <button class="setBtn">선택완료</button>
                </div>
                <div class="adminT">
                    <button class="admin_AskBtn">전체목록</button>
                    <button class="admin_AskBtn">문의건수</button><button class="Ask_Figure"> 7건</button>
                    <button class="admin_AskBtn">미처리</button><button class="Ask_Figure"> 2건</button>
                    <button class="admin_AskBtn">처리중</button><button class="Ask_Figure"> 4건</button>
                    <button class="admin_AskBtn">처리완료</button><button class="Ask_Figure"> 1건</button>
                    <br>
                    <br>
                    <table border="1" class="admin_Customer">
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>No.</td>
                            <td>구분</td>
                            <td>제목</td>
                            <td>아이디</td>
                            <td>처리여부</td>
                            <td>등록일</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>10</td>
                            <td>test</td>
                            <td><a href="">인출문의&nbsp;</a></td>
                            <td>rrrrr</td>
                            <td>처리완료</td>
                            <td>2022-09-02</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>9</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>8</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>7</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>6</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>5</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>4</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>3</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>2</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>1</td>
                            <td></td>
                            <td><a href=""></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

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