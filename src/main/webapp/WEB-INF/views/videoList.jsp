<html>
<body>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach items="${videosList}" var="list">
<div class="embed-responsive embed-responsive-16by9 z-depth-3">
      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/fa3Iczgh8Ok"></iframe>
      <iframe class="embed-responsive-item" src="C:/Users/RamaSri/Downloads/SampleVideo1.mp4"></iframe>
    </div>

</c:forEach>


<video controls>  
	  <source src="C:/Users/RamaSri/Downloads/SampleVideo1.mp4" type="video/mp4">  
</video> 
Hello Boss




</html>
</body>