<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원가입</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/join.css" />
  </head>
  <body>
    <main>
      <div class="main-wrapper">
        <div class="main-container">
          <!-- form 태그 action 지정하기 -->
          <form action="joinOk.me" method="post">
            <div class="logo-pandang">
              <img src="${pageContext.request.contextPath}/assets/img/logo.jpg" alt="" />
            </div>
            <h1>회원가입</h1>
            <div class="input">
              <label for="id">아이디</label><br />
              <input
                type="text"
                id="id"
                name="memberId"
                placeholder="아이디를 입력하세요"
                required
              /><br />
              <!-- ajax 아이디 중복시 뜨는것 -->
              <span class="check-msg" id="check-id-msg"></span>
            </div>
            <div class="input">
              <label for="password">비밀번호</label><br />
              <input
                type="password"
                id="password"
                name="memberPassword"
                placeholder="비밀번호를 입력하세요"
                required
              /><br />
              <!-- 비밀번호 문제 시 뜨는것 -->
              <span class="check-msg" id="check-pw-msg"></span>
            </div>
            <div class="input">
              <label for="password">비밀번호 확인 </label><br />
              <input
                type="password"
                id="password2"
                name="memberPassword"
                placeholder="비밀번호를 입력하세요"
                required
              /><br />
              <!-- ajax 비밀번호 불일치 시 뜨는 것 -->
              <span class="check-msg" id="check-pw-msg2"></span>
            </div>
            <div class="input">
              <label for="name">이름</label><br />
              <input
                type="text"
                id="name"
                name="memberName"
                placeholder="이름을 입력하세요"
                required
              />
            </div>
            <div class="input">
              <label for="">닉네임</label><br />
              <input
                type="text"
                id="nickname"
                name="memberNickname"
                placeholder="닉네임을 입력하세요"
                required
              /><br />
              <span class="check-msg" id="check-nickname-msg"></span>
            </div>
            <div class="input input-birth">
              <label for="">생년월일</label><br />
              <div>
                <input
                  type="text"
                  id="yyyy"
                  name="memberBirthYear"
                  maxlength="4"
                  placeholder="년(4자)"
                  required
                />
                <select name="memberBitrhMonth" id="mm" required>
                  <option value="">월</option>
                  <option value="01">1</option>
                  <option value="02">2</option>
                  <option value="03">3</option>
                  <option value="04">4</option>
                  <option value="05">5</option>
                  <option value="06">6</option>
                  <option value="07">7</option>
                  <option value="08">8</option>
                  <option value="09">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
                <input
                  type="text"
                  id="dd"
                  name="memberBirthDay"
                  maxlength="2"
                  placeholder="일"
                  required
                />
              </div>
            </div>
            <div class="input">
              <label>성별</label><br />
              <div class="gender">
                <input
                  type="radio"
                  id="male"
                  name="memberGender"
                  value="M"
                  checked
                />
                <label for="male">남성</label>
                <input type="radio" id="female" name="memberGender" value="F" />
                <label for="female">여성</label>
              </div>
            </div>
            <div class="input">
              <label for="">전화번호</label><br />
              <input
                type="tel"
                id="phonenumber"
                name="memberPhoneNumber"
                placeholder="전화번호(숫자만) 입력"
                required
              />
            </div>
            <div class="input">
              <div class="address">
                <label>우편번호</label><br />
                  <input
                    type="text"
                    id="zoneCode"
                    name="zoneCode"
                    readonly
                    placeholder="우편번호 입력"
                    required
                  />
              </div>
              <br />
              <div class="address">
                <label>주소</label>
                <br />
                  <input
                    type="text"
                    id="address"
                    name="address"
                    placeholder="주소 입력"
                    required
                  />
              </div>
              <br />
              <div class="address">
                <label>상세 주소</label>
                <br />
                  <input
                    type="text"
                    name="addressDetail"
                    placeholder="상세주소 입력"
                    required
                  />
              </div>
            </div>
            <div class="input">
              <label for="">이메일</label><br />
              <input
                type="text"
                id="email"
                name="memberEmail"
                placeholder="이메일을 입력하세요"
                required
              />
            </div>
            <div class="input">
              <label for="name">비밀번호 찾기</label><br />
              <input
                type="text"
                id="ask"
                name="memberName"
                placeholder="질문을 입력하세요"
                required
              /><br />
              <input
                type="text"
                id="answer"
                name="memberName"
                placeholder="답변을 입력하세요"
                required
              />
            </div>
            <div class="input">
              <div class="agree-wrap">
                <label for="agree">회원 가입 약관에 동의합니다.</label>
                <input type="checkbox" id="agree" name="agree" required />
              </div>
            </div>
            <div class="button-container">
              <button type="button" class="button1">이전</button>
              <button type="submit" class="button2">회원가입</button>
            </div>
          </form>
        </div>
      </div>
    </main>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- 스크립트  경로 jsp 제대로 잡기 -->
  <script src="${pageContext.request.contextPath}/assets/js/join.js"></script>
</html>
