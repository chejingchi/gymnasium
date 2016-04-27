package com.michael.gym.module.gymManager;

import com.michael.gym.bean.Course;
import com.michael.gym.bean.Teacher;
import com.michael.gym.bean.User;
import org.nutz.json.Json;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.annotation.*;
import org.nutz.mvc.filter.CheckSession;
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
@Filters(@By(type = CheckSession.class, args = {"me", "/login/init"}))
@Fail("http:500")
public class GymManagerModule extends BaseModule {

    Logger logger = LoggerFactory.getLogger(GymManagerModule.class);


    @At("/init")
    @Ok("jsp:jsp.show-manager")
    public Object init() {
        List<Course> courses = dao.query(Course.class, null);
        List<Teacher> teachers = dao.query(Teacher.class, null);
        return new NutMap().setv("courses", Json.toJson(courses)).setv("teachers", teachers);
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
    public Object manageUserInit() {
        List<User> users = dao.query(User.class, null);
        return new NutMap().setv("users", users);
    }

    @At
    public Object addCourse(@Param("..") Course course) {
        insertObj(course);
        return null;
    }

    @At
    public Object addTeacher(@Param("..") Teacher teacher) {
        insertObj(teacher);
        return null;
    }

    @At
    public Object addUser(@Param("..") User user) {
        insertObj(user);
        return null;
    }

    @At
    public Object deleteCourse(@Param("..") Course course) {
        return deleteObject(course);
    }

    @At
    public Object deleteTeacher(@Param("..") Teacher teacher) {
        return deleteObject(teacher);
    }

    @At
    public Object deleteUser(@Param("..") User user) {
        return deleteObject(user);
    }

    @At
    public Object createVipCardNo() {
        int vipCardNo = (int) (1 + Math.random() * 100000);
        return new NutMap().setv("vipCardNo", vipCardNo + "");
    }

    private Object deleteObject(Object obj) {
        int flag = 0;
        if (obj != null) {
            flag = dao.delete(obj);
        }
        return new NutMap().setv("flag", flag > 0);
    }

    private void insertObj(Object obj) {
        if (obj != null) {
            dao.insert(obj);
        }
    }
}
