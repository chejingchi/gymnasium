<%--
  Created by IntelliJ IDEA.
  User: chejingchi
  Date: 16/4/6
  Time: 下午6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- uc强制竖屏 -->
    <meta name="screen-orientation" content="portrait">
    <!-- QQ强制竖屏 -->
    <meta name="x5-orientation" content="portrait">
    <title>我的场馆秀</title>
    <link rel="stylesheet" href="${base}/dest/bootstrap.css">
    <link rel="stylesheet" href="${base}/dest/animate.css">
    <link rel="stylesheet" href="${base}/dest/metisMenu.css">
    <link rel="stylesheet" href="${base}/dest/frame.css">
    <link rel="stylesheet" href="${base}/dest/add-xiu.css">
</head>
<body>
<div class="frame-header">
    <div class="mobile-header"><i class="iconfont icon-menu-font">&#xe611;</i></div>
    <div class="header">
        <!-- <span><img src="../img/logo.png" class="logo"></span> -->

        <div class="header-title">云管理</div>
        <div class="welcome">
            <span>你好,admin</span>
            <i class="iconfont icon-yaoshi">&#xe600;</i>
            <i class="iconfont icon-tuichu-font">&#xe604;</i>
        </div>
    </div>
</div>

<div class="frame-content">
    <div class="clearfix">
        <aside class="sidebar frame-content-left">
            <nav class="sidebar-nav">
                <!--手机菜单-->
                <ul id="mobile-menu">
                    <!-- <div class="menu_arrow"><img src="../img/mobile_menu_arrow.png"></div> -->
                    <li style="margin-top: -10px;" class="active">
                        <div></div>
                        <a href="#" class="first-level"><i class="iconfont icon-book-font">&#xe605;</i>课程&教练</a>

                        <div></div>
                        <ul>
                            <li>
                                <div></div>
                                <a href="#">课程管理</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">课程排期</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">课表管理</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">教练管理</a>

                                <div class="bottom"></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div></div>
                        <a href="#" class="first-level"><i class="iconfont icon-admin-font">&#xe60b;</i>会员&卡</a>

                        <div></div>
                        <ul>
                            <li>
                                <div></div>
                                <a href="#">会员管理</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">卡名称管理</a>

                                <div class="bottom"></div>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <div></div>
                        <a href="#" class="first-level"><i class="iconfont icon-wenjianjia-font">&#xe607;</i>预订管理</a>

                        <div></div>
                        <ul>
                            <li>
                                <div></div>
                                <a href="#">小班课预订</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">私教课预订</a>

                                <div class="bottom"></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div></div>
                        <a href="#" class="first-level"><i class="iconfont icon-consumer-font">&#xe608;</i>客户服务</a>

                        <div></div>
                        <ul>
                            <li>
                                <div></div>
                                <a href="#">商家信息</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">常见问题</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">公告管理</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">咨询管理</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">活动管理</a>

                                <div class="bottom"></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div></div>
                        <a href="#" class="first-level"><i class="iconfont icon-set-font">&#xe606;</i>系统设置</a>

                        <div></div>
                        <ul>
                            <li>
                                <div></div>
                                <a href="#">个性设置</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">常见参数</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">公众号设置</a>

                                <div class="bottom"></div>
                            </li>
                        </ul>
                    </li>
                </ul>

                <!--pc菜单-->
                <ul id="pc-menu">
                    <!--<li><a href="#" class="first-level"><span><img src="../img/home.png"></span>首页</a></li>-->
                    <li><a href="#" class="first-level"><i class="iconfont icon-home-font">&#xe603;</i>首页</a></li>
                    <li class="active">
                        <!--<a href="#" class="first-level"><span><img src="../img/course.png">&nbsp;</span>课程&教练<span-->
                        <a href="#" class="first-level"><i class="iconfont icon-book-font">&#xe605;</i>课程&教练<span
                                class="glyphicon arrow"></span></a>
                        <ul>
                            <li><a href="#" class="active-now">课程管理</a></li>
                            <li><a href="#">课程排期</a></li>
                            <li><a href="#">课表管理</a></li>
                            <li><a href="#">教练管理</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <!--<a href="#" class="first-level"><span><img src="../img/member.png"></span>会员&卡 <span-->
                        <a href="#" class="first-level"><i class="iconfont icon-admin-font">&#xe60b;</i>会员&卡 <span
                                class="glyphicon arrow"></span></a>
                        <ul>
                            <li><a href="#">会员管理</a></li>
                            <li><a href="#">卡名称管理</a></li>

                        </ul>
                    </li>
                    <li class="active">
                        <!--<a href="#" class="first-level"><span><img src="../img/subscribe.png"></span>预订管理<span-->
                        <a href="#" class="first-level"><i class="iconfont icon-wenjianjia-font">&#xe607;</i>预订管理<span
                                class="glyphicon arrow"></span></a>
                        <ul>
                            <li><a href="#">小班课预订</a></li>
                            <li><a href="#">私教课预订</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <!--<a href="#" class="first-level"><span><img src="../img/service.png"></span>客户服务<span-->
                        <a href="#" class="first-level"><i class="iconfont icon-consumer-font">&#xe608;</i>客户服务<span
                                class="glyphicon arrow"></span></a>
                        <ul>
                            <li><a href="#">商家信息</a></li>
                            <li><a href="#">常见问题</a></li>
                            <li><a href="#">公告管理</a></li>
                            <li><a href="#">咨询管理</a></li>
                            <li><a href="#">活动管理</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <!--<a href="#" class="first-level"><span><img src="../img/config.png"></span>系统设置<span-->
                        <a href="#" class="first-level"><i class="iconfont icon-set-font">&#xe606;</i>系统设置<span
                                class="glyphicon arrow"></span></a>
                        <ul>
                            <li><a href="#">个性设置</a></li>
                            <li><a href="#">常见参数</a></li>
                            <li><a href="#">公众号设置</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <div class="menu-footer"></div>
                    </li>
                </ul>
            </nav>
        </aside>
        <section class="frame-content-right">
            <div id="add-xiu">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div id="navigator">
                            <div class="title">我的场馆秀</div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-6 col-sm-4 col-md-3">
                        <div class="add-panel">
                            <i class="iconfont icon-tianjia"></i>
                            <p>创建场景</p>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3">
                        <!-- <div class="xiu-panel" style="background-image: url(../img/picture.png);"> -->
                        <div class="xiu-panel" style="">
                            <div class="xiu-panel-top">
                                <p>2015.08.30</p>
                                <p>场馆秀</p>
                            </div>
                            <div class="xiu-panel-bottom">
                        <span class="xiu-edit">
                            <i class="iconfont icon-bianji"></i>
                        </span>
                        <span class="xiu-fabu">
                            <i class="iconfont icon-fabu"></i>
                        </span>
                        <span class="xiu-delete">
                            <i class="iconfont icon-shanchu1"></i>
                        </span>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-3">
                        <!-- <div class="xiu-panel" style="background-image: url(../img/picture.png);"> -->
                        <div class="xiu-panel" style="">
                            <div class="xiu-panel-top">
                                <p>2015.08.30</p>
                                <p>场馆秀</p>
                            </div>
                            <div class="xiu-panel-bottom">
                        <span class="xiu-edit">
                            <i class="iconfont icon-bianji"></i>
                        </span>
                        <span class="xiu-fabu">
                            <i class="iconfont icon-fabu"></i>
                        </span>
                        <span class="xiu-delete">
                            <i class="iconfont icon-shanchu1"></i>
                        </span>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-3">
                        <!-- <div class="xiu-panel" style="background-image: url(../img/picture.png);"> -->
                        <div class="xiu-panel" style="">
                            <div class="xiu-panel-top">
                                <p>2015.08.30</p>
                                <p>场馆秀</p>
                            </div>
                            <div class="xiu-panel-bottom">
                        <span class="xiu-edit">
                            <i class="iconfont icon-bianji"></i>
                        </span>
                        <span class="xiu-fabu">
                            <i class="iconfont icon-fabu"></i>
                        </span>
                        <span class="xiu-delete">
                            <i class="iconfont icon-shanchu1"></i>
                        </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class=" xiu-profile-modal">
                        <div class="modal-title">
                            编辑基本信息
                    <span class="shut pull-right">
                        <i class="iconfont icon-shanchu"></i>
                    </span>
                        </div>
                        <div class="modal-contant">
                            <!-- <div class="cover-replace" style="background-image: url(../img/picture.png);"> -->
                            <div class="cover-replace" style="">
                                <div class="cover-bottom">更换封面</div>
                            </div>

                            <div class="contant-right">
                                <div class="setting-group">
                                    <label class="name">场景名称：</label>

                                    <div class="setting-value">
                                        <input name="name" type="text" placeholder="场景名称"/>
                                    </div>
                                </div>

                                <div class="setting-group">
                                    <label class="profile">场景描述：</label>

                                    <div class="setting-value">
                            <textarea name="profile" id="description1" rows="2"
                                      placeholder="你可以写下30个汉字或60个英文字符的场景描述哦！"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bottom-button">
                            <a class="btn" href="">去发布</a>
                        </div>
                    </div>
                    <div class="modal-title">
                        编辑基本信息
                    <span class="shut pull-right">
                        <i class="iconfont icon-shanchu"></i>
                    </span>
                    </div>
                    <div class="modal-contant">
                        <!-- <div class="cover-replace" style="background-image: url(../img/picture.png);"> -->
                        <div class="cover-replace" style="">

                            <div class="cover-bottom">更换封面</div>
                        </div>

                        <div class="contant-right">
                            <div class="setting-group">
                                <label class="name">场景名称：</label>
                                <div class="setting-value">
                                    <input name="name" type="text" placeholder="场景名称"/>
                                </div>
                            </div>

                            <div class="setting-group">
                                <label class="profile">场景描述：</label>
                                <div class="setting-value">
                                    <textarea name="profile" id="description2" rows="2"
                                              placeholder="你可以写下30个汉字或60个英文字符的场景描述哦！"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-button">
                        <a class="btn" href="">去发布</a>
                    </div>
                </div>
            </div>
    </div>
    </section>
</div>
</div>
<!--<div class="thick"></div>-->
<div class="frame-footer">Copyright ©2015 easy-hi.com All Rights Reserved. 南京瑞奕惟扬信息科技有限公司 版权所有</div>
</body>
<script src="${base}/dest/jquery-2.1.1.js"></script>
<script src="${base}/dest/bootstrap.js"></script>
<script src="${base}/dest/metisMenu.js"></script>
<script>
    $(function () {
        $('#mobile-menu').metisMenu();
        $('#pc-menu').metisMenu({
            toggle: false
        });
    });
</script>

<!--<script type="text/javascript">
    $(function(){
        var navH = $(".title").offset().top;
        $(window).scroll(function(){
            var scroH = $(this).scrollTop();
            if(scroH>=navH){
                $(".title").css({"position":"fixed","top":0,"left":"0%","width":"100%"});//
            }else if(scroH<navH){
                $(".title").css({"position":"static","margin":"0 auto"});
            }
            console.log(scroH==navH);
        })
    })
</script>-->
</html>

