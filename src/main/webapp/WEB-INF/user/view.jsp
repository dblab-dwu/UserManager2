<%@page contentType="text/html; charset=utf-8"%>
<%@page import="model.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  User user = (User) request.getAttribute("user");
--%> 
<html>
<head>
  <title>사용자 관리</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel=stylesheet href="<c:url value='/css/user.css' />" type="text/css">
  <script>
  	function userRemove() {
  		return confirm("정말 삭제하시겠습니까?");
  	}
  </script>
</head>
<body>
  <div class="appTitle">User-Manager2</div>
  <div class="title">
    <span>사용자 관리 - 사용자 정보 보기</span>
  </div>
  <table class="uTable">
    <tr>
      <th>사용자 ID</th>
      <td>${user.userId}<%-- <%=user.getUserId()%>--%></td>
    </tr>
    <tr>
      <th>이름</th>
      <td>${user.name}<%-- <%=user.getName()%>--%></td>
    </tr>
    <tr>
      <th>이메일 주소</th>
      <td>${user.email}<%-- <%=user.getEmail()%> --%></td>
    </tr>
    <tr>
      <th>전화번호</th>
      <td>${user.phone}<%-- <%=user.getPhone()%> --%></td>
    </tr>
  </table>
  <div class="buttons">
    <a class="btn"
      href="<c:url value='/user/update/form'>
	          <c:param name='userId' value='${user.userId}'/>
			 </c:url>">수정</a>
    <a class="btn"
      href="<c:url value='/user/delete'>
			   <c:param name='userId' value='${user.userId}'/>
			 </c:url>"
      onclick="return userRemove();">삭제</a>
    <a class="btn" href="<c:url value='/user/list'/>">목록</a>
  </div>
  <div class="errmsg">
    <!-- 수정 또는 삭제가 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
    <c:if test="${updateFailed || deleteFailed}">
      <c:out value="${exception.getMessage()}" />
    </c:if>
  </div>
</body>
</html>