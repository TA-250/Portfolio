<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/loginResult.css">
<title>日報報告アプリ</title>
</head>
<body>
<h1 class="header">ログイン結果</h1>
<% if(loginUser != null) { %>
  <p>ログインに成功しました</p>
  <p><%= loginUser.getName() %>さん、お疲れ様です</p>
  <a href="Main">ホームへ</a>
<% } else { %>
  <p>ユーザーID、パスワードが間違っています。</p>
  <a href="index.jsp">ログイン画面へ</a>
<% } %>
</body>
</html>