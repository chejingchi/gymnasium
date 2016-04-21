package com.michael.gym.module.gymManager;

import com.google.common.collect.Lists;
import com.michael.gym.bean.Course;
import com.michael.gym.bean.Teacher;
import org.apache.commons.lang3.StringUtils;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;

import java.util.List;

/**
 * @author chejingchi
 *         创建时间:16/4/6 下午7:07
 *         项目名称:gymnasium
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.7
 * 类说明:
 */
@IocBean
public class BaseModule {
    @Inject
    protected Dao dao;

    protected void setTeachersName(Course c) {
        String teachersCode = c.getTeachersCode();
        String teachersName = "";
        List<String> codeList = stringToList(teachersCode);
        for (String code : codeList) {
            Teacher t = dao.fetch(Teacher.class, Cnd.where("id", "=", code));
            teachersName += t.getTeacherName();
        }
        c.setTeachersName(teachersName);
    }

    private List<String> stringToList(String inputStr) {
        List<String> listStr = Lists.newArrayList();
        String[] arrayStr = StringUtils.split(inputStr, ",");
        if (StringUtils.isNotBlank(inputStr)) {
            for (String str : arrayStr) {
                if (StringUtils.isNotBlank(str)) {
                    listStr.add(str);
                }
            }
        }
        return listStr;
    }
}
