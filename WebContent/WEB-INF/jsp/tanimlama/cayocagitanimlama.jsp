<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Cay Ocagi Tanimlama</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/anasayfa.jsp" />
	<form:form action="cayOcagiEkle" method="post" commandName="cayocagi">
		<form:hidden path="id" />
		<form:input path="cayocagiadi" />
		<!-- //buyuksehirden dropdown dolacak -->
		<form:input path="isim.subeiladi" />
		<!-- //subeilden dropdown dolacak -->
		<form:input path="aciklama" />
		<input type="submit" value="Ekle">

	</form:form>
	
	

</body>
</html>