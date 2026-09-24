# UserManager2
Sample project for DBP class
based on MVC architecture 

__Branches__
 
- master (default)
- <span style="color:blue">update (UserManager2u)</span> 
  
### update branch
- branched from *master*
- integrates 2-phase data input processing using a form controller

변경된 코드

- controller.RequestMapping --  _"/user/login/form", "/user/register/form",  "/user/update/form" request들에 대한 controller mapping 삭제_
- controller.user.LoginController --  _login form에 대한 요청(GET request) 처리 포함_
- controller.user.RegisterUserController --  _register form에 대한 요청(GET request) 처리 포함_
- controller.user.UpdateUserFormController --  _UpdateUserController와 통합되어 삭제됨_
- controller.user.UpdateUserController --  _UpdateUserFormController의 기능(update form 생성에 대한 요청(GET request) 처리) 포함_
- /user/{loginForm.jsp, list.jsp} --  _"회원가입", "사용자추가" 링크의 request URI를 "/user/register" 로 변경_
- /user/view.jsp --  _"수정" 링크의 request URI를 "/user/update" 로 변경_
- 기존 Controller들에서 --  _로그인 체크 실패나 로그아웃 후 login form으로 redirection하기 위한 URI를 "/user/login"으로 변경_

### Eclipse에서 local repo를 생성하고 Github repo에서 project를 가져와서 import하는 방법 
 
1. File 메뉴 > Import... > Git | Projects from Git (with smart import) 선택
2. Clone URI 선택
3. repository의 URI 입력: https://github.com/dblab-dwu/UserManager2.git
4. 가져올 branch (또는 모든 branch) 선택
5. 생성할 local repository 경로 확인 또는 변경 (예: C:\Users\사용자\git\UserManager2) 
6. 다음 화면(Imports project ...)에서 Finish
7. 프로젝트가 import되었는지 확인하고 프로젝트가 빌드 완료될 때까지 기다림
8. 오류가 표시되어 있으면 Maven > Update project.. 실행 (Alt+F5)
 
### 기존 Github repo에 추가된 새로운 branch를 local repo로 가져와서 import하는 방법
 
1. Eclipse에서 Git perspective로 전환
2. 기존 local repository 이름을 우클릭 > Remote > Fetch... 선택
2. 팝업 창이 열리면 Next 클릭
3. Source ref: 목록에서 가져올 branch 선택 후 Add Spec 클릭 (반복) > Finish 
4. local repository의 Branches > Remote Tracking 아래에 추가된 branch를 더블 클릭
5. Checkout as New Local Branch 클릭
6. Java EE perspective로 전환해서 import된 project에 대해 Maven > Update Project 실행
  
** 프로젝트에서 branch들 간의 전환은 Team > Switch To > branch 이름을 선택하거나 Git perspective에서 local branch 이름을 더블클릭하여 checkout 함 
