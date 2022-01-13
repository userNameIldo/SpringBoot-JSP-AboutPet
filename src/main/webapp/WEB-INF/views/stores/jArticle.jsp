<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<c:forEach var="dto" items="${lists1}">
	${dto.productNum }
	<a href="${articleUrl1}&num=${dto.productNum}" >${dto.productName }</a>
		${dto.price }
	<br>
	
	</c:forEach>
aaa
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>