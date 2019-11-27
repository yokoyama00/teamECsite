<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/button.css">
<link rel="stylesheet" type="text/css" href="./css/commonMessage.css">
<link rel="stylesheet" type="text/css" href="./css/header_h1.css">
<link rel="stylesheet" type="text/css" href="./css/tableform.css">
<title>ユーザー情報入力画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="contents">
	<div class="main">
		<div class="top">
			<h1>ユーザー情報入力画面</h1>
		</div>
		<div class="text">
			<s:if test="familyNameErrorMessageList!=null && familyNameErrorMessageList.size()>0">
				<div class="error">
				<div class="error-message">
						<s:iterator value="familyNameErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test="firstNameErrorMessageList!=null && firstNameErrorMessageList.size()>0">
				<div class="error">
					<div class="error-message">
						<s:iterator value="firstNameErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test="familyNameKanaErrorMessageList!=null && familyNameKanaErrorMessageList.size()>0">
				<div class="error">
					<div class="error-message">
						<s:iterator value="familyNameKanaErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test=" firstNameKanaErrorMessageList!=null &&  firstNameKanaErrorMessageList.size()>0">
				<div class="error">
					<div class="error-message">
						<s:iterator value="firstNameKanaErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test="emailErrorMessageList!=null && emailErrorMessageList.size()>0">
				<div class="error">
					<div class="error-message">
						<s:iterator value="emailErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test="userIdErrorMessageList!=null && userIdErrorMessageList.size()>0">
				<div class="error">
					<div class="error-message">
						<s:iterator value="userIdErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test="passwordErrorMessageList!=null && passwordErrorMessageList.size()>0">
				<div class="error">
					<div class="error-message">
						<s:iterator value="passwordErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test="isExistsUserErrorMessage!=null && !isExistsUserErrorMessage.isEmpty()">
				<div class="error">
					<div class="error-message">
						<s:iterator value="isExistsUserErrorMessage">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:form action="CreateUserConfirmAction" theme="simple">
				<table class="table">
					<tr>
						<td><label>姓</label></td>
						<td><s:textfield name="familyName"
								value="%{#session.familyName}" placeholder="姓" class="txt" /></td>
					</tr>
					<tr>
						<td><label>名</label></td>
						<td><s:textfield name="firstName"
								value="%{#session.firstName}" placeholder="名" class="txt" /></td>
					</tr>
					<tr>
						<td><label>姓ふりがな</label></td>
						<td><s:textfield name="familyNameKana"
								value="%{#session.familyNameKana}" placeholder="姓ふりがな"
								class="txt" /></td>
					</tr>
					<tr>
						<td><label>名ふりがな</label></td>
						<td><s:textfield name="firstNameKana"
								value="%{#session.firstNameKana}" placeholder="名ふりがな"
								class="txt" /></td>
					</tr>
					<tr>
						<td><label>性別</label></td>
						<td><s:radio name="sex" list="%{#session.sexList}"
								value="%{#session.sex}" placeholder="性別" /></td>
					</tr>
					<tr>
						<td><label>メールアドレス</label></td>
						<td><s:textfield name="email" value="%{#session.email}"
								placeholder="メールアドレス" class="txt" /></td>
					</tr>
					<tr>
						<td><label>ユーザーID</label></td>
						<td><s:textfield name="userId" value="%{#session.userIdForCreateUser}"
						 placeholder="ユーザーID" class="txt" /></td>
					</tr>
					<tr>
						<td><label>パスワード</label></td>
						<td><s:password name="password" value="" placeholder="パスワード"
								class="txt" /></td>
					</tr>
				</table>
				<div class="btn_position">
				 <s:submit value="確認" class="btn"/>
				</div>
			</s:form>
		</div>
	</div>
	</div>
</body>
</html>