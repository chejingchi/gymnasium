package com.michael.gym.module.gymManager;

import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;

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
}
