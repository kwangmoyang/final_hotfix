<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../resources/css/BasicFrame.css">
    <link rel="stylesheet" href="../../resources/css/global.css">
    <link href="${path}/resources/css/boardWriteForm.css?after" rel="stylesheet"/>
    <link rel="icon" href="${Path}/resources/img/HotFavicon.png" type="image/png">
    <!-- 유니콘 아이콘 사이트 -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    
    
    <!-- CK 에디터 -->
    <script type="text/javascript" src="<c:url value="/resources/ckeditor/ckeditor.js"/>"></script>
    <title>HOTFIX - Easy Solution For You</title>
</head>

<body>

     <%@ include file="/WEB-INF/views/header/header.jsp" %>
    <div class="container">
    <!-- ======================== 작업 섹션 ======================= -->
    <div class="common_section">

        <!-- 메인섹션 -->
        <div class="main">
            <!-- 
                *22-08-22 HIKARI
                *** 테스트시  <div class="main"> 하고 테스트 할 것
            -->
            <!-- ==============작업공간============== -->
            
            <div class="boardWF_container">
                <div class="boardWF_title">
                    <h1>커뮤니티 이용하기</h1>
                    <p>커뮤니티를 통해 개발자들과 궁금증도 해결하는 시간 되세요</p>
                </div>
                
             <form id="form1" name="form1" method="post">
                <div class="WF_topic_box">
                    <p>토픽</p>
                    <select name="boardCode" id="boardCode">
                        <option value="" selected="selected">토픽을 선택해주세요</option>
                        <option value="일상">일상</option>
                        <option value="컬럼">컬럼</option>
                        <option value="커리어">커리어</option>
                        <option value="스터디">스터디</option>    
                    </select>
                </div>
                
                 <div class="WF_input_box">
                 	
                   <input type="hidden" value="${sessionScope.User_nickname}" name="Post_writer" id="Post_writer">  
                    
                  <!--    <input type="text" placeholder="작성자를 입력하세요" name="Post_writer" id="Post_writer" >-->
                </div>
                <div class="WF_input_box">
                    <p>제목</p>
                    <input type="text" placeholder="제목을 입력하세요" name="Post_title" id="Post_title" >
                </div>
                <div class="WF_detail_box">
                    <p>상세정보</p>
                    <textarea id="board_editor" name="Post_contents"></textarea>
                    <script type="text/javascript">	// 글쓰기 editor 및 사진 업로드 기능
                    CKEDITOR.replace('board_editor',
                        {filebrowserUploadUrl:'board/imgUpload.do'
                        });
                    </script>


                </div>
               	<br>
                <div class="boardWF_btn">
                    <!-- 해당부분 링크는 연결할곳이 없고 프론트단에서 할게 아니라서
                            ('토픽'칸의 설정에 따라서 다르게 이동되어야함) 정리했습니다 -SEO- -->
                   <span onclick="location.href='/list' ">취소</span> 
                    <button type="button" id="Submitbtn" >등록</button>
                </div>

                </form>
                 <br>
            </div>
        </div>
            
            
            <!-- ==============작업공간============== -->
        </div>


   
    </div>


    
    </div>
    <!-- 푸터 -->
     <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

<script src="../../resources/js/BasicFrame.js"></script>
<script src="../../resources/js/boardWriteForm.js"></script>


</html>