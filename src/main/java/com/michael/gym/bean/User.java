package com.michael.gym.bean;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;

/**
 * @author chejingchi
 *         创建时间:16/4/6 下午7:14
 *         项目名称:gymnasium
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.7
 * 类说明:
 */
@Table("t_user")
public class User {
    @Id
    private int id;

    @Name
    private String name;

    @Column
    private String username;

    @Column("password")
    private String password;

    @Column
    private int sex;

    @Column("vipCardNo")
    private String vipCardNo;


    @Column("telephone")
    private String telephone;

    @Column
    private String anotherTphone;

    @Column
    private String email;

    @Column
    private String booksId;

    private String booksName;

    @Column
    private String qq;
}
