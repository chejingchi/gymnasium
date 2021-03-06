<%--
  Created by IntelliJ IDEA.
  User: chejingchi
  Date: 16/4/6
  Time: 下午6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" href="${base}/dest/css/common/common.css">
    <link rel="stylesheet" href="${base}/dest/calendar/fullcalendar.css">
    <link rel="stylesheet" href="${base}/dest/calendar/fullcalendar.print.css" media='print'>
    <link rel="stylesheet" type="text/css" href="${base}/dest/bootstrap-datapicker/css/bootstrap-datetimepicker.css"/>
    <link rel="stylesheet" type="text/css" href="${base}/dest/sweetAlert/css/sweet-alert.css">


    <script type="text/javascript">
        var courses = ${obj.courses};
        var manageCourseInitUrl = "${base}/gymManager/manageCourseInit";
        var manageTeacherInitUrl = "${base}/gymManager/manageTeacherInit";
        var manageUserInitUrl = "${base}/gymManager/manageUserInit";

        var addCourseUrl = "${base}/gymManager/addCourse";
        var addTeacherUrl = "${base}/gymManager/addTeacher";
        var addUserUrl = "${base}/gymManager/addUser";

        var deleteCourseUrl = "${base}/gymManager/deleteCourse";
        var deleteTeacherUrl = "${base}/gymManager/deleteTeacher";
        var deleteUserUrl = "${base}/gymManager/deleteUser";
        var base = "${base}";

        var createVipCardNoUrl = "${base}/gymManager/createVipCardNo";

    </script>
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
    <section class="clearfix">
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
                                <a href="#">课程排期</a>

                                <div class="bottom"></div>
                            </li>
                            <li>
                                <div></div>
                                <a href="#">课程管理</a>

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
                            <li><a id="show-course-calendar" class="active-now">课程排期</a></li>
                            <%--<li><a href="#">课表管理</a></li>--%>
                            <li><a id="show-course-manager">课程管理</a></li>
                            <li><a id="show-teacher-manager">教练管理</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <!--<a href="#" class="first-level"><span><img src="../img/member.png"></span>会员&卡 <span-->
                        <a href="#" class="first-level"><i class="iconfont icon-admin-font">&#xe60b;</i>会员&卡 <span
                                class="glyphicon arrow"></span></a>
                        <ul>
                            <li><a id="show-user-manager">会员管理</a></li>
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
                <div id="calendar"></div>
                <div id="course-manager" class="disnone">
                    <div id="course-manager-pager"></div>
                    <div>
                        <button type="button" class="btn btn-default add-course" data-toggle="modal"
                                data-target="#add-course">添加课程
                        </button>
                    </div>
                </div>
                <div id="teacher-manager" class="disnone">
                    <div id="teacher-manager-pager"></div>
                    <div>
                        <button type="button" class="btn btn-default add-teacher" data-toggle="modal"
                                data-target="#add-teacher">添加教师
                        </button>
                    </div>
                </div>
                <div id="user-manager" class="disnone">
                    <div id="user-manager-pager"></div>
                    <div>
                        <button type="button" class="btn btn-default add-user" data-toggle="modal"
                                data-target="#add-user">添加会员
                        </button>
                    </div>
                </div>

            </div>
        </section>
    </section>
</div>

