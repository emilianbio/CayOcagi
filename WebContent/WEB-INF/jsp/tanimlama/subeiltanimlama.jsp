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
<title>Sube / İl Tanimlama</title>
</head>
<body>

	<jsp:include page="/WEB-INF/jsp/anasayfa.jsp" />
	<form:form action="subeilEkle" method="post" commandName="sube">
		<form:hidden path="id" />
		<form:input path="subeiladi" />
		<form:select path="isim.id" id="slctalttipid">
			<!-- //buyuksehirden dropdown dolacak -->
			<form:option value="0">Seçiniz</form:option>
			<c:forEach items="${buyukSehirListesi}" var="b">
				<form:option value="${b.id}">
				${b.buyuksehiradi}</form:option>
			</c:forEach>
		</form:select>

		<form:input path="aciklama" />
		<input type="submit" value="Ekle">
		<input type="reset" value="Temizle"
			style="color: red; background-color: lightblue;">
	</form:form>

</body>
</html>