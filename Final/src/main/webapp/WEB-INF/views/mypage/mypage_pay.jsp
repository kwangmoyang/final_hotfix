<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 메인 프레임 연동-->
    <link rel="stylesheet" href="../../resources/css/BasicFrame.css">
    <link rel="stylesheet" href="../../resources/css/myPage_pay.css">
    <!-- 폰트 불러올라고-->
    <link rel="stylesheet" href="../../resources/css/global.css">
    <!-- 유니콘 아이콘 사이트 -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="icon" href="${Path}/resources/img/HotFavicon.png" type="image/png">
    <title>HOTFIX - Easy Solution For You</title>
</head>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$("#check_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('TC0ONETIME'); 
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
		IMP.request_pay({
			pg: 'kakao',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
			/* 
			 *  merchant_uid에 경우 
			 *  https://docs.iamport.kr/implementation/payment
			 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 */
			name: '주문명 : 커미션',
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
			amount: 10000,
			// amount: ${bid.b_bid},
			// 가격 
			buyer_name: '양광모',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
			// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount;
				success.submit();
				// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
				// 자세한 설명은 구글링으로 보시는게 좋습니다.
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
</script>

<body>

      <%@ include file="/WEB-INF/views/header/header.jsp" %>

    <div class="container">
    <!-- ======================== 작업 섹션 ======================= -->
    <div class="common_section">
        <!-- 왼쪽 사이드 -->
        <%@ include file="/WEB-INF/views/mypage/mypageSidebar.jsp"%>
        <!-- 메인섹션 -->
        <div class="main">
            <!-- 
                *22-08-22 HIKARI
                *** 테스트시  <div class="main"> 하고 테스트 할 것
            -->
            <!-- ==============작업공간============== -->
            <div class="dpContainer">
                <div class="dpSubBox">
                  <div class="dpGetPoint">
                    <h2>보유 픽스</h2>
                    <span>100 Fix <span>
                     
                 </div>
                 <div class="dpGetPoint">
                    <h2>해결 픽스</h2>
                    <span>50 Fix <span>
                 </div>
                 <div class="dpGetPoint">
                    <h2>총 보유 픽스</h2>
                    <span>${sessionScope.User_point } Fix <span>   
                 </div>
            
                </div>
                <div class="charge">
                  <form method="post" action="/kakaoPay">	
                    <button id=check_module>충전</button>
                  </form>  
                    <button>정산</button>
                </div>
                <div class="dpListDate"> 
                    <span>충전/사용/적립/정산 내역 조회</span>
                    <input type="date"> ~ <input type="date"> 
                        <select name="pointList">
                            <option value="" selected="selected">전체 상태</option>
                            <option value="사용">사용</option>
                            <option value="적립">적립</option>
                            <option value="정산">정산</option>
                            <option value="충전">충전</option>
                        </select>
                        <button>조회<i class="fas fa-search"></i></button>
                    </div>
                    <h2 class="dpListTitle">2022년 8월</h2>
                    <div class="dpList">
                        <div class="dpListLeft">
                            <div class="dpListCir">
                                <h2>사용</h2>
                            </div>
                        </div>
                        <div class="dpListMid">
                            <span>2022.08.12</span>
                            <span>해결요청 시 사용</span>
                            <span>HOT FIX 해결 요청</span>
                        </div>
                        <div class="dpListRight">
                            <span>-50Fix</span>
                            <button>내역삭제</button>
                        </div>
                    </div> 
                    <div class="dpList save">
                        <div class="dpListLeft">
                            <div class="dpListCir">
                                <h2>적립</h2>
                            </div>
                        </div>
                        <div class="dpListMid">
                            <span>2022.08.22</span>
                            <span>해결완료 시 적립</span>
                            <span>HOT FIX 해결 완료</span>
                        </div>
                        <div class="dpListRight">
                            <span>+100Fix</span>
                            <button>내역삭제</button>
                        </div>
                    </div> 
                    <h2 class="dpListTitle">2022년 9월</h2>
                    <div class="dpList charge">
                        <div class="dpListLeft">
                            <div class="dpListCir">
                                <h2>충전</h2>
                            </div>
                        </div>
                        <div class="dpListMid">
                            <span>2022.09.12</span>
                            <span>충전</span>
                            <span>FIX 충전</span>
                        </div>
                        <div class="dpListRight">
                            <span>+50Fix</span>
                            <button>내역삭제</button>
                        </div>
                    </div> 
                    <div class="dpList get">
                        <div class="dpListLeft">
                            <div class="dpListCir">
                                <h2>정산</h2>
                            </div>
                        </div>
                        <div class="dpListMid">
                            <span>2022.09.12</span>
                            <span>정산</span>
                            <span>FIX 정산</span>
                        </div>
                        <div class="dpListRight">
                            <span>-150Fix</span>
                            <button>내역삭제</button>
                        </div>
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
<script src="../../resources/js/mypage_new_real.js"></script>

</html>