<!--模态框-->
<div class="modal fade" id="add-course" tabindex="-1" role="dialog"
     aria-labelledby="addCourseLabel" aria-hidden="true">
    <div class="modal-dialog my-modal-width">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="addCourseLabel">
                    添加课程
                </h4>
            </div>
            <div class="modal-body">
                <div class="add-course-modal">
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">课程名称</label>
                                <div class="col-sm-8">
                                    <input type="text" id="courseName" class="form-control" placeholder="录入课程名称">
                                </div>
                            </div>
                            <div class="margin-left-minus-fifty form-group col-sm-6">
                                <label class="col-sm-4 control-label">录入操作人员</label>
                                <div class="col-sm-8">
                                    <input type="text" id="operator" class="form-control" placeholder="默认为管理员">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">任课老师选择</label>
                                <div class="col-sm-8">
                                    <select name="" id="teacherCode" class="form-control">
                                        <c:forEach items="${obj.teachers}" var="teacher" varStatus="status">
                                            <option value="${teacher.id}">${teacher.teacherName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="margin-left-minus-fifty form-group col-sm-6">
                                <label class="col-sm-4 control-label">开始时间</label>
                                <div class="col-sm-8">
                                    <input type="text" id="startTime" class="form-control pick-time" placeholder=""
                                           readonly>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">录入时间</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control pick-time" placeholder="默认为当前时间可以不选"
                                           readonly>
                                </div>
                            </div>
                            <div class="margin-left-minus-fifty form-group col-sm-6">
                                <label class="col-sm-4 control-label">结束时间</label>
                                <div class="col-sm-8">
                                    <input type="text" id="endTime" class="form-control pick-time" placeholder=""
                                           readonly>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div align="center">
                        <button type="button" id="sure-to-add-course" class="btn btn-default">确认添加</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="add-teacher" tabindex="-1" role="dialog"
     aria-labelledby="addTeacherLabel" aria-hidden="true">
    <div class="modal-dialog my-modal-width">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="addTeacherLabel">
                    添加教练
                </h4>
            </div>
            <div class="modal-body">
                <div class="add-course-modal">
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">教师姓名</label>
                                <div class="col-sm-8">
                                    <input type="text" id="teacherName" class="form-control" placeholder="录入教师姓名">
                                </div>
                            </div>
                            <div class="margin-left-minus-fifty form-group col-sm-6">
                                <label class="col-sm-4 control-label">录入操作人员</label>
                                <div class="col-sm-8">
                                    <input type="text" id="operatorTeacher" class="form-control" placeholder="默认为管理员">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">教师编码</label>
                                <div class="col-sm-8">
                                    <input type="text" id="teacherCodeAdd" class="form-control" placeholder="录入教师编码">
                                </div>
                            </div>
                            <%--<div class="margin-left-minus-fifty form-group col-sm-6">--%>
                            <%--<label class="col-sm-4 control-label">结束时间</label>--%>
                            <%--<div class="col-sm-8">--%>
                            <%--<input type="text" id="endTime" class="form-control pick-time" placeholder="" readonly>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                        </form>
                    </div>
                    <div align="center">
                        <button type="button" id="sure-to-add-teacher" class="btn btn-default">确认添加</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="add-user" tabindex="-1" role="dialog"
     aria-labelledby="addUserLabel" aria-hidden="true">
    <div class="modal-dialog my-modal-width">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="addUserLabel">
                    添加会员
                </h4>
            </div>
            <div class="modal-body">
                <div class="add-course-modal">
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">会员姓名</label>
                                <div class="col-sm-8">
                                    <input type="text" id="username" class="form-control" placeholder="录入会员姓名">
                                </div>
                            </div>
                            <div class="margin-left-minus-fifty form-group col-sm-6">
                                <label class="col-sm-4 control-label">录入操作人员</label>
                                <div class="col-sm-8">
                                    <input type="text" id="operatorUser" class="form-control" placeholder="默认为管理员">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">会员编码</label>
                                <div class="col-sm-8">
                                    <input type="text" id="vipCardNo" class="form-control" placeholder="自动生成,请勿改动">
                                </div>
                            </div>
                            <div class="margin-left-minus-fifty form-group col-sm-6">
                                <label class="col-sm-4 control-label">电话号码</label>
                                <div class="col-sm-8">
                                    <input type="text" id="telephone" class="form-control"
                                           placeholder="录入电话号码" maxlength="11">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">qq</label>
                                <div class="col-sm-8">
                                    <input type="text" id="qq" class="form-control" placeholder="录入qq">
                                </div>
                            </div>
                            <div class="margin-left-minus-fifty form-group col-sm-6">
                                <label class="col-sm-4 control-label">e-mail</label>
                                <div class="col-sm-8">
                                    <input type="text" id="email" class="form-control" placeholder="录入邮箱">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <form class="form-horizontal" role="form">
                            <div class="form-group col-sm-6">
                                <label class="margin-left-minus-fifty col-sm-4 control-label">用户类型:</label>
                                <div class="col-sm-8">
                                    <select name="type" id="sex" class="sex">
                                        <option value="">请选择</option>
                                        <option value="0">女</option>
                                        <option value="1">男</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div align="center">
                        <button type="button" id="sure-to-add-user" class="btn btn-default">确认添加</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="frame-footer">Copyright ©2015 猜猜我是谁</div>
</body>
<script src="${base}/dest/jquery-2.1.1.js"></script>
<script src="${base}/dest/js/common/common.js"></script>
<script src="${base}/dest/bootstrap.js"></script>
<script src="${base}/dest/metisMenu.js"></script>
<script src="${base}/dest/js/common/page.js"></script>
<script src="${base}/dest/calendar/lib/moment.min.js"></script>
<script src="${base}/dest/calendar/fullcalendar.min.js"></script>
<script src="${base}/dest/calendar/fullcalendar.min.js"></script>
<script src="${base}/dest/bootstrap-datapicker/js/bootstrap-datetimepicker.js"></script>
<script src="${base}/dest/sweetAlert/js/sweet-alert.js"></script>
<script src="${base}/dest/js/course-detail.js"></script>
<script>
    $(function () {
        $('#mobile-menu').metisMenu();
        $('#pc-menu').metisMenu({
            toggle: false
        });
    });

</script>
</html>

