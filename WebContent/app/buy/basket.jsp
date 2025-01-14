<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>basket</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/basket.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
  </head>
  <body>
    <div class="all-wrap">
      <!-- #######header####### -->
      <div class="header-container">
        <!-- 헤더 영역 시작  -->
        <div class="start-container">
          <!-- 메인페이지 이동처리 -->
          <a href="#"
            ><img src="${pageContext.request.contextPath}/assets/img/logo.jpg" alt="" class="logo-img"
          /></a>
          <!-- 판당 페이지 이동처리 -->
          <a href="#" class="header-list">판당</a>
          <font>·</font>
          <!-- 산당 (스토어) 페이지 이동처리 -->
          <a href="#" class="header-list">산당</a>
          <font>·</font>
          <!-- sns 페이지 이동처리 -->
          <a href="#" class="header-list">sns</a>
        </div>
        <div class="search">
          <input
            type="text"
            class="search-bar"
            placeholder="어떤 창작물을 찾으시나요?"
          />
          <a href="#">
            <button type="button" class="material-symbols-outlined">
              search
            </button>
          </a>
        </div>
        <div class="login-container">
          <!-- 로그인 페이지 이동처리 -->
          <a href="#" class="login">로그인</a>
          <!-- 회원가입 페이지 이동처리 -->
          <a href="#" class="join">회원가입</a>
          <!-- 마이페이지, 로그아웃 이동처리(display none 상태, 로그인시 보여야함) -->
          <a href="#" class="my-page">마이페이지</a>
          <a href="#" class="logout">로그아웃</a>
        </div>
        <!-- 헤더 영역 종료 -->
      </div>

      <!-- ######main##### -->
      <div class="container">
        <table class="board-table">
          <div class="basket-table">장바구니</div>
          <thead>
            <tr>
              <th class="check-box">
                <label>
                  <input
                    type="checkbox"
                    name="basket_product_normal_type_normal"
                    value="selectall"
                    onclick="selectAll(this)"
                  />
                </label>
              </th>
              <th>이미지</th>
              <th>상품정보</th>
              <th>가격</th>
              <th>수량</th>
              <th>상품금액</th>
              <th>배송비</th>
              <th>총가격</th>
            </tr>
          </thead>

          <tbody>
            <tr>
              <td class="check-box">
                <label>
                  <input
                    type="checkbox"
                    id="basket_chk_id_0"
                    name="basket_product_normal_type_normal"
                  />
                </label>
              </td>
              <td class="basket-img">
                <a href="#">
                  <img src="${pageContext.request.contextPath}/assets/img/basket/ohdungicushion.jpg" alt="" />
                </a>
              </td>
              <td class="store-title">
                <a href="#">
                  오둥이 쿠션
                </a>               
                </td>
              <td class="store-price">29800</td>
              <td class="buy-cnt">
                <div class="quantity-wrap">
                    <input type="text" class="quantity-input" value="1" >
                    <!-- <input type="text" class="quantity-input" value="1" readonly>이면
                      +,- 버튼을 이용해야지만 숫자가 변경됨 -->
                  <div class="quantity-btn">                    
                    <span>
                      <button class="plus-btn">+</button>
                      <button class="minus-btn">-</button>
                    </span>
                  </div>
                  
                </div>
                  <div class="modify-wrap">
                    <span><button class="modify-btn">수정</button></span>
                  </div>                  
                </td>
              <td class="store-total-price">59600</td>
              <td class="post-price">3000</td>
              <td class="buy-total-price">62600</td>
            </tr>
            <tr>
              <td class="check-box">
                <label>
                  <input
                    type="checkbox"
                    id="basket_chk_id_1"
                    name="basket_product_normal_type_normal"
                  />
                </label>
              </td>
              <td class="basket-img">
                <a href="#">
                  <img src="${pageContext.request.contextPath}/assets/img/basket/jrongcalendar.jpg" alt="" />
                </a>
              </td>
              <td class="store-title"><a href="#">
                2023 재롱이 달력
              </a> 
            </td>
              <td class="store-price">15000</td>
              <td class="buy-cnt">          
                <div class="quantity-wrap">
                <input type="text" class="quantity-input" value="1" >
              <div class="quantity-btn">                    
                <span>
                  <button class="plus-btn">+</button>
                  <button class="minus-btn">-</button>
                </span>
              </div>
              
            </div>
              <div class="modify-wrap">
                <span><button class="modify-btn">수정</button></span>
              </div>
            </td>
              <td class="store-total-price">45000</td>
              <td class="post-price">3000</td>
              <td class="buy-total-price">48000</td>
            </tr>
            <tr>
              <td class="check-box">
                <label>
                  <input
                    type="checkbox"
                    id="basket_chk_id_2"
                    name="basket_product_normal_type_normal"
                  />
                </label>
              </td>
              <td class="basket-img">
                <a href="#">
                  <img src="${pageContext.request.contextPath}/assets/img/basket/choigosimmouse.jpg" alt="" />
                </a>          
              </td>
              <td class="store-title"> <a href="#">
                최고심 마우스 패드 무지개
              </a> 
            </td>
              <td class="store-price">5000</td>
              <td class="buy-cnt">          
                <div class="quantity-wrap">
                <input type="text" class="quantity-input" value="1" >
              <div class="quantity-btn">                    
                <span>
                  <button class="plus-btn">+</button>
                  <button class="minus-btn">-</button>
                </span>
              </div>
              
            </div>
              <div class="modify-wrap">
                <span><button class="modify-btn">수정</button></span>
              </div>
            </td>
              <td class="store-total-price">5000</td>
              <td class="post-price">3000</td>
              <td class="buy-total-price">8000</td>
            </tr>
            <tr>
              <td class="check-box">
                <label>
                  <input
                    type="checkbox"
                    id="basket_chk_id_3"
                    name="basket_product_normal_type_normal"
                  />
                </label>
              </td>
              <td class="basket-img">
                <a href="#">
                  <img src="${pageContext.request.contextPath}/assets/img/basket/ohdungicushion.jpg" alt="" />
                </a>
              </td>
              <td class="store-title">
                <a href="#">
                  오둥이 쿠션
                </a>
              </td>
              <td class="store-price">29800</td>
              <td class="buy-cnt">          
                <div class="quantity-wrap">
                <input type="text" class="quantity-input" value="1" >
              <div class="quantity-btn">                    
                <span>
                  <button class="plus-btn">+</button>
                  <button class="minus-btn">-</button>
                </span>
              </div>
              
            </div>
              <div class="modify-wrap">
                <span><button class="modify-btn">수정</button></span>
              </div>
            </td>
              <td class="store-total-price">59600</td>
              <td class="post-price">3000</td>
              <td class="buy-total-price">62600</td>
            </tr>
            <tr>
              <td class="check-box">
                <label>
                  <input
                    type="checkbox"
                    id="basket_chk_id_4"
                    name="basket_product_normal_type_normal"
                  />
                </label>
              </td>
              <td class="basket-img">
                <a href="#">
                  <img src="${pageContext.request.contextPath}/assets/img/basket/ohdungicushion.jpg" alt="" />
                </a>
              </td>
              <td class="store-title"><a href="#">오둥이 쿠션</a></td>
              <td class="store-price">29800</td>
              <td class="buy-cnt">          
                <div class="quantity-wrap">
                <input type="text" class="quantity-input" value="1" >
              <div class="quantity-btn">                    
                <span>
                  <button class="plus-btn">+</button>
                  <button class="minus-btn">-</button>
                </span>
              </div>
              
            </div>
              <div class="modify-wrap">
                <span><button class="modify-btn">수정</button></span>
              </div>
            </td>
              <td class="store-total-price">59600</td>
              <td class="post-price">3000</td>
              <td class="buy-total-price">62600</td>
            </tr>
          </tbody>
        </table>
        <div class="delete-order">
          <div class="check-product">선택상품</div>
          <div class="delete"><button>삭제하기</button></div>
        </div>

        <!-- 장바구니 5개까지 뜨고 6개부터는 다음페이지로 넘어감 -->
        <!-- 장바구니에서 결제하고 나면 장바구니에 담았던 상품 삭제되어야 함 -->

        <table class="pay-table">
          <div class="basket-table">
            <thead>
              <tr>
                <th>총 상품 금액</th>
                <th>총 배송비</th>
                <th class="total-pay-th">결제 예정 금액</th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <td class="final-product-pay">2057153</td>
                <td class="final-post-pay">9000</td>
                <td class="final-total-pay">23186163</td>
              </tr>
            </tbody>
          </div>
        </table>
        <div class="pay-box">
          <div class="pay-all">
            <a href="#"><button>전체상품 주문</button></a>
          </div>
          <div class="pay-check">
            <a href="#"><button>선택상품 주문</button></a>
          </div>
        </div>

        <!-- 체크를 유지한 채 다음 페이지로 이동시킬 수 있나?
              이동 불가능해서 삭제함-->

        <!-- <div class="pagination">
          <ul>
            <li><a href="#" class="prev">&lt;</a></li>
            <li><a href="#" class="active">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#" class="next">&gt;</a></li>
          </ul>
        </div>
      </div> -->

      <!-- #####footer##### -->
      <!-- @@@@푸터@@@@ -->
      <div class="footer-container">
        <!-- 푸터 영역 시작 -->
        <div class="footer-logo">
          <h1>Pandang</h1>
        </div>
        <div class="name">
          <p>Gwangin Park</p>
          <p>Duksoo Kim</p>
          <p>Gaeun Lee</p>
          <p>Yeseul Kim</p>
          <p>Yeonjae Chung</p>
          <p>Geonhee Lee</p>
        </div>
        <div class="information">
          <p>주식회사 코나우딩요</p>
          <p>대표 박광인</p>
          <p>서울특별시 강남구</p>
          <p>사업자번호 123-45-67890</p>
          <p>통신판매업 신고: 2022-서울강남-0000</p>
          <p>전화: +82(0)07 1111 2222-3</p>
        </div>
        <!-- 푸터 영역 종료 -->
      </div>
    </div>
    <script
      src="https://code.jquery.com/jquery-3.6.3.js"
      integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
      crossorigin="anonymous"
    ></script>
    <script src="${pageContext.request.contextPath}/assets/js/basket.js"></script>
  </body>
</html>