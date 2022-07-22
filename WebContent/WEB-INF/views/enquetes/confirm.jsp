<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>お客様アンケート</title>
<link rel="stylesheet" href="<c:url value='/css/confirm.css' />">
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <form action="${pageContext.request.contextPath}/create" method="POST">
            <h2>入力内容をご確認ください</h2>
            <h2>施術の内容について</h2>
            <hr>
            <h3>
                <c:out value="${enquete.treatment}" />
            </h3>
            <h2>施術の価格について</h2>
            <hr>
            <h3>
                <c:out value="${enquete.price}" />
            </h3>
            <h2>カウンセリングついて</h2>
            <hr>
            <h3>
                <c:out value="${enquete.counseling}" />
            </h3>
            <h2>店内の雰囲気について</h2>
            <hr>
            <h3>
                <c:out value="${enquete.atmosphere}" />
            </h3>
            <h2>施術者の対応について</h2>
            <hr>
            <h3>
                <c:out value="${enquete.support}" />
            </h3>
            <h2>お名前</h2>
            <hr>
            <h3>
                <c:out value="${enquete.name}" />
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

            <h2>この内容で送信してよろしいですか？</h2>

            <input type="hidden" name="_token" value="${_token}" />
            <table>
                <tr>
                    <td><button type="submit" name="send" class="button">送信する</button></td>
                    <td><button type="submit" name="cancel" class="button">取り消す</button></td>
                </tr>
            </table>

            <footer>
                <div class="name">JAVAマッサージ治療院</div>
                <div class="address">
                    〒123-4567 □□□□□□□□□□□□□□□□□□□□ <br />TEL:123-456-7890 /
                    FAX:012-345-6789
                </div>
                <p>copyright© 2022 Masayuki Kiyota</p>
            </footer>
        </form>
    </div>
</body>
</html>