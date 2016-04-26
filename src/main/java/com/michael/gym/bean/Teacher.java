package com.michael.gym.bean;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

/**
 * @author chejingchi
 *         创建时间:16/4/21 下午6:01
 *         项目名称:gymnasium
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.7
 * 类说明:
 */
@Table("t_teacher")
public class Teacher {
    @Id
    private int id;

    @Column
    private String teacherCode;

    @Column
    private String teacherName;

    @Column
    private String CoursesCode;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTeacherCode() {
        return teacherCode;
    }

    public void setTeacherCode(String teacherCode) {
        this.teacherCode = teacherCode;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getCoursesCode() {
        return CoursesCode;
    }

    public void setCoursesCode(String coursesCode) {
        CoursesCode = coursesCode;
    }
}
