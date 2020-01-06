<html>
<body>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach items="${videosList}" var="list">
<c:if test="${list.fileFormat eq 'mp4'}">
      <video width="320" height="240" controls>
	 	 <source src="${list.fileURL}" >
	  </video>
    </c:if>
    <br> <br>
    <c:if test="${list.fileFormat eq 'jpg' }">
    <img src="${list.fileURL}"  width="500" height="100">
    </c:if>
</c:forEach>
</html>
</body>