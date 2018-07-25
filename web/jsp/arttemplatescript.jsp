<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/25
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/html" id="div">

    <div class="question-title"><h2><a href="${pageContext.request.contextPath}/to_article.do?aid={{aid}}"
                                       target="_blank" data-log="Visit_Question|From_Link">{{title}}</a>
    </h2>
        <div class="question-info"><span class="question-answer-num">0回答</span><span
                class="question-follow-num">0人收藏</span></div>
    </div>
    <div class="question-answers">
    </div>
</script>
</body>
</html>
