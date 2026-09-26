# UserManager2
Sample project for DBP class
based on MVC architecture 

__Branches__
 
- master(v2.0)
- formCont(v2.1)
- <span style="color:blue">community(v2.2)</span> 

  
### community branch
- branched from *formCont*
- add community functionalities 
	* 커뮤니티 생성, 수정, 삭제, 목록조회, 상세보기  
    * 커뮤니티 회원등록/변경(사용자 추가/수정 시), 팀장 설정(커뮤니티 수정 시)  
	

변경/추가된 코드

- controller.RequestMapping --  _커뮤니티 관련 request에 대한 controller mapping 추가_
- controller.comm.* 추가 --  _커뮤니티 기능에 대한 controllers_
- controller.user.RegisterUserController --  _회원 가입 시 입력 form에 커뮤니티 리스트 전달, 입력된 커뮤니티 id 값 추출_
- controller.user.UpdateUserController --  _회원정보 수정 form에 기존 사용자 정보 및 커뮤니티 리스트 전달, 입력된 커뮤니티 id 값 추출_
- model.domain.User --  _커뮤니티 id, 이름, 회장여부 필드 추가_
- model.domain.Community 추가 --  _커뮤니티 객체 정의_
- model.dao.UserDao --  _기존 사용자 정보 생성,수정,삭제,목록조회,상세조회 메소드에서 소속 커뮤니티 정보도 포함, 커뮤니티 회원 정보 검색 메소드 추가(findUsersInCommunity(), getNumberOfUsersInCommunity())_
- model.dao.CommunityDao 추가 --  _커뮤니티 데이터 관리 수행_
- model.dao.ConnectionManager --  _DB 접속 설정 외부화: context.properties 파일 이용_
- model.dao.JDBCUtil --  _Sequence를 통해 생성된 커뮤니티 ID(PK) 값 확인을 위한 메소드 추가(getGeneratedKeys())_
- model.service.UserManager --  _커뮤니티 관련 메소드 추가(커뮤니티 생성,수정,삭제,목록조회,상세정보조회,회원목록조회), 사용자(회장) 수정/삭제 시 커뮤니티 회장 수정 로직 추가_
- model.service.MemberExistsException 추가 --  _회원이 존재하는 커뮤니티 삭제 시 예외 발생_
- resources/context.properties 추가 --  _DB 접속을 위한 파라미터 값 설정_
- css/community.css 추가 --  _커뮤니티 관련 화면을 위한 style 정의_
- WEB-INF/community/* 추가 --  _커뮤니티 생성 form, 수정 form, 목록조회, 상세조회 view pages_
- WEB-INF/user/list.jsp --  _각 사용자에 대해 소속 커뮤니티 이름 출력 및 커뮤니티 조회 링크 추가 / 커뮤니티 목록 조회 링크 추가_
- WEB-INF/user/registerForm.jsp --  _커뮤니티 목록 출력 및 선택(회원등록)을 위한 drop-down 메뉴 추가_
- WEB-INF/user/updateForm.jsp --  _커뮤니티 목록 출력 및 선택(회원등록)을 위한 drop-down 메뉴 추가_
- WEB-INF/user/view.jsp --  _소속 커뮤니티 이름 출력 및 커뮤니티 조회 링크 추가, 회장 여부 표시_

 
### 참고: 기존 Github repo에 추가된 새로운 branch를 local repo로 가져와서 import하는 방법
 
1. Eclipse에서 Git perspective로 전환
2. 기존 local repository 이름을 우클릭 > Remote > Fetch... 선택
2. 팝업 창이 열리면 Next 클릭
3. Source ref: 목록에서 가져올 branch 선택 후 Add Spec 클릭 (반복) > Finish 
4. local repository의 Branches > Remote Tracking 아래에 추가된 branch를 더블 클릭
5. Checkout as New Local Branch 클릭
6. Java EE perspective로 전환해서 import된 project에 대해 Maven > Update Project 실행
  
** 프로젝트에서 branch들 간의 전환은 Team > Switch To > branch 이름을 선택하거나 Git perspective에서 local branch 이름을 더블클릭하여 checkout 함 
