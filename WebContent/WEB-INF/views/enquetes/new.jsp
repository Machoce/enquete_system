<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>お客様アンケート</title>
<link rel="stylesheet" href="<c:url value='/css/style.css' />">
<link rel="stylesheet" href="<c:url value='/css/new.css' />">
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <form action="${pageContext.request.contextPath}/confirm"
            method="POST">
            <h1>JAVAマッサージ お客様アンケート</h1>

            <p>
                <span>STEP1</span><span>情報の入力</span>
            </p>
            <p>
                <span>STEP2</span><span>入力内容の確認</span>
            </p>
            <p>
                <span>STEP3</span><span>受付完了</span>
            </p>


            <c:if test="${errors != null}">
                <div id="flush_error">
                    入力内容にエラーがあります。<br />
                    <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" />
                        <br />
                    </c:forEach>

                </div>
            </c:if>

            <h2>
                <span>アンケートにお答えください。</span>
            </h2>
            <h3>
                <span>施術の内容について</span>
            </h3>
            <hr>
            <label> <input type="radio" value=満足 name="treatment"
                class="input-radiobtn">満足
            </label> <label> <input type="radio" value=やや満足 name="treatment"
                class="input-radiobtn">やや満足
            </label> <label> <input type="radio" value=普通 name="treatment"
                class="input-radiobtn">普通
            </label> <label> <input type="radio" value=やや不満 name="treatment"
                class="input-radiobtn">やや不満
            </label> <label> <input type="radio" value=不満 name="treatment"
                class="input-radiobtn">不満
            </label><br>


            <h3>
                <span>施術の価格について</span>
            </h3>
            <hr>
            <label> <input type="radio" value=満足 name="price"
                class="input-radiobtn">満足
            </label> <label> <input type="radio" value=やや満足 name="price"
                class="input-radiobtn">やや満足
            </label> <label> <input type="radio" value="普通" name="price"
                class="input-radiobtn">普通
            </label> <label> <input type="radio" value="やや不満" name="price"
                class="input-radiobtn">やや不満
            </label> <label> <input type="radio" value="不満" name="price"
                class="input-radiobtn">不満
            </label>


            <h3>
                <span>カウンセリングについて</span>
            </h3>
            <hr>
            <label> <input type="radio" value="満足" name="counseling"
                class="input-radiobtn">満足
            </label> <label> <input type="radio" value="やや満足" name="counseling"
                class="input-radiobtn">やや満足
            </label> <label> <input type="radio" value="普通" name="counseling"
                class="input-radiobtn">普通
            </label> <label> <input type="radio" value="やや不満" name="counseling"
                class="input-radiobtn">やや不満
            </label> <label> <input type="radio" value="不満" name="counseling"
                class="input-radiobtn">不満
            </label>


            <h3>
                <span>店内の雰囲気について</span>
            </h3>
            <hr>
            <label> <input type="radio" value="満足" name="atmosphere"
                class="input-radiobtn">満足
            </label> <label> <input type="radio" value="やや満足" name="atmosphere"
                class="input-radiobtn">やや満足
            </label> <label> <input type="radio" value="普通" name="atmosphere"
                class="input-radiobtn">普通
            </label> <label> <input type="radio" value="やや不満" name="atmosphere"
                class="input-radiobtn">やや不満
            </label> <label> <input type="radio" value="不満" name="atmosphere"
                class="input-radiobtn">不満
            </label>


            <h3>
                <span>施術者の対応について</span>
            </h3>
            <hr>
            <label> <input type="radio" value="満足" name="support"
                class="input-radiobtn">満足
            </label> <label> <input type="radio" value="やや満足" name="support"
                class="input-radiobtn">やや満足
            </label> <label> <input type="radio" value="普通" name="support"
                class="input-radiobtn">普通
            </label> <label> <input type="radio" value="やや不満" name="support"
                class="input-radiobtn">やや不満
            </label> <label> <input type="radio" value="不満" name="support"
                class="input-radiobtn">不満
            </label>


            <h2>
                <span>お客様についてお聞かせください。</span>
            </h2>

            <h3>
                <span>ニックネーム(本名でなく構いません)</span>
            </h3>
            <hr>
            <p>
                <input class="input-name" type="text" autocapitalize="off"
                    name="name" value="">
            </p>

            <h3>
                <span>性別</span>
            </h3>
            <hr>
            <label> <input type="radio" value="男性" name="sex"
                class="input-radiobtn">男性
            </label> <label> <input type="radio" value="女性" name="sex"
                class="input-radiobtn">女性
            </label>


            <h3>
                <span>年齢</span>
            </h3>
            <hr>
            <select name="age">
                <option value="">選択してください</option>
                <option value="10歳未満">10歳未満</option>
                <option value="10-19歳">10-19歳</option>
                <option value="20-29歳">20-29歳</option>
                <option value="30-39歳">30-39歳</option>
                <option value="40-49歳">40-49歳</option>
                <option value="50-59歳">50-59歳</option>
                <option value="60-69歳">60-69歳</option>
                <option value="70-89歳">70-89歳</option>
                <option value="80-99歳">80-99歳</option>
                <option value="100歳以上">100歳以上</option>
            </select>


            <h2>
                <span>その他、ご意見・ご要望などございましたらご記入ください。</span>
            </h2>

            <h3>
                <span>ご意見・ご要望</span>
            </h3>
            <hr>
            <p>
                <textarea class="input-txt" cols="50" rows="15" name="content"
                    autocapitalize="off" placeholder=""></textarea>
            </p>
            <div style="text-align: center;">
                [入力内容の確認へ] ボタンをクリックして入力内容のご確認をお願いします。 <br />ご入力、誠にありがとうございました。
            </div>
            <input type="hidden" name="_token" value="${_token}" />
            <button type="submit" class="button">入力内容の確認へ</button>
        </form>

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