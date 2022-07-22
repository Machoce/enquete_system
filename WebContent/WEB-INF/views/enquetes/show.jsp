<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>お客様アンケート</title>
<link rel="stylesheet" href="<c:url value='/css/show.css' />">
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <h1>${enquete.name}様のアンケート詳細</h1>

        <h2>回答日時</h2>
        <hr>
        <h3>
            <fmt:formatDate value="${enquete.created_at}"
                pattern="yyyy-MM-dd HH:mm:ss" />
        </h3>

        <h2>施術の内容</h2>
        <hr>
        <h3>
            <c:out value="${enquete.treatment}" />
        </h3>

        <h2>施術の価格</h2>
        <hr>
        <h3>
            <c:out value="${enquete.price}" />
        </h3>

        <h2>カウンセリング</h2>
        <hr>
        <h3>
            <c:out value="${enquete.counseling}" />
        </h3>

        <h2>店内の雰囲気</h2>
        <hr>
        <h3>
            <c:out value="${enquete.atmosphere}" />
        </h3>

        <h2>施術者の対応</h2>
        <hr>
        <h3>
            <c:out value="${enquete.support}" />
        </h3>

        <h2>性別</h2>
        <hr>
        <h3>
            <c:out value="${enquete.sex}" />
        </h3>

        <h2>年齢</h2>
        <hr>
        <h3>
            <c:out value="${enquete.age}" />
        </h3>

        <h2>ご意見・ご要望</h2>
        <hr>
        <h3>
            <c:out value="${enquete.content}" />
        </h3>

        <h3>
            <a href="${pageContext.request.contextPath}/index">アンケート一覧に戻る</a>
        </h3>
    </div>
</body>
</html>