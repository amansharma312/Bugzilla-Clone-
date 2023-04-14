<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>Click the button to display an alert box:</p>

<p>Your bugfile is confirmed successfully. Please, re-check the details.</p>  
  
Details:   
<ul>   
<li>${cameo.productField}</li>  
<li>${cameo.componentError}</li>  
<li>${cameo.version}</li>  
<li>${cameo.severity}</li>  
<li>${cameo.hardwareInfected}</li>  
<li>${cameo.operatingSystem}</li>  
<li>${cameo.summary}</li>
<li>${cameo.description}</li>
</ul>  

</body>
</html>