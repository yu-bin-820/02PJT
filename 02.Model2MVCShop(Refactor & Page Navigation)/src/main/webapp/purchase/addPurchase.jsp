<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="com.model2.mvc.service.domain.*" %>

<%
	Purchase purchase = (Purchase)request.getAttribute("purchase");
	//UserVO uvo = (UserVO)purchasevo.getBuyer();
	User user = (User)session.getAttribute("user");
	Product product = (Product)purchase.getPurchaseProd();
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>

<body>

<form name="updatePurchase" action="/updatePurchaseView.do?tranNo=0" method="post">

다음과 같이 구매가 되었습니다.

<table border=1>
	<tr>
		<td>물품번호</td>
		<td><%= product.getProdNo() %></td>
		<td></td>
	</tr>
	<tr>
		<td>구매자아이디</td>
		<td><%= user.getUserId() %></td>
		<td></td>
	</tr>
	<tr>
		<td>구매방법</td>
		<td><%= purchase.getPaymentOption() %>

		</td>
		<td></td>
	</tr>
	<tr>
		<td>구매자이름</td>
		<td><%= purchase.getReceiverName() %></td>
		<td></td>
	</tr>
	<tr>
		<td>구매자연락처</td>
		<td><%= purchase.getReceiverPhone() %></td>
		<td></td>
	</tr>
	<tr>
		<td>구매자주소</td>
		<td><%= purchase.getDivyAddr() %></td>
		<td></td>
	</tr>
		<tr>
		<td>구매요청사항</td>
		<td><%= purchase.getDivyRequest() %></td>
		<td></td>
	</tr>
	<tr>
		<td>배송희망일자</td>
		<td><%= purchase.getDivyDate() %></td>
		<td></td>
	</tr>
</table>
</form>

</body>
</html>