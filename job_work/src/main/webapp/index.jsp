<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/index.css">
<title>日報報告アプリ</title>
</head>
<body>
    <div class="container">
        <h1>日報報告アプリ</h1>
        <form action="Login" method="post">
            <label for="name">ユーザーID：</label>
            <input type="text" name="name" id="name" class="user"><br>
            <label for="pass">パスワード：</label>
            <input type="password" name="pass" id="pass" class="user"><br>
            <input type="submit" value="ログイン" class="submit-btn">
        </form>
    </div>
</body>
</html>