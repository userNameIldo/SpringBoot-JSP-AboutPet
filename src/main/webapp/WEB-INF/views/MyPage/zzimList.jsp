<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<h2>${categoryName }</h2>

<!-- 전체보기 -->
<!-- 
<c:if test="${categoryName=='All' }">

<c:forEach var="zzimdto" items="${zzimlists }">
	<c:if test="${zzimdto.categoryName=='STORE' }">
	<li>
		
		${zzimdto.categoryName }
	 게시물 고유num:${zzimdto.num }
	
	</li>
	</c:if>
</c:forEach>	

<hr/>	

<c:forEach var="zzimdto" items="${zzimlists }">		
	<c:if test="${zzimdto.categoryName=='Log' }">
	
	<li>
	
		${zzimdto.categoryName }
	 그 게시물 고유num:	${zzimdto.num }
	
	</li>

	</c:if>
</c:forEach>
	
<hr/>

<c:forEach var="zzimdto" items="${zzimlists }">
	<c:if test="${zzimdto.categoryName=='TV' }">

	<li>
	
		${zzimdto.categoryName }
	 그 게시물 고유num:	${zzimdto.num }
	
	</li>
	
	</c:if>		
</c:forEach>		

</c:if>

<c:if test="${categoryName=='STORE' }">
<c:forEach var="zzimdto" items="${zzimlists }">
	<c:if test="${zzimdto.categoryName=='STORE' }">
	<li>
	
	 게시물 고유num:${zzimdto.num }
	
	</li>
	</c:if>	
</c:forEach>
</c:if>

<c:if test="${categoryName=='Log' }">
<c:forEach var="zzimdto" items="${zzimlists }">
	<c:if test="${zzimdto.categoryName=='Log' }">
	<li>
	
	 그 게시물 고유num:	${zzimdto.num }
	
	</li>
	</c:if>	
</c:forEach>
</c:if>

<c:if test="${categoryName=='TV' }">
<c:forEach var="zzimdto" items="${zzimlists }">
	<c:if test="${zzimdto.categoryName=='TV' }">
	<li>
	
	 그 게시물 고유num:	${zzimdto.num }
	
	</li>
	</c:if>	
</c:forEach>
</c:if>
 -->
 
<c:forEach var="dto" items="${clist }">
   <c:choose>
      <c:when test="${dto.checkMyZzim eq 'true'}">
         ${dto.num }
         ${dto.title }     
      </c:when>
   </c:choose>
</c:forEach>

<c:forEach var="dto" items="${vlist }">
   <c:choose>
      <c:when test="${dto.checkMyZzimTV eq 'true'}">
         ${dto.num }
         ${dto.title }     
      </c:when>
   </c:choose>
</c:forEach>

 
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>

