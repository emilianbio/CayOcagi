<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
	<table width="35% 	" border="1" bordercolor="#dddddd">
		<tr>
			<td>Kullanıcı İsmi</td>
			<td>:${cookie.isim.value.replace("+", " ").replace("%C4%B1", "ı").replace("%C3%BC", "ü").replace("%C3%B6","ö").replace("%C3%A7", "ç").replace("%C4%9F", "ğ").replace("%C5%9F", "ş").replace("%C3%87", "Ç").replace("%C3%96", "Ö").replace("%C3%9C", "Ü").replace("%C5%9E", "Ş").replace("%C4%9E", "Ğ").replace("%C4%B0", "İ").replace("%28","(").replace("%29",")")}
			</td>
		</tr>
		<tr>
			<td>Kullanici ID</td>
			<td>:${cookie.kullaniciID.value}</td>
		</tr>
		<tr>
			<td>Kullanici Birimi</td>
			<td>:${cookie.buyuksehir.value.replace("+", " ").replace("%C4%B1", "ı").replace("%C3%BC", "ü").replace("%C3%B6","ö").replace("%C3%A7", "ç").replace("%C4%9F", "ğ").replace("%C5%9F", "ş").replace("%C3%87", "Ç").replace("%C3%96", "Ö").replace("%C3%9C", "Ü").replace("%C5%9E", "Ş").replace("%C4%9E", "Ğ").replace("%C4%B0", "İ").replace("%28","(").replace("%29",")")}
				/${cookie.sube.value.replace("+", " ").replace("%C4%B1", "ı").replace("%C3%BC", "ü").replace("%C3%B6","ö").replace("%C3%A7", "ç").replace("%C4%9F", "ğ").replace("%C5%9F", "ş").replace("%C3%87", "Ç").replace("%C3%96", "Ö").replace("%C3%9C", "Ü").replace("%C5%9E", "Ş").replace("%C4%9E", "Ğ").replace("%C4%B0", "İ").replace("%28","(").replace("%29",")")}
				/${cookie.cayocagi.value.replace("+", " ").replace("%C4%B1", "ı").replace("%C3%BC", "ü").replace("%C3%B6","ö").replace("%C3%A7", "ç").replace("%C4%9F", "ğ").replace("%C5%9F", "ş").replace("%C3%87", "Ç").replace("%C3%96", "Ö").replace("%C3%9C", "Ü").replace("%C5%9E", "Ş").replace("%C4%9E", "Ğ").replace("%C4%B0", "İ").replace("%28","(").replace("%29",")")}
				/${cookie.birim.value.replace("+", " ").replace("%C4%B1", "ı").replace("%C3%BC", "ü").replace("%C3%B6","ö").replace("%C3%A7", "ç").replace("%C4%9F", "ğ").replace("%C5%9F", "ş").replace("%C3%87", "Ç").replace("%C3%96", "Ö").replace("%C3%9C", "Ü").replace("%C5%9E", "Ş").replace("%C4%9E", "Ğ").replace("%C4%B0", "İ").replace("%28","(").replace("%29",")")}
			</tD>
		</tR>
	</table>

<a href="/cayocagi/cikis">ÇIKIŞ</a>



</body>
</html>