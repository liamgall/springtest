<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<div align="center">
		<table border="0" width="80%">
			<form:form action="/join" commandName="userForm">
				<tr>
					<td align="left" width="20%">Email:</td>
					<td align="left" width="40%"><form:input path="email"
							size="30" readonly="true"/></td>
					<td align="left"><form:errors path="email" cssClass="error" /></td>
				</tr>
				<tr>
					<td>우편 번호 :</td>
					<td><form:input type="text" path="postcode5" name=""
							class="postcodify_postcode5" value="" style="width:50px" readonly="true"/>
						<button id="postcodify_search_button" type="button">검색</button></td>
					<td><form:errors path="postcode5" cssClass="error" /></td>
				</tr>
				<tr>
					<td>도로명주소 :</td>
					<td><form:input type="text" path="address" name=""
							class="postcodify_address" value="" style="width:300px" readonly="true" /></td>
					<td><form:errors path="address" cssClass="error" /></td>
				</tr>
				<tr>
					<td>상세주소 :</td>
					<td><form:input type="text" path="details" name=""
							class="postcodify_details" value="" style="width:300px" /></td>
					<td><form:errors path="details" cssClass="error" /></td>
				</tr>
				<tr>
					<td>참고항목 :</td>
					<td><form:input type="text" path="extra_info" name=""
							class="postcodify_extra_info" value="" style="width:300px" readonly="true" /></td>
					<td><form:errors path="extra_info" cssClass="error" /></td>
				</tr>
				<tr>
					<td>전화번호 :</td>
					<td><form:input path="phoneNumber" size="30" /></td>
					<td><form:errors path="phoneNumber" cssClass="error" /></td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td><form:password path="password" size="30" /></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				<tr>
					<td>비밀번호 확인 :</td>
					<td><input type="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td align="center"><input type="submit" value="제출" /></td>
					<td></td>
				</tr>
			</form:form>
		</table>
	</div>
</body>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script>
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
	});

	/* [!@#$%^*+=-] 이부분 [^a-zA-Z0-9] 로 대체가능 */
	$('#password1').keyup(function() {

	});
</script>
</html>