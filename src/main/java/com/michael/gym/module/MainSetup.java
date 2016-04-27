package com.michael.gym.module;

import com.michael.gym.bean.User;
import org.nutz.dao.Dao;
import org.nutz.dao.util.Daos;
import org.nutz.ioc.Ioc;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;

/**
 * @author chejingchi
 *         创建时间:16/4/6 下午6:13
 *         项目名称:gymnasium
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.8
 * 类说明:
 */
public class MainSetup implements Setup {

    public void init(NutConfig nutConfig) {
        Ioc ioc = nutConfig.getIoc();
        Dao dao = ioc.get(Dao.class);
        Daos.createTablesInPackage(dao, "com.michael.gym", false);
        if (dao.count(User.class) == 0) {
            User user = new User();
            user.setUsername("admin");
            user.setPassword("admin");
            dao.insert(user);
        }
    }

    public void destroy(NutConfig nutConfig) {

    }
}
