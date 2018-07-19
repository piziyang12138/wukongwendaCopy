<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/18
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta name="sogou_site_verification" content="BxZ5It8zZM">
    <meta name="shenma-site-verification" content="4fbe336d62bfe25d0eea203e2e4fe1c4_1503629253">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <meta name="description" content="悟空问答，一款靠谱的问答社区，专注分享知识、经验、观念。在这里，所有人都能找到答案、参与讨论。">
    <meta name="keywords" content="悟空问答,头条问答,问答">
    <title>悟空问答</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_4c95c68.css">
    <style>#BAIDU_DSPUI_FLOWBAR, .adsbygoogle, .ad, div[class^="ad-widsget"], div[id^="div-gpt-ad-"], a[href*="cpro.baidu.com"], a[href*="@"][href*=".exe"], a[href*="/?/"][href*=".exe"], .adpushwin {
        display: none !important;
        max-width: 0 !important;
        max-height: 0 !important;
        overflow: hidden !important;
    }</style>
</head>
<body data-log-from="Index">
<div id="wrapper" data-log-from="">
    <div id="paglet-index-header" data-log-from="!Nav" class="index-header">
        <div class="index-header-wrapper">
            <header id="pagelet-midbar" class="notlogin header-index">
                <div data-node="midbarInner" class="midbar-inner">
                    <div class="inner clearfix">
                        <div class="suspension-part">
                            <div class="logo-box"><a href="https://www.wukong.com/" data-log="Visit_Index|From_logo"
                                                     title="悟空问答" class="logo-link"><img
                                    src="${pageContext.request.contextPath}/img/logo_5df43ca.png" alt="悟空问答"
                                    class="logo"></a></div>
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
                        <div class="nav"><a href="https://www.wukong.com/" data-log="Visit_Index|From_Link" title="首页"
                                            class="selected">首页</a> <a href="https://www.wukong.com/myquest/"
                                                                       data-log="Visit_QuestionInvited|From_"
                                                                       title="等我来答" class="">等我来答</a> <a
                                href="https://www.wukong.com/notebook/" target="_blank" data-log="Visit_NoteBook|From_">回答秘籍</a>
                            <div class="new-msg-btn">
                                <c:choose>
                                    <c:when test="${!empty user}">
                                        <span class="w-new-msg-btn">
                                    <span>消息</span>
                                    <div class="w-new-layer layer-wrapper">
                                        <i class="triangle"></i>
                                        <a class="notice"><span>通知</span></a>
                                        <a class="invite"><span>邀请</span> <!----></a>
                                        <a class="digg"><span>点赞</span> <!----></a>
                                        <a class="comment"><span>评论</span> <!----></a>
                                        <a class="follow"><span>关注</span> <!----></a>
                                    </div>
                                </span>
                                    </c:when>
                                </c:choose>
                            </div>
                            <div class="nav-account">
                                <div data-node="user-account" class="nav-account-wrapper">
                                    <c:choose>
                                        <c:when test="${!empty user}">
                                            <a href="${pageContext.request.contextPath}/jsp/user.jsp" target="_blank"
                                               data-log="Visit_Profile|From_" class="nav-account-user line"><img
                                                    src="${pageContext.request.contextPath}/upload/${user.picpath}" alt=""
                                                    class="nav-account-user-avatar"></a>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="loginBox"><a data-node="login" href="${pageContext.request.contextPath}/jsp/register_login.jsp?model=登录"
                                                                     class="nav-account-user line login"><span>登录</span></a> <i
                                                    class="iconfont icon-Details_page_line"></i> <a data-node="register"
                                                                                                    href="${pageContext.request.contextPath}/jsp/register_login.jsp?model=注册"
                                                                                                    class="nav-account-user line register"><span>注册</span></a>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
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
    <main class="main-container page-index tag-0">
        <div id="pagelet-sidebar" class="right-part">
            <div id="placeholver_sidebar">
                <div>
                    <div id="user-card" class="user-card"><!----></div>
                    <div data-node="hot-board" data-log-from="!Campaign" class="hot-board">
                        <div class="unslider">
                            <div class="banner unslider-horizontal" style="overflow: hidden;">
                                <ul class="unslider-wrap unslider-carousel"
                                    style="width: 500%; margin-left: -100%; left: -200%;">
                                    <li class="unslider-clone" data-index="4" style="width: 20%;">
                                        <div class="anno-content">
                                            有奖问答｜零基础玩转财务自由
                                        </div>
                                        <a href="https://www.wukong.com/wendawap/topic/6566146388508279048"
                                           target="_blank" title="有奖问答｜零基础玩转财务自由" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/8e1f0009c8f8dc6bade0"
                                                                    alt=""></a></li>
                                    <li data-index="0" class="" style="width: 20%;">
                                        <div class="anno-content">
                                            今日头条x勺子课堂：解码大食代
                                        </div>
                                        <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                                           target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/9b23000b3afd0b741a27"
                                                                    alt=""></a></li>
                                    <li data-index="1" class="" style="width: 20%;">
                                        <div class="anno-content">
                                            我在 2018 世界杯现场
                                        </div>
                                        <a href="https://www.wukong.com/question/6566860373691990275/" target="_blank"
                                           title="我在 2018 世界杯现场" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/98a3000f4c6f021778dc"
                                                                    alt=""></a></li>
                                    <li data-index="2" class="unslider-active" style="width: 20%;">
                                        <div class="anno-content">
                                            有奖问答｜零基础玩转财务自由
                                        </div>
                                        <a href="https://www.wukong.com/wendawap/topic/6566146388508279048"
                                           target="_blank" title="有奖问答｜零基础玩转财务自由" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/8e1f0009c8f8dc6bade0"
                                                                    alt=""></a></li>
                                    <li class="unslider-clone" data-index="3" style="width: 20%;">
                                        <div class="anno-content">
                                            今日头条x勺子课堂：解码大食代
                                        </div>
                                        <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                                           target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/9b23000b3afd0b741a27"
                                                                    alt=""></a></li>
                                </ul>
                            </div>
                            <nav class="unslider-nav">
                                <ol>
                                    <li data-slide="0" class="">1</li>
                                    <li data-slide="1" class="">2</li>
                                    <li data-slide="2" class="unslider-active">3</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div data-node="hot-wenda" class="hot-wenda">
                        <div data-log-from="Recommended" class="hot-qa"><h4><span>精选回答</span> <a
                                href="https://www.wukong.com/" data-node="recommand-feed" target="_blank">更多
                            <i class="iconfont icon-ask_arrow_right"></i></a></h4>
                            <div class="hot-qa-list">
                                <div class="hot-item hottest"><a
                                        href="https://www.wukong.com/answer/6579151136056410372/" target="_blank"
                                        data-log="Visit_Question|From_"><h2 class="title">
                                    法国队夺冠华帝出现退款难的局面，这次“退全款”活动是否涉嫌消费欺诈？</h2></a>
                                    <div class="answer-user">
                                        <div class="user-info">
                                            <div data-node="like" data-log="Like|From_" class="answer-like"><span
                                                    data-node="like-count">66赞</span> <i class="answer-like-icon"></i>
                                            </div>
                                            <span class="arrow"></span>
                                            <div class="user-link"><a
                                                    href="https://www.wukong.com/user/?uid=63384641374" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                                                    src="./悟空问答首页_files/383100005956164a3de4" alt=""></a> <a
                                                    href="https://www.wukong.com/user/?uid=63384641374" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-name"><span
                                                    class="uname" style="color: rgb(51, 51, 51);"> 麋鹿说法
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                                                    title="公司法律师" style="color: rgb(119, 119, 119);">公司法律师</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="https://www.wukong.com/answer/6579151136056410372/" target="_blank"
                                       data-log="Visit_Question|From_">
                                        <div class="preview">
                                            <div class="preview-image"><img src="./悟空问答首页_files/9b8d000125a710884cbf"
                                                                            alt=""></div>
                                            <p class="content">
                                                就本案当中是否涉嫌欺诈说点个人看法：欺诈是什么？欺诈这个词每个人都知道，但是根据《民法总则》第一百四十八条规定，一方以欺诈手段，使对方在违背真实意思的情况下实施的民事法律行为，受欺诈方有权请求人民法院或者仲裁机构予以撤销。同时《最高人民法院关于贯彻执行＜中华人民共和国民法通则）若</p>
                                        </div>
                                    </a></div>
                                <div class="hot-item hottest"><a
                                        href="https://www.wukong.com/answer/6579056032587186439/" target="_blank"
                                        data-log="Visit_Question|From_"><h2 class="title">
                                    永利宝官方App弹窗提醒投资人报警维权，这类P2P网络理财平台的风险性有多大？</h2></a>
                                    <div class="answer-user">
                                        <div class="user-info">
                                            <div data-node="like" data-log="Like|From_" class="answer-like"><span
                                                    data-node="like-count">59赞</span> <i class="answer-like-icon"></i>
                                            </div>
                                            <span class="arrow"></span>
                                            <div class="user-link"><a
                                                    href="https://www.wukong.com/user/?uid=59202459070" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                                                    src="./悟空问答首页_files/1bf4000f689edff0d528" alt=""></a> <a
                                                    href="https://www.wukong.com/user/?uid=59202459070" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-name"><span
                                                    class="uname" style="color: rgb(51, 51, 51);"> 朋礼松律师
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                                                    title="刑辩律师" style="color: rgb(119, 119, 119);">刑辩律师</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="https://www.wukong.com/answer/6579056032587186439/" target="_blank"
                                       data-log="Visit_Question|From_">
                                        <div class="preview">
                                            <div class="preview-image"><img src="./悟空问答首页_files/9b8d0000e4c2645e6086"
                                                                            alt=""></div>
                                            <p class="content">
                                                永利宝网贷平台的“爆雷”，只不过是6、7月份“爆雷潮”中的浪花一朵。江浙沪广四地中，除广东地区未见“雷声”外，其余三地的网贷平台，都是前赴后继，雷声频频。
                                                P2P网贷平台，到底是个什么鬼？ P2P网贷平台是互联网金融的一种新形态，是指个体网络借贷，即个体和个体之间通过互联网平台实</p></div>
                                    </a></div>
                                <div class="hot-item hottest"><a
                                        href="https://www.wukong.com/answer/6578718344940093703/" target="_blank"
                                        data-log="Visit_Question|From_"><h2 class="title">
                                    上海吴淞口附近水域一船沉没10人失踪3人获救，现场情况怎样了？</h2></a>
                                    <div class="answer-user">
                                        <div class="user-info">
                                            <div data-node="like" data-log="Like|From_" class="answer-like"><span
                                                    data-node="like-count">289赞</span> <i class="answer-like-icon"></i>
                                            </div>
                                            <span class="arrow"></span>
                                            <div class="user-link"><a
                                                    href="https://www.wukong.com/user/?uid=101045534406" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                                                    src="./悟空问答首页_files/98a400167338c5b93107" alt=""></a> <a
                                                    href="https://www.wukong.com/user/?uid=101045534406" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-name"><span
                                                    class="uname" style="color: rgb(51, 51, 51);"> 蓝天救援队杨羿
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                                                    title="蓝天救援队闽浙赣三省督导官" style="color: rgb(119, 119, 119);">蓝天救援队闽浙赣三省督导官</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="https://www.wukong.com/answer/6578718344940093703/" target="_blank"
                                       data-log="Visit_Question|From_">
                                        <div class="preview">
                                            <div class="preview-image"><img src="./悟空问答首页_files/912500081bd598a32a9b"
                                                                            alt=""></div>
                                            <p class="content">
                                                我是蓝天救援队现场救援总指挥杨羿，此次参与了上海沉船事故的救援工作。我们是昨天连夜过来的，目前为止我们救援队共有71人到达现场。今早4点多我们就开始做救援准备，大约在6点多开始正式搜救。整体救援环节分为三个梯次，第一个梯次就是安排了7艘专业救生艇22名队员出动进行两岸及事发水域的</p>
                                        </div>
                                    </a></div><!----><!----><!----><!----><!----><!----><!----><!----></div>
                        </div>
                    </div> <!----> <!---->
                    <div class="w-contact"><h4><span class="no-text"></span></h4>
                        <div class="contact-info"><p>
                            © 2017 今日头条
                        </p>
                            <p class="cooperate">
                                悟空问答合作邮箱：wendahz@toutiao.com
                            </p>
                            <p>
                                悟空问答侵权投诉通道：ask@bytedance.com
                            </p>
                            <p>
                                京ICP备12025439号-14
                            </p>
                            <p>
                                京公网安备11000002002030号
                            </p>
                            <p>
                                网络文化经营许可证
                            </p>
                            <p>
                                跟帖评论自律管理承诺书
                            </p>
                            <p>
                                违法和不良信息举报电话：010-83434121
                            </p>
                            <p>
                                公司名称：北京字节跳动科技有限公司/北京字
                            </p>
                            <p>
                                节跳动网络技术有限公司
                            </p></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="main-header" data-log-from="Feed" class="header">
            <nav class="widget-tag-nav clearfix"><a href="javascript:;" data-node="tag-item"
                                                    data-id="6300775428692904450"
                                                    class="tag-item current"><span>热门</span></a> <a href="javascript:; "
                                                                                                    data-node="tag-item"
                                                                                                    data-log="Visit_Feed_Wonderful_Tab|From_"
                                                                                                    class="tag-item"><span>精选</span></a>
                <a href="https://www.wukong.com/tag/6215497899397089794/" target="_blank" data-node="tag-item"
                   data-log="Visit_FeedSecondTab|From_" class="tag-item"><span>社会</span></a><a
                        href="https://www.wukong.com/tag/6215497896830175745/" target="_blank" data-node="tag-item"
                        data-log="Visit_FeedThirdTab|From_" class="tag-item"><span>娱乐</span></a><a
                        href="https://www.wukong.com/tag/6215497726554016258/" target="_blank" data-node="tag-item"
                        data-log="Visit_FeedFourthTab|From_" class="tag-item"><span>体育</span></a><a
                        href="https://www.wukong.com/tag/6215497898671475202/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed5thTab|From_" class="tag-item"><span>汽车</span></a><a
                        href="https://www.wukong.com/tag/6215497900357585410/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed6thTab|From_" class="tag-item"><span>财经</span></a><a
                        href="https://www.wukong.com/tag/6215497899594222081/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed7thTab|From_" class="tag-item"><span>科技</span></a><a
                        href="https://www.wukong.com/tag/6215497900164647426/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed8thTab|From_" class="tag-item"><span>育儿</span></a><a
                        href="https://www.wukong.com/tag/6215497901590710786/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed9thTab|From_" class="tag-item"><span>历史</span></a><a
                        href="https://www.wukong.com/tag/6215497899774577154/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed10thTab|From_" class="tag-item"><span>美食与烹饪</span></a><a
                        href="https://www.wukong.com/tag/6215497897518041601/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed11thTab|From_" class="tag-item"><span>数码</span></a><a
                        href="https://www.wukong.com/tag/6215497898084272641/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed12thTab|From_" class="tag-item"><span>时尚</span></a><a
                        href="https://www.wukong.com/tag/6215847700051528193/" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed13thTab|From_" class="tag-item"><span>宠物</span></a>
                <div class="toogle"><span class="text">
        更多<i class="iconfont icon-ask_arrow_down"></i></span>
                    <div class="hide-list"><a href="https://www.wukong.com/tag/6215847700907166210/" target="_blank"
                                              data-node="tag-item" data-log="Visit_Feed14thTab|From_"
                                              class="tag-item"><span>收藏</span></a><a
                            href="https://www.wukong.com/tag/6215497901804620289/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed15thTab|From_" class="tag-item"><span>家居</span></a><a
                            href="https://www.wukong.com/tag/6281512530493835777/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed16thTab|From_" class="tag-item"><span>心理</span></a><a
                            href="https://www.wukong.com/tag/6215497897710979586/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed17thTab|From_" class="tag-item"><span>文化</span></a><a
                            href="https://www.wukong.com/tag/6215847700454181377/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed18thTab|From_" class="tag-item"><span>三农</span></a><a
                            href="https://www.wukong.com/tag/6215497895248923137/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed19thTab|From_" class="tag-item"><span>健康</span></a><a
                            href="https://www.wukong.com/tag/6215848044378720770/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed20thTab|From_" class="tag-item"><span>科学</span></a><a
                            href="https://www.wukong.com/tag/6215497899027991042/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed21thTab|From_" class="tag-item"><span>游戏</span></a><a
                            href="https://www.wukong.com/tag/6215497895852902913/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed22thTab|From_" class="tag-item"><span>动漫</span></a><a
                            href="https://www.wukong.com/tag/6215497897312520705/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed23thTab|From_" class="tag-item"><span>教育</span></a><a
                            href="https://www.wukong.com/tag/6215497899963320834/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed24thTab|From_" class="tag-item"><span>职场</span></a><a
                            href="https://www.wukong.com/tag/6215497897899723265/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed25thTab|From_" class="tag-item"><span>旅游</span></a><a
                            href="https://www.wukong.com/tag/6215497900554717698/" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed26thTab|From_" class="tag-item"><span>电影</span></a></div>
                </div>
            </nav>
        </div>
        <div id="main-index-question-list" data-log-from="Feed" class="index-question-list">
            <div class="w-feed">
                <div class="w-feed-container"><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6487864718257029390/"
                                                           target="_blank" data-log="Visit_Question|From_Link">你见过最侮辱观众智商的广告是什么？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">1752回答</span><span
                                    class="question-follow-num">1862人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/8b6d0001167ee98125bc"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=70707073272"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/3c7300052107ddee70af">
                                        <span class="answer-info-user-name">打虎拍蝇
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                                        <span class="answer-info-user-title">法律行业从业者</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6562797525240119560/"
                                        data-log="PopUp_AnswerContent|From_">那些年，我们一起看过的广告，侮辱观众智商的广告不少，有人一笑了之，有人却上当受骗，下面我们就一起来掰一掰：1、美的变频空调，想开就开，一晚低至一度电。如果真的这么好，估计没人用暖气...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">920</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">0</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!----> <!----> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6437356227516170497/"
                                                           target="_blank" data-log="Visit_Question|From_Link">在农村被“洋辣子”蛰后，该怎么办？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">2668回答</span><span
                                    class="question-follow-num">2273人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/811a000086a45357e753"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=6387380571"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/6cb000897e15cb3ab59">
                                        <span class="answer-info-user-name">鲜农场
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                                        <span class="answer-info-user-title">上海劲牛信息技术有限公司新媒体运营</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6550979208032551181/"
                                        data-log="PopUp_AnswerContent|From_">“洋辣子”几乎是我童年的一个阴影。小时候在树下完耍，一个小东西掉在了额头上，我就顺手一拍，顿时感到额头、眼睛火辣辣的疼，原来是一个“洋辣子”，汁水浸到了眼睛，在医院挂了一个星期的水...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">408</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">400</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6429065235629342977/"
                                                           target="_blank" data-log="Visit_Question|From_Link">第一次见网友，你印象最深的经历是什么？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">588回答</span><span
                                    class="question-follow-num">722人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3"><!----> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=4328532087"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/1dcd0024d36abdb7280b">
                                        <span class="answer-info-user-name">Jakychenbasketball
                                            <!----></span></a> <!----></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6436622097312645378/"
                                        data-log="PopUp_AnswerContent|From_">第一次跟网友见面是玩剑网3的时候，跟我游戏里的妹子徒弟在上海面基。我坐汽车到上海虹桥站，她过来接的我，由于我第一次到上海，上海虹桥站又特别大，我们两人足足打电话找了15分钟才碰面，见面第一感觉是真不容易，徒弟个子矮矮的，但是打扮的...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">741</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">142</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6527970266964820227/"
                                                           target="_blank" data-log="Visit_Question|From_Link">在殡仪馆看火化过程是什么样的感觉？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">415回答</span><span
                                    class="question-follow-num">908人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3"><!----> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=21242188646"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/5684000517a3e5e14c38">
                                        <span class="answer-info-user-name">妇产科女司机
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                                        <span class="answer-info-user-title">妇产科主治医师</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6564239759898575111/"
                                        data-log="PopUp_AnswerContent|From_">我老公曾经在民政上工作，我跟着他去殡仪馆看过火化。说实话，医生见生死不少，但是看火化真的是第一回。巨大的炉子，人被机器送进去，按按钮刷的一下点着了火，就那么短短的时间里，一个人就变成了灰烬。中途有时候还需要翻转一下，这样才能火化更...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">670</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">66</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6578712095255167245/"
                                                           target="_blank" data-log="Visit_Question|From_Link">刘伯温临死前说：“刘家再出人才，要等到100年以后”，最终应验了吗？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">24回答</span><span
                                    class="question-follow-num">27人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/9b8c000095a6bf6c1b6b"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=50758206843"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/1dcf002a6f7b1c048b51">
                                        <span class="answer-info-user-name">秉烛读春秋
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                                        <span class="answer-info-user-title">历史问答达人</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6578801524497973507/"
                                        data-log="PopUp_AnswerContent|From_">谢邀，刘伯温是和诸葛亮一样的牛人，有道是：“三分天下诸葛亮，一统江山刘伯温”，刘伯温不仅多谋善断，而且和诸葛亮一样，前知500年，后知500载。所以，他的预测最终都'应验了。刘伯温...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">374</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">20</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6464687869280649486/"
                                                           target="_blank" data-log="Visit_Question|From_Link">慈禧26岁守寡，她是怎样度过深宫生活的？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">126回答</span><span
                                    class="question-follow-num">617人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/811e0000b576b02e094c"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=53300395452"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/47120001f2e0eadb2021">
                                        <span class="answer-info-user-name">密探零零发
                                            <!----></span></a> <span class="answer-info-user-title">历史问答达人</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6553108765770514696/"
                                        data-log="PopUp_AnswerContent|From_">慈禧26岁守寡后，她成为大清帝国的老大，生活极尽奢华，但夜深人静的时候，她依然只是一个女人，会寂寞空虚冷，特别是有一样东西每天都要用，这个东西到底隐藏着什么秘密呢？慈禧26岁守寡，...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                        class="like-num">1155</span> <span>赞</span></a> <a href="javascript:"
                                                                                           data-log="Downvote|From_"
                                                                                           class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">119</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6559843530691313923/"
                                                           target="_blank" data-log="Visit_Question|From_Link">商朝令人谈之色变的“滴水刑”，到底是怎样的一种刑罚？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">111回答</span><span
                                    class="question-follow-num">357人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/83b800057996b03f6a4d"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=59944076706"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/4b01000060b32b52f217">
                                        <span class="answer-info-user-name">史之策
                                            <!----></span></a> <span class="answer-info-user-title">历史问答达人</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6560987052546982158/"
                                        data-log="PopUp_AnswerContent|From_">滴水刑—漫长的时间，无谓的挣扎，绝望的死去。
                                    在了解滴水刑的过程中，身上不禁起鸡皮疙瘩，伴随着一丝丝皮肤腐烂带来的恶心，深深感到可怕。 滴水刑是由商纣王所发明的，源于一个奴仆的不小...<span
                                            class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">328</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">77</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6497443475984744717/"
                                                           target="_blank" data-log="Visit_Question|From_Link">山西前首富被女明星甩，负债千亿，如今流浪成老赖谁的过？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">748回答</span><span
                                    class="question-follow-num">4147人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/4a3300057c1ac4602ce4"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=73316332473"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/403c0000f2945062715d">
                                        <span class="answer-info-user-name">深度娱
                                            <!----></span></a> <!----></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6497523036617441549/"
                                        data-log="PopUp_AnswerContent|From_">娱乐圈总是流传着一句话"演的好不如嫁得好"，毕竟不是谁都可以像范冰冰一样说出这句话：我没有想嫁入豪门，我就是豪门。说到豪门新贵，山西首富李兆会在国内绝对是数一数二的，本来好好的在国...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                        class="like-num">2921</span> <span>赞</span></a> <a href="javascript:"
                                                                                           data-log="Downvote|From_"
                                                                                           class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">433</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6524093618645369092/"
                                                           target="_blank" data-log="Visit_Question|From_Link">汶川地震中那些死难者存在银行里的钱，最后怎么处理了？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">1537回答</span><span
                                    class="question-follow-num">4876人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/666e0005e7c3d48526f4"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=5762131938"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/382b0018b579bbeda912">
                                        <span class="answer-info-user-name">飞鱼无
                                            <!----></span></a> <!----></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6527930098400624904/"
                                        data-log="PopUp_AnswerContent|From_">这个问题问的真好，原则上他的继承人去公证了以后拿着公证书可以去银行领取。但前提是你要找的到啊。为什么会找不到呢？我们来看这样一个案例。2007年，侯耀文遗产案轰动全国。我们都知道，...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                        class="like-num">2573</span> <span>赞</span></a> <a href="javascript:"
                                                                                           data-log="Downvote|From_"
                                                                                           class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">179</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6526000818053710087/"
                                                           target="_blank" data-log="Visit_Question|From_Link">赵匡胤死后，赵光义如何对待年仅24岁的皇后嫂子的？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">103回答</span><span
                                    class="question-follow-num">1027人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/7e5a0007343146200442"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=72666531898"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/401f0002c2ea32b37f53">
                                        <span class="answer-info-user-name">狄飞惊
                                            <!----></span></a> <span
                                            class="answer-info-user-title">网络作家 代表作《说不尽的宋朝》</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6551204410138034446/"
                                        data-log="PopUp_AnswerContent|From_">赵光义是什么角色？强幸小周后，调戏花蕊夫人，面对赵匡胤遗留的年轻美貌皇后，他干出来的事比耍流氓更狠，俩人到底有什么恩怨情仇？赵匡胤死时，儿子有两个，次子赵德昭和四子赵德芳，赵德昭2...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">965</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">37</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6431453711704260865/"
                                                           target="_blank" data-log="Visit_Question|From_Link">王杰究竟是被谁毒哑嗓子的？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">618回答</span><span
                                    class="question-follow-num">1329人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/5fee0009d7091917c1cc"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=22848095280"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/5ac7000a290fa5ba5752">
                                        <span class="answer-info-user-name">飞机SHOW
                                            <!----></span></a> <!----></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6523715228381741326/"
                                        data-log="PopUp_AnswerContent|From_">王杰到底有没有被人下毒这件事在我个人看来应该不是无中生有。要了解这件事情首先要知道当年的港台娱乐圈有多黑暗，这里的黑幕多了去了，以前由于信息闭塞，人们无从知晓，后来由于网络的发达，...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">772</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">70</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6530573341244260615/"
                                                           target="_blank" data-log="Visit_Question|From_Link">小沈阳如今变成这样，作为师父的赵本山为何不拉一把？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">262回答</span><span
                                    class="question-follow-num">815人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/83b80005c6827c61bee1"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=2856275571"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/289d0009326f480b4db4">
                                        <span class="answer-info-user-name">炭烧的菠萝
                                            <!----></span></a> <span class="answer-info-user-title">娱乐问答达人</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6561274609465819399/"
                                        data-log="PopUp_AnswerContent|From_">因为小沈阳如今变成这样，全是由他师傅赵本山一手造成的，当年小沈阳因为顶替了宋小宝，和师傅赵本山在春晚演了小品《不差钱》一炮而红，全国人民都认识了他，然后借助模仿和表演的功力，开了多...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                        class="like-num">1021</span> <span>赞</span></a> <a href="javascript:"
                                                                                           data-log="Downvote|From_"
                                                                                           class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">191</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6523023845249515784/"
                                                           target="_blank" data-log="Visit_Question|From_Link">狗和猫真的能看见人看不见的东西吗？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">193回答</span><span
                                    class="question-follow-num">277人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/666b000185b9c11eccf6"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=5868592966"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/83470001739c0c29f079">
                                        <span class="answer-info-user-name">隐居仙境
                                            <!----></span></a> <!----></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6523064192843383047/"
                                        data-log="PopUp_AnswerContent|From_">不知道猫能不能看见人看不见的东西，但我可以明确告诉你，狗狗是一定能的，在农村，大家都知道一句俗话说狗叫快叫咬人，慢叫咬神，不慌不忙叫咬阴人(农村人说的鬼)。农村，一般农户都喜欢养一...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                        class="like-num">1341</span> <span>赞</span></a> <a href="javascript:"
                                                                                           data-log="Downvote|From_"
                                                                                           class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">209</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6418136300427149570/"
                                                           target="_blank" data-log="Visit_Question|From_Link">当年成龙参加梅艳芳的葬礼，因迟到向华强就当众让成龙下跪的传闻是真的吗？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">191回答</span><span
                                    class="question-follow-num">721人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/83b70000cf9747298b72"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=2856275571"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/289d0009326f480b4db4">
                                        <span class="answer-info-user-name">炭烧的菠萝
                                            <!----></span></a> <span class="answer-info-user-title">娱乐问答达人</span></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6555622936030478599/"
                                        data-log="PopUp_AnswerContent|From_">成龙曾经在接受采访时说过一句话，娱乐圈真是太乱了，尤其是像我们那个年代，发生了好多不能拿出来说的事情，旁人根本没办法理解，但是我把它写成书了，交给律师保管，在100年以后出版。成龙...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">388</span>
                                    <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">41</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6389329659728756994/"
                                                           target="_blank" data-log="Visit_Question|From_Link">大龄剩女会有什么样的结局？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">1058回答</span><span
                                    class="question-follow-num">1782人收藏</span></div>
                        </div> <!---->
                        <div class="question-answers">
                            <div class="answer-item-v3 has-pic">
                                <div class="answer-item-pic"><a href="javascript:"><img
                                        src="./悟空问答首页_files/811d0006e3e2b56814db"></a></div> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="https://www.wukong.com/user/?uid=5795410242"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img alt=""
                                                                                                          src="./悟空问答首页_files/986b0000edecda6f8eec">
                                        <span class="answer-info-user-name">聚焦山东热点
                                            <!----></span></a> <!----></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="https://www.wukong.com/answer/6556737747195789575/"
                                        data-log="PopUp_AnswerContent|From_">我是45岁的剩女，至今未婚，也没对象。我内心非常后悔，没早点结婚，没早点嫁人。我同意那个人的看法，只是醒悟的太晚，30岁前的要求有点不切实际，那时候不乏追求者，也谈过多个对象，都是...<span
                                        class="answer-item-whole">全文</span></a></p></div>
                                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                                    <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                        class="like-num">1411</span> <span>赞</span></a> <a href="javascript:"
                                                                                           data-log="Downvote|From_"
                                                                                           class="w-unlike"><i
                                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                                    <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                                    data-log="Visit_Comment|From_"
                                                                                    class="answer-oper-comments"><i
                                        class="iconfont icon-ask_comment"></i> <span class="comment-count">687</span>
                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                            </div>
                        </div> <!----></div> <!----> <!----> <!----></div>
                <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">滚动加载更多</span></div>
            </div>
        </div>
        <div class="sub-contianer"></div>
        <div class="detail"></div>
        <div data-node="loadmore" class="index-question-loadmore">
            <div class="index-question-loadmore-w"></div>
        </div>
    </main>
    <div data-log-from="FloatingBtn" class="assist"><a href="javascript:;" data-node="static-refresh"
                                                       data-log="ActiveRefresh|From_" class="j-refresh"><i
            class="iconfont icon-refresh"></i></a> <a href="javascript:;" data-node="static-feedback"
                                                      data-log="PopUp_CreateFeedback|From_"
                                                      class="j-feedback"><span>反馈</span></a> <a href="javascript:;"
                                                                                                class="j-go-top"><i
            class="iconfont icon-icon_top"></i></a></div>
</div>
<footer class="copyright">
    <p>©2017 www.wukong.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
    <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
<div data-node="widget-share-group" class="widget-share-group">
    <div class="share-group-content clearfix">
        <div class="qr"></div>
        <div data-node="weixin" data-url="" data-desc="" data-log="Share_Weixin|From_" class="share-link weixin"><i
                class="iconfont icon-wechat_share"></i></div>
        <div data-node="weibo" data-url="" data-desc="" data-log="Share_Weibo|From_" class="share-link weibo"><i
                class="iconfont icon-weibo_share"></i></div>
        <div data-node="qzone" data-url="" data-desc="" data-log="Share_Qzone|From_" class="share-link qq"><i
                class="iconfont icon-qzone_share"></i></div>
    </div>
    <div class="share-group-arrow"><i></i></div>
</div>
</body>
</html>
