<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Buyuksehir Tanimlama</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/anasayfa.jsp" />


	<c:if test="${info == '1'}">
		<script type="text/javascript">
			alert("Kayıt Eklendi...");
		</script>
	</c:if>
	<form:form action="buyuksehirEkle" method="post"
		commandName="buyuksehir">
		<form:hidden path="id" />
		<form:input path="buyuksehiradi" />
		<form:textarea path="aciklama" />
		<br>
		<input type="submit" value="Ekle">
	</form:form>
	<table>
		<tr>
			<td>Plaka No</td>
			<td>Şehir</td>
		</tr>
		<c:forEach items="${buyuksehirListesi}" var="b">
			<tr>
				<td>${b.id}</td>
				<td>${b.buyuksehiradi}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>