package com.michael.gym.module.gymManager;

import com.michael.gym.bean.Course;
import com.michael.gym.bean.Teacher;
import org.nutz.json.Json;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * @author chejingchi
 *         创建时间:16/4/6 下午6:39
 *         项目名称:gymnasium
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.7
 * 类说明:
 */
@At("/gymManager")
@Ok("json:{locked:'password',ignoreNull:true}")
@Fail("http:500")
public class GymManagerModule extends BaseModule {

    Logger logger = LoggerFactory.getLogger(GymManagerModule.class);


    @At("/init")
    @Ok("jsp:jsp.show-manager")
    public Object init() {
        List<Course> courses = dao.query(Course.class, null);
        List<Teacher> teachers = dao.query(Teacher.class, null);
        return new NutMap().setv("courses", Json.toJson(courses)).setv("teachers",teachers);
    }

    @At
    public Object manageCourseInit() {
        List<Course> courses = dao.query(Course.class, null);
        setTeachersName(courses);
        return new NutMap().setv("courses", courses);
    }

    @At
    public Object manageTeacherInit() {
        List<Teacher> teachers = dao.query(Teacher.class, null);
        setCoursesNameInModule(teachers);
        return new NutMap().setv("teachers", teachers);
    }

    @At
    public Object addCourse(@Param("..") Course course) {
        if (course != null) {
            dao.insert(course);
        }
        return null;
    }

    @At
    public Object addTeacher(@Param("..") Teacher teacher){
        if(teacher != null){
            dao.insert(teacher);
        }
        return null;
    }

    @At
    public Object deleteCourse(@Param("..") Course course) {
        int flag = 0;
        if (course != null) {
            flag = dao.delete(course);
        }
        return new NutMap().setv("flag", flag > 0);
    }

    @At
    public Object deleteTeacher(@Param("..") Teacher teacher) {
        int flag = 0;
        if (teacher != null) {
            flag = dao.delete(teacher);
        }
        return new NutMap().setv("flag", flag > 0);
    }
}
