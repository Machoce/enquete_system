<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>お客様アンケート</title>
<link rel="stylesheet" href="<c:url value='/css/index.css' />">
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <h1>お客様アンケート一覧</h1>
        <h2>
            <c:forEach var="enquete" items="${enquetes}">
                <h3>
                    <a href="${pageContext.request.contextPath}/show?id=${enquete.id}">
                        <c:out value="${enquete.id}" />
                    </a> ：
                    <c:out value="${enquete.name} 様"></c:out>
                </h3>
            </c:forEach>
        </h2>

        <strong> （全 ${enquetes_count} 件）<br /> <c:forEach var="i"
                begin="1" end="${((enquetes_count - 1) / 10) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out
                                value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </strong>

        <h3>
            <a href="${pageContext.request.contextPath}/end">アンケート終了画面へ</a>
        </h3>
    </div>
</html>