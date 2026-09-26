<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>커뮤니티 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="<c:url value='/css/community.css' />" type="text/css">
<script>
    function commCreate() {
    	if (form.name.value == "") {
    		alert("이름을 입력하십시오.");
    		form.name.focus();
    		return false;
    	} 
    	if (form.desc.value == "") {
    		alert("설명을 입력하십시오.");
    		form.desc.focus();
    		return false;
    	}	
    	form.submit();
    }
    </script>
</head>
<body>
  <div class="appTitle">${pageContext.servletContext.servletContextName}</div>
  <div class="title">
    <span>커뮤니티 관리 - 생성</span>
  </div>
  <!-- creation form  -->
  <form name="form" method="POST" action="<c:url value='/community/create' />">
    <div class="errmsg">
      <!-- 커뮤니티 생성이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
      <c:if test="${creationFailed}">
        <font color="red"><c:out
            value="${exception.getMessage()}" /></font>
      </c:if>
    </div>
    <table class="cTable">
      <tr>
        <th>이름</th>
        <td><input type="text" name="name"
          <c:if test="${creationFailed}">value="${comm.name}"</c:if> />
        </td>
      </tr>
      <tr>
        <th>설명</th>
        <td><input type="text" name="desc"
          <c:if test="${creationFailed}">value="${comm.description}"</c:if> />
        </td>
      </tr>
    </table>    
    <div class="buttons">
      <button type="button" onClick="commCreate()">생성</button>
      <a class="btn" href="<c:url value='/community/list' />">커뮤니티 목록</a>
    </div>    
  </form>
</body>
</html>