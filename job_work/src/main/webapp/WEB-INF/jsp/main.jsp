<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<%
// セッションスコープに保存されたユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
// アプリケーションスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>)request.getAttribute("mutterList");
// リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/main.css">
<title>日報報告アプリ</title>
</head>
<body>
<h1 class="header">ホーム画面</h1>
<p>
<%= loginUser.getName() %>さん、ログイン中
<a href="Logout">ログアウト</a>
</p>
<p><a href="Main">更新</a></p>
<!-- 修正したリンク -->
<p><a href="Main?action=kako">過去の投稿へ</a></p>
<div class="Report">
<p><%= loginUser.getName() %>さん</p>
<form action="Main" method="post">
    <input type="text" name="text">
    <select name="selectbox">
        <option value="教室清掃">教室清掃</option>
        <option value="データ入力">データ入力</option>
        <option value="発送準備、検品">発送準備、検品</option>
        <option value="その他">その他</option>
    </select>
    <input type="submit" value="報告する">
</form>
</div>
<div class="error">
<% if (errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
</div>
<div class="tweet">
<% for (Mutter mutter : mutterList) { %>
<p><%= mutter.getUserName() %>:<%= mutter.getText() %></p>
<% } %>
</div>
</body>
</html>
