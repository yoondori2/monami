# :pushpin: monami
>모나미의 소식을 전달하고 판매하는 사이트 (미완성)

</br>

## 1. 제작 기간 & 참여 인원
- 2022.01.17 ~ 2022.03.15(약 2개월)
- 팀 프로젝트(총 5명)

</br>

## 2. 사용 기술
#### `Back-end`
  - Java 8
  - JSP
  - MySQL 8.0
 
#### `Front-end`
  - javascript
  - HTML/CSS

</br>

## 3. 기획 의도 
기존의 모나미 사이트의 아쉬운 UI를 보완하고 추가 기능을 넣으면 클라이언트가 더 편리하게 이용할 수 있을것이라 생각하여 </br>
모나미 프로젝트를 기획하게 되었습니다.



## 4. ERD 설계
<img src="https://user-images.githubusercontent.com/91296293/163679156-751def75-aec0-43f6-9da0-22c9157aad4a.png" >

## 5. 팀에서 맡은 역할
1) 모나미 사이트 UI 구현 (클론코딩) 
2) 로그인, 회원가입 모달창 구현, 유효성 검사 :pushpin: [코드 확인](https://github.com/yoondori2/monami/blob/df5dafd789bcf3f2a9cf9f998d5d43267f33cf14/WebContent/js/user.js#L85)
3) 관리자로 로그인시 뉴스와 이벤트 게시판을 운영하도록 기능 추가 
4) 다른 li로 이동시 겹쳐지는 네비게이션 바 수정 

![before version](https://user-images.githubusercontent.com/91296293/163977268-d39a0609-ec4b-49b2-a5b3-7eafd2283dd8.png)
## 6. 전체 흐름 
<img  alt="monami flow chart " src="https://user-images.githubusercontent.com/91296293/163698292-e65b51ce-61ad-48d6-9b42-34f62a64872b.png"></br>

모나미 사이트를 기반으로 게시판 등록 기능에 초점을 맞추어 구현했습니다. 장바구니&판매기능은 데드라인을 넘어서서 다 구현하지 못했습니다.

## 7 핵심 기능
이 서비스의 핵심 기능은 게시글 등록 기능입니다.  
이 단순한 기능의 흐름을 보면, 서비스가 어떻게 동작하는지 알 수 있습니다.  

<details>
<summary><b>핵심 기능 설명 펼치기</b></summary>
<div markdown="1">

### 7.1. 전체 흐름
<img alt="flow0" src="https://user-images.githubusercontent.com/91296293/163973206-53c67747-1504-411a-b686-cea9397ebfc7.png"></br>
- 본 프로젝트는 JSP 기반으로 MVC2 구조로 진행하였습니다.

### 7.2. Controller 
<img alt="flow2" src="https://user-images.githubusercontent.com/91296293/163971448-fd488a06-4073-4579-8bac-c9fc28c3fa61.png"></br>

- **요청 응답** :pushpin: [코드 확인](https://github.com/yoondori2/monami/blob/df5391f9c56a24c3c293f53301e47a2a988a4a2f/com/monami/board/BoardFrontController.java#L14)
  - Controller에서는 요청을 화면단에서 넘어온 요청을 받고 DAO에서 로직을 처리한다.
  
  - 처리가 끝난 후에는 그 응답객체를 path와 응답방식(true or false)가 담긴 객체에 담아 넘겨준다.


### 7.3. Model(DAO,DTO)
<img alt="flow3" src="https://user-images.githubusercontent.com/91296293/163971456-2098d945-ba02-458a-b4f4-503bb434e471.png">

- **요청 처리** :pushpin: [코드 확인](https://github.com/yoondori2/monami/blob/df5391f9c56a24c3c293f53301e47a2a988a4a2f/com/monami/board/NewsWriteOkAction.java#L18)
  
  - NewsWriteOkAction.java 에서 파라미터를 전달받아 DAO에서 처리한다.


### 7.4 Query문 작성
  <img alt="flow4" src="https://user-images.githubusercontent.com/91296293/163971459-6b2cf8df-635c-415b-9db5-4095d21637b3.png"></br>



### 7.5. view
<img  alt="flow5" src="https://user-images.githubusercontent.com/91296293/163971466-e4e51666-1b74-47a6-b720-31eac8543b09.png">

- **결과 응답** :pushpin: [코드 확인](https://github.com/yoondori2/monami/blob/df5391f9c56a24c3c293f53301e47a2a988a4a2f/WebContent/teamin/newsview.jsp#L74)
 
 - 처리가 완료된 결과를 redirect 방식으로 전달하고 view단에서 저장된 정보를 출력해준다.

</div>
</details>

</br>

## 6. 회고 / 느낀점
>프로젝트 개발 회고 글: https://turtle8760.tistory.com/87

