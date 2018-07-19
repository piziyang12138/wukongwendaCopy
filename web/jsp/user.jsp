<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/19
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0028)https://www.wukong.com/user/ -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="baidu-site-verification" content="KbXG9YmVWW">
    <meta name="360-site-verification" content="d2d5af5afd7ab435d58bcb3decb28822">
    <meta name="google-site-verification" content="aGcHAsDaqk3chrC0a1ySOxLSc5oiqaV649yu7Xl7qjI">
    <meta name="sogou_site_verification" content="qpGA3ltIUV">
    <meta name="shenma-site-verification" content="34c05607e2a9430ad4249ed48faaf7cb_1432711730">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <title>${user.username} - 悟空问答</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common_1b698e6.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_4c95c68.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user_static_1a9c239.css">
    <style>#BAIDU_DSPUI_FLOWBAR, .adsbygoogle, .ad, div[class^="ad-widsget"], div[id^="div-gpt-ad-"], a[href*="cpro.baidu.com"], a[href*="@"][href*=".exe"], a[href*="/?/"][href*=".exe"], .adpushwin {
        display: none !important;
        max-width: 0 !important;
        max-height: 0 !important;
        overflow: hidden !important;
    }</style>
</head>
<body class="page-user-static" data-log-from="User">
<div id="wrapper" class="">
    <div id="paglet-index-header" data-log-from="!Nav" class="index-header">
        <div class="index-header-wrapper">
            <header id="pagelet-midbar" class="header-undefined">
                <div data-node="midbarInner" class="midbar-inner">
                    <div class="inner clearfix">
                        <div class="suspension-part">
                            <div class="logo-box"><a href="${pageContext.request.contextPath}/home.do" data-log="Visit_Index|From_logo"
                                                     title="悟空问答" class="logo-link"><img
                                    src="${pageContext.request.contextPath}/img/logo_5df43ca.png" alt="悟空问答" class="logo"></a></div>
                            <div class="search-box">
                                <div data-node="searchBox" data-log-from="SearchBox" class="widget-search-input">
                                    <form action="https://www.wukong.com/search/" method="get" data-node="searchForm"
                                          target="_blank">
                                        <div class="input-group clearfix"><input autocomplete="off"
                                                                                 ga_event="nav_search_input"
                                                                                 data-node="searchInput" name="keyword"
                                                                                 type="text" placeholder="搜索你感兴趣的问题">
                                            <div class="btn-submit">
                                                <button ga_event="nav_search" type="submit" href="javascript:;"><i
                                                        class="iconfont icon-ask_search"></i></button>
                                            </div>
                                        </div>
                                    </form> <!----></div>
                            </div>
                        </div>
                        <a href="javascript:;" data-node="ask" data-log="PopUp_CreateQuestion|From_" class="ask">提问</a>
                        <div class="nav logined"><a href="${pageContext.request.contextPath}/home.do" data-log="Visit_Index|From_Link"
                                                    title="首页" class="">首页</a> <a href="https://www.wukong.com/myquest/"
                                                                                  data-log="Visit_QuestionInvited|From_"
                                                                                  title="等我来答" class="">等我来答</a>
                            <div class="new-msg-btn"><span class="w-new-msg-btn"><span>消息</span><!----><!----> <div
                                    class="w-new-layer layer-wrapper"><i class="triangle"></i> <a class="notice"><span>通知</span>
                                <!----></a> <a class="invite"><span>邀请</span> <!----></a> <a
                                    class="digg"><span>点赞</span> <!----></a> <a class="comment"><span>评论</span> <!----></a> <a
                                    class="follow"><span>关注</span> <!----></a></div> <!----></span></div>
                            <div class="nav-account">
                                <div data-node="user-account" class="nav-account-wrapper dropdown"><a
                                        href="https://www.wukong.com/user/" target="_blank"
                                        data-log="Visit_Profile|From_" class="nav-account-user line"><img
                                        src="${pageContext.request.contextPath}/upload/${user.picpath}" alt="" class="nav-account-user-avatar"></a>
                                    <div class="dropdown-menu"><i class="triangle"></i>
                                        <div><a href="https://www.wukong.com/user/" target="_blank"
                                                class="layer-item"><i class="iconfont icon-ask_write"></i>我的问答</a></div>
                                        <div><a class="layer-item"><i
                                                class="iconfont icon-ask_profile_exit"></i>退  出</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>
    </div>
    <div class="answer-wrapper"></div>
    <main class="main-container page-user">
        <div id="pagelet-sidebar" class="right-part">
            <div id="placeholver_sidebar"></div>
            <div data-node="hot-wenda" class="hot-wenda"></div>
            <div data-node="hot-board" data-log-from="!Campaign" class="hot-board"></div>
            <div data-node="hot-rank" class="hot-rank"></div>
            <div data-log-from="Invited" class="invite-quest"></div>
        </div>
        <div id="main-header" class="header"></div>
        <div id="main-index-question-list" class="index-question-list "></div>
        <div class="sub-contianer">
            <div class="widget-user-feed">
                <div class="left-part">
                    <div id="large-user-card" class="large-user-card">
                        <div id="widget-usercard-left" data-log-from="ProfileCard" class="w-usercard-left">
                            <div itemscope="itemscope" itemtype="http://schema.org/Person" class="userinfo clearfix"><a
                                    target="_blank" href="https://www.wukong.com/user/?uid=101244253391">
                                <meta itemprop="name" content="手机用户101244253391">
                                <div class="avatar"><img src="${pageContext.request.contextPath}/upload/${user.picpath}" alt="" itemprop="image">
                                </div>
                                <div class="user-desc"><h1 class="user-name"><span>手机用户10124425339</span> <span
                                        class="last-name-letter">1<!----></span></h1>
                                    <div itemprop="description" class="user-intro">

                                    </div>
                                    <div class="user-title">
                                        我很懒什么都不留下
                                    </div>
                                    <div><a href="javascript:;"><!----></a> <!---->
                                        <div class="edit-section"><a
                                                href="${pageContext.request.contextPath}/jsp/editor_user.jsp"
                                                class="edit-person-info"><span class="edit-text"><i
                                                class="iconfont icon-pen edit-icon"></i>
                            编辑个人信息
                        </span></a></div>
                                    </div>
                                </div>
                            </a></div>
                            <div class="user-data clearfix"><a
                                    href="https://www.wukong.com/attention/?uid=101244253391&amp;type=1"
                                    data-log="Visit_FollowerTab|From_" target="_blank" class="user-data-left"><h3>
                                0
                            </h3> <span>关注</span></a> <a
                                    href="https://www.wukong.com/attention/?uid=101244253391&amp;type=2"
                                    data-log="Visit_FansTab|From_" target="_blank" class="user-data-right"><h3>
                                0
                            </h3> <span>粉丝</span> <!----></a>
                                <div class="vertiacl-line"></div>
                            </div>
                            <div class="achievement-container" uid="101244253391"><!---->
                                <div class="achievement-reading-data">
                                    <div class="first-line"><i class="iconfont icon-reading"></i> <span>回答获 0人阅读</span>
                                    </div>
                                    <div class="other-line"><span>本月获 0人阅读</span></div>
                                </div>
                                <div class="achievement-digg-data">
                                    <div class="first-line"><i class="iconfont icon-praise"></i> <span>回答获 0人点赞</span>
                                    </div>
                                    <div class="other-line"><span>本月共 0人点赞</span></div>
                                </div> <!----> <!----></div>
                        </div>
                        <div id="static-share-group-self" class="static-share-group-self"><i
                                class="iconfont icon-share"></i> <span>分享</span>
                            <div data-node="widget-share-group" class="widget-share-group">
                                <div class="share-group-content clearfix">
                                    <div class="qr"></div>
                                    <div data-node="weixin" data-url="" data-desc="" data-log="Share_Weixin|From_"
                                         class="share-link weixin"><i class="iconfont icon-wechat_share"></i></div>
                                    <div data-node="weibo" data-url="" data-desc="" data-log="Share_Weibo|From_"
                                         class="share-link weibo"><i class="iconfont icon-weibo_share"></i></div>
                                    <div data-node="qzone" data-url="" data-desc="" data-log="Share_Qzone|From_"
                                         class="share-link qq"><i class="iconfont icon-qzone_share"></i></div>
                                </div>
                                <div class="share-group-arrow"><i></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-list">
                    <div class="nav-wrapper-placeholder">
                        <div class="nav-wrapper">
                            <div class="nav"><a data-node="data-type" data-type="2"
                                                href="https://www.wukong.com/user/?uid=101244253391&amp;type=2"
                                                data-log="Visit_ActivTab|From_" class="current">动态</a> <a
                                    data-node="data-type" data-type="0"
                                    href="https://www.wukong.com/user/?uid=101244253391&amp;type=0"
                                    data-log="Visit_AnswerTab|From_" class="">回答 <span class="ans_count">0</span></a>
                                <!----> <a data-node="data-type" data-type="1" href="javascript:;"
                                           data-log="Visit_FollowTab|From_" class="">收藏 <span
                                        class="follow_count">0</span></a> <a data-node="data-type" data-type="3"
                                                                             href="javascript:;"
                                                                             data-log="Visit_ManuscriptTab|From_"
                                                                             class="manuscript">草稿 <span
                                        class="manuscript_count">0</span></a></div>
                        </div>
                    </div> <!---->
                    <div id="user-question-list" class="index-question-list">
                        <div data-log-from="Active" class="w-feed w-feed-profile-active">
                            <div class="w-feed-container"></div>
                            <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">没有更多动态</span></div>
                        </div>
                        <div data-log-from="Answer" class="w-feed w-feed-profile-answer" style="display: none;">
                            <div class="w-feed-container"></div>
                            <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">没有更多回答</span></div>
                        </div>
                        <div data-log-from="Question" class="w-feed w-feed-profile-question" style="display: none;">
                            <div class="w-feed-container"></div>
                            <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">滚动加载更多</span></div>
                        </div>
                        <div data-log-from="Follow" class="w-feed w-feed-profile-follow" style="display: none;">
                            <div class="w-feed-container"></div>
                            <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">没有更多动态</span></div>
                        </div>
                        <div class="w-feed w-manuscript-wrapper" uid="101244253391" style="display: none;">
                            <div class="no-manuscript">暂时没有存储的草稿</div>
                            <div class="w-feed-loadmore" style="display: none;"><span
                                    class="w-feed-loadmore-w">没有更多草稿</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="detail"></div>
    </main>
    <div data-log-from="FloatingBtn" class="assist"><!----> <a href="javascript:;" data-node="static-feedback"
                                                               data-log="PopUp_CreateFeedback|From_" class="j-feedback"><span>反馈</span></a>
        <a href="javascript:;" class="j-go-top"><i class="iconfont icon-icon_top"></i></a></div>
</div>
<footer class="copyright">
    <p>©2017 www.wukong.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
    <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
</body>
</html>
