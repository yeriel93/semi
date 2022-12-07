<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>
<link href="<%=request.getContextPath() %>/css/property/insertProperty.css" type="text/css" rel="stylesheet">

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<!-- 주소검색 api -->
<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<body>
	<!-- 매물등록메뉴 -->
	<section id="all" style="display:flex;">
        <div id="wrap">
            <h2>방 내놓기</h2>

             <h4>🔳 기본정보</h4>
            <div id="address">
                <span class="redtext">주소*</span>
                &nbsp;
                <input type="text" id="sample5_address" name="address" style="background-color: lightgrey; border-width:1px; height: 19px; width: 400px;">
                <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색" ><br>
                <!-- <input type="text" size="60%" name="addressIn" style="background-color: lightgrey; border-width:1px; height: 18px;"> -->
                <!-- <button class="greenbutton">주소찾기</button> -->
            </div>
            <br>
            <script>
                function sample5_execDaumPostcode() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            var addr = data.address; // 최종 주소 변수

                            // 주소 정보를 해당 필드에 넣는다.
                            document.getElementById("sample5_address").value = addr;
                          
                			console.log(data);
                			console.log(addr);
                        }
                    }).open();
                }
            </script>
            <div id="floor" style="display: flex; align-text: center;">
                <span class="redtext" style="margin-right: 16px;">층수*</span>
                <select name="floorSelect" style="margin-right: 5px;">
                    <option value="지상">지상</option>
                    <option value="반지하">반지하</option>
                    <option value="옥탑">옥탑</option>
                </select>
                <input type="number" name="floorIn" min="1" placeholder="숫자를 입력해주세요">
                <span class="greytext">층</span>
            </div>
            <hr style="width: 95%;">

            <h4>🔳 거래정보</h4>
            <div id="price" style="display: flex; align-items: center;">
                <span class="redtext" style="margin-right: 5px;">거래종류*</span>
                &nbsp; 
                <button class="greenbutton">➕ 전세</button>
                &nbsp;
                <button class="greenbutton">➕ 월세</button>
                &nbsp;
                <span style="font-size: 10px; margin-left: 5px;">
                    * 최대 5개까지만 등록이 가능합니다. <br>
                </span>
            </div>
            <div id="mainPirceDiv">
            	<input type="text" placeholder="보증금">
            	<input type="text" placeholder="월세">
            </div>
            <br>
            <div id="cost" style="display: flex; align-text: center;">
                <span class="redtext" style="margin-right: 16px;">관리비*</span>
                &nbsp;
                <input type="radio" name="costSelect" value="있음">있음
                <input type="number" name="costIn" min="1" placeholder="금액을 입력해주세요" style="margin-left: 5px;">
                <span class="greytext" style="margin-right: 16px;">만원</span>
                <input type="radio" name="costSelect" value="없음">없음
            </div>
            <br>
            <div id="costInclude">
                <span>관리비 포함항목</span>
                &nbsp;
                <input type="checkbox" class="checkbox" name="costE" value="전기">전기
                <input type="checkbox" class="checkbox" name="costG" value="가스">가스
                <input type="checkbox" class="checkbox" name="costW" value="수도">수도
            </div>
            <hr style="width: 95%;">

            <h4>🔳 방 정보</h4>
            <div id="room">
                <span class="redtext">방 구조*</span>
                &nbsp;
                <input type="radio" name="roomSelect" value="원룸(오픈형)">원룸(오픈형)
                <input type="radio" name="roomSelect" value="원룸(분리형)">원룸(분리형)
                <input type="radio" name="roomSelect" value="복층">복층
                <input type="radio" name="roomSelect" value="투룸">투룸
            </div>
            <br>
            <div id="area" style="display: flex; align-text: center;">
                <span class="redtext" style="margin-right: 38px;">면적*</span>
                &nbsp;
                <input type="number" name="areaIn" step="0.01">
                <span class="greytext">㎡</span>
            </div>
            <br>
            
            <div id="expiryDate">
                <span class="redtext">공실예정일*</span>
                &nbsp;
                <input type="date" name="exdayIn">
                &nbsp;
                <input type="radio" value="공실" name="edSelect">공실
                <input type="radio" value="협의입주" name="edSelect">협의입주
            </div>
            <br>
            <div id="option">
                <span style="margin-right: 30px;">옵션</span>
                &nbsp;
                <input type="checkbox" class="checkbox" name="costE" value="에어컨">에어컨
                <input type="checkbox" class="checkbox" name="costG" value="세탁기">세탁기
                <input type="checkbox" class="checkbox" name="costW" value="냉장고">냉장고
                <input type="checkbox" class="checkbox" name="costW" value="인덕션">인덕션
                <input type="checkbox" class="checkbox" name="costW" value="전자렌지">전자렌지
            </div>
            <hr style="width: 95%;">

            <h4>🔳 추가 정보</h4>
            <div id="animal">
                <span>반려동물가능여부</span>
                &nbsp;
                <input type="radio" value="가능" name="aniSelect">가능
                <input type="radio" value="불가능" name="aniSelect">불가능
            </div>
            <br>
            <div id="parking">
                <span style="margin-right: 30px;">주차가능여부</span>
                &nbsp;
                <input type="radio" value="가능" name="parkSelect">가능
                <input type="radio" value="불가능" name="parkSelect">불가능
            </div>
            <br>
            <div id="comment" style="display: flex; align-items: center;">
                <span>상세 설명</span>
                &nbsp;
                <textarea cols="50" rows="5" style="resize: none;" placeholder="2000자 이내로 작성해주세요"></textarea>
            </div>
            <hr style="width: 95%;">

            <h4>🔳 사진</h4>
            <div id="photo">
                <button>추가</button>
                <span style="font-size: 10px; color:red">*5개까지만 추가 가능합니다.</span>
            </div>
            <br>

            <div id="addroom" style="text-align:center">
                <button class="greenbutton" style="width: 300px; height: 30px;">등록하기</button>
            </div>
            <br>
        </div>

        <!-- 네비게이션 바 -->
        <div id="navi">
            <h4>기본정보</h4>
            <a href="#address" class="aTag">주소</a> <br>
            <a href="#floor" class="aTag">층수</a> <br>
            <hr>

            <h4>거래정보</h4>
            <a href="#price" class="aTag">거래종류(금액)</a> <br>
            <a href="#cost" class="aTag">관리비</a> <br>
            <a href="#costInclude" class="aTag">관리비 포함항목</a> <br>
            <hr>

            <h4>방 정보</h4>
            <a href="#room" class="aTag">방 구조</a> <br>
            <a href="#area" class="aTag">면적</a> <br>
            <a href="#option" class="aTag">옵션</a> <br>
            <a href="#expiryDate" class="aTag">공실예정일</a> <br>
            <hr>

            <h4>추가 정보</h4>
            <a href="#animal" class="aTag">반려동물가능여부</a> <br>
            <a href="#parking" class="aTag">주차가능여부</a> <br>
            <a href="#comment" class="aTag">상세 설명</a> <br>
            <hr> 

            <h4>사진</h4>
            <a href="#photo" class="aTag">방사진 등록</a> <br>
        </div>
    </section>
</body>
</html>