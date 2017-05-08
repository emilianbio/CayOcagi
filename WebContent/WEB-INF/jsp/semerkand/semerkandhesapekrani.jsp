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
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/genel.css" />" />

<title>Egitim Birimi</title>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/anasayfa.jsp" />

	<div>
		<form:form action="./egitimHesapEkle" method="post"
			commandName="egitim">
			<form:hidden path="id" />
			<table>
				<tr>
					<td>YIL :</td>
					<td><form:input path="hesapYili" /></td>

					<td>Büyükşehir :</td>
					<td><form:input path="buyuksehirID" /></td>

					<td>Şube :</td>
					<td><form:input path="subeilID" /></td>

					<td>Çayocağı :</td>
					<td><form:input path="cayocagiID" /></td>
				</tr>
				<tr>
					<td>Kumbara :</td>
					<td><form:input path="kumbaraGeliri" /></td>
				</tr>
				<tr>
					<td>Bağış &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
					<td><form:input path="bagisGeliri" /></td>
				</tr>
				<tr>
					<td>Zekat :</td>
					<td><form:input path="zekatGeliri" /></td>
				</tr>
				<tr>
					<td>Kira :</td>
					<td><form:input path="kiraGeliri" /></td>
				</tr>
				<tr>
					<td>Diğer Gelirler :</td>
					<td><form:input path="digerGelirler" /></td>
				</tr>

			</table>

			<input type="submit" value="Gönder">

		</form:form>
	</div>
</body>
</html>