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

<title>Egitim Birimi</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/genel.css" />" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="<c:url value="/resources/menu.js" />"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
</head>
<body>
	<div id="tabs-4" class="headerDiv">
		<jsp:include page="/WEB-INF/jsp/admin/adminheader.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/anasayfa.jsp"></jsp:include>
	</div>

	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">GELİR-GİDER GİRİŞ EKRANI</a></li>
			<li><a href="#tabs-2">GİDERLER</a></li>
			<li><a href="#tabs-3">NET KASA</a></li>
			<li><a href="#tabs-4">TÜM HESAP HAREKETLERİ</a></li>
		</ul>
		<div id="tabs-1">
			<form:form action="./egitimHesapEkle" method="post"
				commandName="egitim" >
				<form:hidden path="id" />

				<table class="gelirGider" frame="box">
					<thead>
						<tr>
							<td>GİDERLER</td>
						</tr>
					</thead>
					<tr>
						<td>Kumbara</td>
						<td>:<form:input path="kumbaraGideri" value="0" /></td>
					</tr>
					<tr>
						<td>Bağış</td>
						<td>:<form:input path="bagisGideri" value="0" /></td>
					</tr>
					<tr>
						<td>Zekat</td>
						<td>:<form:input path="zekatGideri" value="0" /></td>
					</tr>
					<tr>
						<td>Kira</td>
						<td>:<form:input path="kiraGideri" value="0" /></td>
					</tr>
					<tr>
						<td>İkbal</td>
						<td>:<form:input path="ikbalGideri" value="0" /></td>
					</tr>
					<tr>
						<td>Kreş Gideri</td>
						<td>:<form:input path="kresGideri" value="0" /></td>
					</tr>
					<tr>
						<td>Faaliyet Gideri</td>
						<td>:<form:input path="faaliyetGideri" value="0" /></td>
					</tr>
					<tr>
					<tr>
						<td>Burs Gideri</td>
						<td>:<form:input path="bursGideri" value="0" /></td>
					</tr>
					<tr>
						<td>Diğer Giderler</td>
						<td>:<form:input path="digerGiderler" value="0" /></td>
					</tr>
					<tr>
						<td>Demirbaş Gideri</td>
						<td>:<form:input path="demirbasGideri" value="0" /></td>
					</tr>

					<tr>
						<td>Sosyal Etkinlik Gideri</td>
						<td>:<form:input path="sosyalEtkinlikGideri" value="0" /></td>
					</tr>
				</table>

				<table class="gelirGider" frame="box">
					<thead>
						<tr>
							<td>GELİRLER</td>
						</tr>
					</thead>
					<tr>
						<td>Kumbara</td>
						<td>:<form:input path="kumbaraGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>Bağış</td>
						<td>:<form:input path="bagisGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>Zekat</td>
						<td>:<form:input path="zekatGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>Kira</td>
						<td>:<form:input path="kiraGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>İkbal Geliri</td>
						<td>:<form:input path="ikbalGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>Kreş Geliri</td>
						<td>:<form:input path="kresGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>Faaliyet Geliri</td>
						<td>:<form:input path="faaliyetGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>Burs Geliri</td>
						<td>:<form:input path="bursGeliri" value="0" /></td>
					</tr>
					<tr>
						<td>Diğer Gelirler</td>
						<td>:<form:input path="digerGelirler" value="0" /></td>
					</tr>
					<tr>
						<td>Dosya Ekle</td>
						<td>:<form:input path="file" type="file" multiple="true" /></td>
					</tr>

				</table>

				<br>
				<table style="position: absolute; left: 510px;">
					<tr>
						<td align="right"><input type="submit" value="Gönder"></td>
					</tr>
				</table>

			</form:form>
		</div>

		<div id="tabs-2"></div>
		<div id="tabs-3">

			<form:form action="./egitimHesapEkle" method="post"
				commandName="egitim">
				<form:hidden path="id" />
				<table>
					<tr>

						<td>Bağış Gelirler${toplamBagis}</td>
						<c:forEach items="${toplamBagis}" var="toplamBagis" varStatus="x">
							<td>${toplamBagis.bagisGeliri}</td>
						</c:forEach>

						<!-- 	<td>İşlem Yapan</td>
							<td>İşlem Zamanı</td> -->
					</tr>
					<%-- <c:forEach items="${egitimBilanco}" var="egitim">
						<tr>
							<td>${egitim.bagisGeliri}</td>
							<td>${egitim.bursGeliri}</td>
							<td>${egitim.faaliyetGeliri}</td>
							<td>${egitim.kiraGeliri}</td>
							<td>${egitim.kumbaraGeliri}</td>
							<td>${egitim.zekatGeliri}</td>
							<c:if test="${egitim.ikbalGeliri != null}">
								<td>${egitim.ikbalGeliri}</td>
							</c:if>
							<td>${egitim.kresGeliri}</td>
							<td>${egitim.digerGelirler}</td>
									<td>${egitim.kullanici.isim}</td>
								<td><fmt:formatDate value="${egitim.islemzamani}"
										timeZone="gmt+2" dateStyle="short" pattern="dd-MM-yyyy" /></td>
							<td>${egitim.bagisGeliri+egitim.bursGeliri+egitim.faaliyetGeliri+egitim.kiraGeliri+egitim.kumbaraGeliri+egitim.zekatGeliri+egitim.ikbalGeliri+egitim.kresGeliri+egitim.digerGelirler}</td>
						</tr>
					</c:forEach> --%>
				</table>
				<input type="submit" value="Gönder">
			</form:form>
		</div>
		<div id="tabs-4">
			<form:form action="./egitimHesapEkle" method="post"
				commandName="egitim">
				<form:hidden path="id" />
				<table border="1" cellpadding="0" cellspacing="0" width="90%">
					<tr class="buyukYazi2">
						<td>SIRA</td>
						<td>İşlem Yapan</td>
						<td>İl</td>
						<td>Şube</td>
						<td>Çay Ocağı</td>
						<td>Hesap Yılı</td>
						<td>Bağış Geliri</td>
						<td>Burs Geliri</td>
						<td>Faaliyet Geliri</td>
						<td>Kira Geliri</td>
						<td>Kumbara Geliri</td>
						<td>Zekat Geliri</td>
						<td>İkbal Geliri</td>
						<td>Kreş Geliri</td>
						<td>Diğer Gelirler</td>
						<!-- <td>Kira Gideri</td>
						<td>Demirbas Gideri</td>
						<td>Bağış Gideri</td>
						<td>Burs Gideri</td>
						<td>Faaliyet Gideri</td>
						<td>Sosyal Etkinlik Gideri</td>
						<td>Kira Gideri</td>
						<td>Kumbara Gideri</td>
						<td>Kumbara %35 Gideri</td>
						<td>Zekat Gideri</td>
						<td>İkbal Gideri</td>
						<td>Kreş Gideri</td>
						<td>Diger Giderler</td> -->
						<td>İşlem Zamanı</td>
						<td><strong>SATIR TOPLAM</strong></td>
					</tr>
					<c:forEach items="${tumHareketler}" var="tumHesap">
						<tr id="satirno${tumHesap.id}" class="buyukYazi2">
							<td>${tumHesap.id}</td>
							<td>${tumHesap.kullanici.isim}</td>
							<td>${tumHesap.buyuksehir.buyuksehiradi}</td>
							<td>${tumHesap.subeil.subeiladi}</td>
							<td>${tumHesap.cayocagi.cayocagiadi}</td>
							<td><fmt:formatDate value="${tumHesap.hesapYili}"
									pattern="yyyy" /></td>
							<td>${tumHesap.bagisGeliri}</td>
							<td>${tumHesap.bursGeliri}</td>
							<td>${tumHesap.faaliyetGeliri}</td>
							<td>${tumHesap.kiraGeliri}</td>
							<td>${tumHesap.kumbaraGeliri}</td>
							<td>${tumHesap.zekatGeliri}</td>
							<td>${tumHesap.ikbalGeliri}</td>
							<td>${tumHesap.kresGeliri}</td>
							<td>${tumHesap.digerGelirler}</td>
							<td><a href="./yazdir">${tumHesap.file}</a></td>

							<!--  -->
							<%-- <td>${tumHesap.kiraGideri}</td>
							<td>${tumHesap.demirbasGideri}</td>
							<td>${tumHesap.bagisGideri}</td>
							<td>${tumHesap.bursGideri}</td>
							<td>${tumHesap.faaliyetGideri}</td>
							<td>${tumHesap.sosyalEtkinlikGideri}</td>
							<td>${tumHesap.kiraGideri}</td>
							<td>${tumHesap.kumbaraGideri}</td>
							<td>${tumHesap.kumbaraYuzde35Gideri}</td>
							<td>${tumHesap.zekatGideri}</td>
							<td>${tumHesap.ikbalGideri}</td>
							<td>${tumHesap.kresGideri}</td>
							<td>${tumHesap.digerGiderler}</td> --%>


							<td><fmt:formatDate value="${tumHesap.islemzamani}"
									dateStyle="short" pattern="dd-MM-yyyy HH:mm:ss" /></td>
							<td>${tumHesap.bagisGeliri+tumHesap.bursGeliri+tumHesap.faaliyetGeliri+tumHesap.kiraGeliri+tumHesap.kumbaraGeliri+tumHesap.zekatGeliri+tumHesap.ikbalGeliri+tumHesap.kresGeliri+tumHesap.digerGelirler}</td>
						</tr>
					</c:forEach>
					<tr class="buyukYazi2">
						<td colspan="6" align="right"><strong>SÜTUN TOPLAM</strong></td>

						<c:forEach items="${toplamBagis}" var="toplamBagis" varStatus="x">
							<td>${toplamBagis}</td>
						</c:forEach>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				<input type="submit" value="Gönder">
			</form:form>
		</div>
	</div>
</body>
</html>