<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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


					<c:forEach var="dto" items="${lists }">
						<c:set var="saveName" value="${fn:split(dto.saveName , ',')}">
						</c:set>
							<c:forEach var="Name" items="${saveName}" varStatus="status" end="0">
							<li name="myPetLogli" style="height: 259px;">
								${status.count }
								<a href="myList.action?num=${dto.num }" class="logPicBox">
								<img src="upload/${Name }" alt="" style="height: 259px;"></a>
							</li>
							</c:forEach>					
					</c:forEach>	


</body>
</html>