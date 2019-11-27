<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="./css/button.css">
		<link rel="stylesheet" type="text/css" href="./css/commonMessage.css">
		<link rel="stylesheet" type="text/css" href="./css/header_h1.css">
		<link rel="stylesheet" type="text/css" href="./css/tableform.css">
		<title>ユーザー情報入力確認画面</title>
	</head>
	<body>
		<jsp:include page="header.jsp" />
		<div class="contents">
		<div class="main">
			<div class="top">
				<h1>ユーザー情報入力確認画面</h1>
			</div>
			<div class = "text">
			<s:form action="CreateUserCompleteAction">
				<table>
					<tr>
						<td>
							<label>姓</label>
						</td>
						<td>
							<s:property value="familyName"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>名</label>
						</td>
						<td>
							<s:property value="firstName"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>姓ふりがな</label>
						</td>
						<td>
							<s:property value="familyNameKana"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>名ふりがな</label>
						</td>
						<td>
							<s:property value="firstNameKana" />
						</td>
					</tr>
					<tr>
						<td>
							<label>性別</label>
						</td>
						<td>
							<s:property value="sex"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>メールアドレス</label>
						</td>
						<td>
							<s:property value="email"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>ユーザーID</label>
						</td>
						<td>
							<s:property value="userId"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>パスワード</label>
						</td>
						<td>
							<s:property value="password" />
						</td>
					</tr>
				</table>
					<div class="btn_position">
						<s:submit value="登録" class="btn"/>
					</div>
				</s:form>
				<s:form action = "CreateUserAction">
					<div class="btn_position">
						<s:submit value="戻る" class="btn"/>
					</div>
					<s:hidden class="backFlag" name="backFlag" value="1"/>
				</s:form>
			</div>
		</div>
		</div>
	</body>
</html>
