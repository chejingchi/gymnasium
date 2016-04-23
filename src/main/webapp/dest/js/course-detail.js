/**
 * Created by chejingchi on 16/4/21.
 */
$(function () {
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
                    dataSpace += '</tr>';
                }
            }
            dataSpace += '</table></div>';
            $("#course-info-pager-div").html(dataSpace);
        }
    }


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

    $("#show-course-manager").on("click", function () {
        $("#pc-menu a").removeClass("active-now");
        $(this).addClass("active-now");
        $("#calendar").hide();
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

    $("body").delegate(".pick-time", "focusin", function () {
        $(this).datetimepicker({
            format: "dd MM yyyy - hh:ii",
            autoclose: true,
            todayBtn: true,
            pickerPosition: "bottom-left"
        });
    })

})