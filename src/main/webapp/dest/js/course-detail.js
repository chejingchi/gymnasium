/**
 * Created by chejingchi on 16/4/21.
 */
$(function () {
    var Course = function () {
    }
    Course.prototype.initParam = function () {
        this.title = $("#courseName").val();
        this.operator = $("#operator").val();
        this.teacherCode = $("#teacherCode").val();
        this.start = $("#startTime").val();
        this.end = $("#endTime").val();
        return this;
    }
    Course.prototype.checkIsNotEmpty = function () {
        if ($.checkEmpty(this.title)) {
            sweetAlert("Oops...", "课程名不能为空", "error");
            return false;
        }
        if ($.checkEmpty(this.teacherCode)) {
            sweetAlert("Oops...", "请选择任课老师", "error");
            return false;
        }
        if ($.checkEmpty(this.start)) {
            sweetAlert("Oops...", "请选择开始时间", "error");
            return false;
        }
        if ($.checkEmpty(this.end)) {
            sweetAlert("Oops...", "请选择结束时间", "error");
            return false;
        }
        return true;
    }

    var Teacher = function () {
    }
    Teacher.prototype.initParam = function () {
        this.teacherCode = $("#teacherCodeAdd").val();
        this.teacherName = $("#teacherName").val();
        return this;
    }
    Teacher.prototype.checkIsNotEmpty = function () {
        if ($.checkEmpty(this.teacherCode)) {
            sweetAlert("Oops...", "教师编码名不能为空", "error");
            return false;
        }
        if ($.checkEmpty(this.teacherName)) {
            sweetAlert("Oops...", "教师姓名不能为空", "error");
            return false;
        }
        return true;
    }

    var User = function () {
    }
    User.prototype.initParam = function () {
        this.username = $("#username").val();
        this.sex = $("#sex").val();
        this.vipCardNo = $("#vipCardNo").val();
        this.telephone = $("#telephone").val();
        this.email = $("#email").val();
        this.qq = $("#qq").val();
        return this;
    }

    User.prototype.checkIsNotEmpty = function () {
        var mailRegularity = /\w@\w*\.\w/;
        if ($.checkEmpty(this.username)) {
            sweetAlert("Oops...", "教师编码名不能为空", "error");
            return false;
        }
        if ($.checkEmpty(this.sex)) {
            sweetAlert("Oops...", "请选择性别", "error");
            return false;
        }
        if ($.checkEmpty(this.vipCardNo)) {
            sweetAlert("Oops...", "vip卡号不能为空", "error");
            return false;
        }
        if ($.checkEmpty(this.telephone)) {
            sweetAlert("Oops...", "电话号码不能为空", "error");
            return false;
        } else if (this.telephone.length != 11) {
            sweetAlert("Oops...", "电话号码格式不正确", "error");
            return false;
        }
        if ($.checkEmpty(this.email)) {
            sweetAlert("Oops...", "邮箱不能为空", "error");
            return false;
        } else if (!mailRegularity.test(this.email)) {
            sweetAlert("Oops...", "邮箱格式不对", "error");
            return false;
        }
        if ($.checkEmpty(this.qq)) {
            sweetAlert("Oops...", "qq不能为空", "error");
            return false;
        }
        return true;
    }


    var CourseManager = {
        findCourseInfoData: function (tp, pageSize, finalData) {
            var dataSpace = '<div class="data-render"><table class="table table-hover" id="Pui">';
            dataSpace += '<thead><tr>';
            dataSpace += '<td><p>课程id</p></td>';
            dataSpace += '<td><p>课程名称</p></td>';
            dataSpace += '<td><p>开始时间</p></td>';
            dataSpace += '<td><p>结束时间</p></td>';
            dataSpace += '<td><p>任课教师</p></td>';
            dataSpace += '</tr></thead>';
            for (var i = 0; i < pageSize; i++) {
                var dataId = pageSize * (tp - 1) + i;
                if (dataId + 1 > finalData.length) {
                    break;
                } else {
                    dataSpace += '<tr class="show-detail-info" data-toggle="modal" data-target="#book-detail-info">';
                    dataSpace += '<input type="hidden" value="' + finalData[dataId].id + '" />';
                    dataSpace += '<td><p>' + finalData[dataId].id + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].title + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].start + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].end + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].teachersName + '</p></td>';
                    dataSpace += '<td><button class="btn delete-course btn-primary">删除</button></td>';
                    dataSpace += '</tr>';
                }
            }
            dataSpace += '</table></div>';
            $("#course-info-pager-div").html(dataSpace);
        },
        findTeacherInfoData: function (tp, pageSize, finalData) {
            var dataSpace = '<div class="data-render"><table class="table table-hover" id="Pui">';
            dataSpace += '<thead><tr>';
            dataSpace += '<td><p>教练id</p></td>';
            dataSpace += '<td><p>教练姓名</p></td>';
            dataSpace += '<td><p>教授课程</p></td>';
            dataSpace += '<td><p>教师编码</p></td>';
            dataSpace += '<td><p>热度</p></td>';
            dataSpace += '</tr></thead>';
            for (var i = 0; i < pageSize; i++) {
                var dataId = pageSize * (tp - 1) + i;
                if (dataId + 1 > finalData.length) {
                    break;
                } else {
                    dataSpace += '<tr class="show-detail-info" data-toggle="modal" data-target="#book-detail-info">';
                    dataSpace += '<input type="hidden" value="' + finalData[dataId].id + '" />';
                    dataSpace += '<td><p>' + finalData[dataId].id + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].teacherName + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].CoursesName + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].teacherCode + '</p></td>';
                    dataSpace += '<td><p>' + '' + '</p></td>';
                    dataSpace += '<td><button class="btn delete-teacher disnone btn-primary">删除</button></td>';
                    dataSpace += '</tr>';
                }
            }
            dataSpace += '</table></div>';
            $("#teacher-info-pager-div").html(dataSpace);
        },
        findUserInfoData: function (tp, pageSize, finalData) {
            var dataSpace = '<div class="data-render"><table class="table table-hover" id="Pui">';
            dataSpace += '<thead><tr>';
            dataSpace += '<td><p>会员id</p></td>';
            dataSpace += '<td><p>会员姓名</p></td>';
            dataSpace += '<td><p>会员卡号</p></td>';
            dataSpace += '<td><p>会员电话</p></td>';
            dataSpace += '<td><p>性别</p></td>';
            dataSpace += '<td><p>email</p></td>';
            dataSpace += '<td><p>qq</p></td>';
            dataSpace += '</tr></thead>';
            for (var i = 0; i < pageSize; i++) {
                var dataId = pageSize * (tp - 1) + i;
                if (dataId + 1 > finalData.length) {
                    break;
                } else {
                    if(finalData[dataId].username == "admin"){
                        return;
                    }
                    finalData[dataId].sex = finalData[dataId].sex == '0' ? '女' : '男';
                    dataSpace += '<tr class="show-detail-info" data-toggle="modal" data-target="#book-detail-info">';
                    dataSpace += '<input type="hidden" value="' + finalData[dataId].id + '" />';
                    dataSpace += '<td><p>' + finalData[dataId].id + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].username + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].vipCardNo + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].telephone + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].sex + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].email + '</p></td>';
                    dataSpace += '<td><p>' + finalData[dataId].qq + '</p></td>';
                    dataSpace += '<td><button class="btn delete-user btn-primary">删除</button></td>';
                    dataSpace += '</tr>';
                }
            }
            dataSpace += '</table></div>';
            $("#user-info-pager-div").html(dataSpace);
        },
        useFullCalendar: function () {
            var now = new Date();
            now.Format('yyyy-MM-dd');
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                defaultDate: now,
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: courses
            });
        },
        hideAll: function () {
            $("#course-manager").hide();
            $("#teacher-manager").hide();
            $("#calendar").hide();
        }
    }
    CourseManager.useFullCalendar();

    $("#show-course-calendar").on("click", function () {
        $("#pc-menu a").removeClass("active-now");
        $(this).addClass("active-now");
        CourseManager.hideAll();
        $("#calendar").show();
        CourseManager.useFullCalendar();
    })


    $("#show-course-manager").on("click", function () {
        $("#pc-menu a").removeClass("active-now");
        $(this).addClass("active-now");
        CourseManager.hideAll();
        $("#course-manager").show();
        $.ajax({
            url: manageCourseInitUrl,
            Type: "post",
            data: {},
            dataType: "json",
            success: function (data) {
                var courseInfoPage = new PAGER();
                pageObjArr.push(courseInfoPage);
                courseInfoPage.initPager(1, data.courses.length, 10, 7, 'course-manager-pager', 'course-info-pager-div',
                    data.courses, CourseManager.findCourseInfoData, 0);
            }
        })
    })


    $("#show-teacher-manager").on("click", function () {
        $("#pc-menu a").removeClass("active-now");
        $(this).addClass("active-now");
        CourseManager.hideAll();
        $("#teacher-manager").show();
        $.ajax({
            url: manageTeacherInitUrl,
            Type: "post",
            data: {},
            dataType: "json",
            success: function (data) {
                var teacherInfoPage = new PAGER();
                pageObjArr.push(teacherInfoPage);
                teacherInfoPage.initPager(1, data.teachers.length, 10, 7, 'teacher-manager-pager', 'teacher-info-pager-div',
                    data.teachers, CourseManager.findTeacherInfoData, 1);
            }
        })
    })

    $("#show-user-manager").on("click", function () {
        $("#pc-menu a").removeClass("active-now");
        $(this).addClass("active-now");
        CourseManager.hideAll();
        $("#user-manager").show();
        $.ajax({
            url: manageUserInitUrl,
            Type: "post",
            data: {},
            dataType: "json",
            success: function (data) {
                var UserInfoPage = new PAGER();
                pageObjArr.push(UserInfoPage);
                UserInfoPage.initPager(1, data.users.length, 10, 7, 'user-manager-pager', 'user-info-pager-div',
                    data.users, CourseManager.findUserInfoData, 1);
            }
        })
    })


    $("body").delegate(".pick-time", "focusin", function () {
        $(this).datetimepicker({
            format: "yyyy-mm-dd hh:ii",
            autoclose: true,
            todayBtn: true,
            pickerPosition: "bottom-left"
        });
    })


    $("#sure-to-add-course").on("click", function () {
        var addCourse = new Course().initParam();
        if (addCourse.checkIsNotEmpty()) {
            $.ajax({
                url: addCourseUrl,
                type: "post",
                data: addCourse,
                dataType: "json",
                success: function () {
                    swal({
                            title: "添加成功",
                            type: "success",
                            closeOnConfirm: false
                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                window.location.reload();
                            }
                        });
                }
            })
        }
    })

    $("#sure-to-add-teacher").on("click", function () {
        var addTeacher = new Teacher().initParam();
        if (addTeacher.checkIsNotEmpty()) {
            $.ajax({
                url: addTeacherUrl,
                type: "post",
                data: addTeacher,
                dataType: "json",
                success: function () {
                    swal({
                            title: "添加成功",
                            type: "success",
                            closeOnConfirm: false
                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                window.location.reload();
                            }
                        });
                }
            })
        }
    })

    $("#sure-to-add-user").on("click", function () {
        var addUser = new User().initParam();
        if (addUser.checkIsNotEmpty()) {
            $.ajax({
                url: addUserUrl,
                type: "post",
                data: addUser,
                dataType: "json",
                success: function () {
                    swal({
                            title: "添加成功",
                            type: "success",
                            closeOnConfirm: false
                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                window.location.reload();
                            }
                        });
                }
            })
        }
    })

    $("body").on("click", ".delete-course", function () {
        var id = $(this).parent().parent().find("input").val();
        $.ajax({
            url: deleteCourseUrl,
            type: "post",
            data: {id: id},
            dataType: "json",
            success: function (data) {
                if (data.flag) {
                    swal({
                            title: "删除成功",
                            type: "success",
                            closeOnConfirm: false
                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                window.location.reload();
                            }
                        });
                }
            }
        })
    })

    $("body").on("click", ".delete-teacher", function () {
        var id = $(this).parent().parent().find("input").val();
        $.ajax({
            url: deleteTeacherUrl,
            type: "post",
            data: {id: id},
            dataType: "json",
            success: function (data) {
                if (data.flag) {
                    swal({
                            title: "删除成功",
                            type: "success",
                            closeOnConfirm: false
                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                window.location.reload();
                            }
                        });
                }
            }
        })
    })

    $("body").on("click", ".delete-user", function () {
        var id = $(this).parent().parent().find("input").val();
        $.ajax({
            url: deleteUserUrl,
            type: "post",
            data: {id: id},
            dataType: "json",
            success: function (data) {
                if (data.flag) {
                    swal({
                            title: "删除成功",
                            type: "success",
                            closeOnConfirm: false
                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                window.location.reload();
                            }
                        });
                }
            }
        })
    })
})