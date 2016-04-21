package com.michael.gym.module.gymManager;

import com.michael.gym.bean.Course;
import org.nutz.json.Json;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
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
        for (Course c : courses) {
            setTeachersName(c);
        }
        return new NutMap().setv("courses", Json.toJson(courses));
    }
}
