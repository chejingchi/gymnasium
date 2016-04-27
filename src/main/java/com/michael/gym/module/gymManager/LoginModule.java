package com.michael.gym.module.gymManager;

import com.michael.gym.bean.User;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.*;
import org.nutz.mvc.filter.CheckSession;

import javax.servlet.http.HttpSession;

/**
 * @author chejingchi
 *         创建时间:16/4/28 上午12:14
 *         项目名称:gymnasium
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.7
 * 类说明:
 */
@At("/login")
@IocBean
@Ok("json:{locked:'password',ignoreNull:true}")
@Filters(@By(type = CheckSession.class, args = {"me", "/login/init"}))
@Fail("http:500")
public class LoginModule extends BaseModule {
    @At
    @Filters()
    @Ok("jsp:jsp.login")
    public Object init() {
        return null;
    }

    @At
    @Filters()
    public boolean sign(@Param("username") String username, String password, HttpSession session) {
        if ("admin".equals(username)) {
            User user = dao.fetch(User.class,
                    Cnd.where("username", "=", username).and("password", "=", password));
            if (null == user) {
                return false;
            } else {
                session.setAttribute("me", user.getId());
                return true;
            }
        } else {
            return false;
        }
    }

    @At
    @Ok(">>:/SignOut")
    public void signOut(HttpSession session) {
        session.invalidate();
    }

}
