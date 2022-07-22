<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>お客様アンケート</title>
<link rel="stylesheet" href="<c:url value='/css/top.css' />">
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <h1>JAVAマッサージ治療院</h1>
        <h2>お客様アンケート</h2>
        <h3>
            本日はJAVAマッサージ治療院にご来院いただきまして<br>誠にありがとうございました。<br>
            当院では顧客満足度向上と質の高いサービスの提供に活かすため<br>「お客様アンケート」を実施しております。<br>
            お答えいただいた内容につきましては、当院のサービス向上,業務改善へ向けた活動の大切な資料としてのみ利用させていただきます。
        </h3>

        <h4>また、アンケートにご回答いただきますと他のお客様のレビューもご覧になれます。</h4>

        <div class="button">
            <strong><a href="${pageContext.request.contextPath}/new">アンケートに答える</a></strong>
        </div>

        <footer>
            <p>JAVAマッサージ治療院</p>
            <p>
                〒123-4567 □□□□□□□□□□□□□□□□□□□□ <br />TEL:123-456-7890 /
                FAX:012-345-6789
            </p>
            <p>copyright© 2022 Masayuki Kiyota</p>
        </footer>
    </div>
</body>
</html>