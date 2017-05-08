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

<title>Kermes Birimi</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/genel.css" />" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="<c:url value="/resources/menu.js" />"></script>
<script>
	
</script>
</head>
<body>
	<div id="tabs-4" class="headerDiv">
		<jsp:include page="/WEB-INF/jsp/admin/adminheader.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/anasayfa.jsp"></jsp:include>
	</div>
	<div id="tabs" style="">
		<ul>
			<li><a href="#tabs-1">GELİRLER</a></li>
			<li><a href="#tabs-2">GİDERLER</a></li>
			<li><a href="#tabs-3">NET KASA</a></li>
		</ul>
		<div id="tabs-1">
			<form:form action="./egitimHesapEkle" method="post"
				commandName="kermes">
				<form:hidden path="id" />
				<table>
					<thead>
						<tr>
							<td>GELİRLER</td>
						</tr>
					</thead>
					<tr>
						<td>İç Kermes Geliri</td>
						<td>:<form:input path="icKermesGeliri" /></td>
					</tr>
					<tr>
						<td>Diğer Gelirler</td>
						<td>:<form:input path="digerGelirler" /></td>
					</tr>
				</table>
				<input type="submit" value="Gönder">
			</form:form>
		</div>
		<div id="tabs-2">
			<form:form action="./egitimHesapEkle" method="post"
				commandName="kermes">
				<form:hidden path="id" />
				<table>
					<thead>
						<tr>
							<td>GİDERLER</td>
						</tr>
					</thead>
					<tr>
						<td>İç Kermes Gideri</td>
						<td>:<form:input path="icKermesGideri" /></td>
					</tr>
					<tr>
						<td>Diğer Gelirler</td>
						<td>:<form:input path="digerGiderler" /></td>
					</tr>
				</table>
				<input type="submit" value="Gönder">
			</form:form>
		</div>
		<div id="tabs-3">
			<form:form action="./egitimHesapEkle" method="post"
				commandName="kermes">
				<form:hidden path="id" />
				<table>
					<thead>
						<tr>
							<td>NET KASA</td>
						</tr>
					</thead>
					<tr>
						<td>KASA</td>
						<td>:<form:input path="netKasa" /></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>