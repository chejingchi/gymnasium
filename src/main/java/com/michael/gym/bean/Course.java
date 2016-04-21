package com.michael.gym.bean;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

import java.util.Date;

/**
 * @author chejingchi
 *         创建时间:16/4/21 下午3:37
 *         项目名称:gymnasium
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.7
 * 类说明:
 */
@Table("t_course")
public class Course {
    @Id
    private int id;
    
    @Column
    private String title;

    @Column
    private Date start;

    @Column
    private Date end;

    @Column
    private String teachersCode;

    private String teachersName;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public String getTeachersCode() {
        return teachersCode;
    }

    public void setTeachersCode(String teachersCode) {
        this.teachersCode = teachersCode;
    }

    public String getTeachersName() {
        return teachersName;
    }

    public void setTeachersName(String teachersName) {
        this.teachersName = teachersName;
    }
}
