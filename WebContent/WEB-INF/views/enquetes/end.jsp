<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>お客様アンケート</title>
<link rel="stylesheet" href="<c:url value='/css/end.css' />">
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <h1>ご回答いただきありがとうございました。</h1>

        <div class="button">
            <strong><a href="${pageContext.request.contextPath}/index">アンケートレビューをみる</a></strong>
        </div>

        <footer>
            <div class="name">JAVAマッサージ治療院</div>
            <div class="address">
                〒123-4567 □□□□□□□□□□□□□□□□□□□□ <br />TEL:123-456-7890 /
                FAX:012-345-6789
            </div>
            <p>copyright© 2022 Masayuki Kiyota</p>
        </footer>
    </div>
</body>
</html>