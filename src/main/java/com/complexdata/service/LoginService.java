package com.complexdata.service;

import com.complexdata.model.User;



public interface LoginService {
    /**
     * 检查用户名，密码登录
     * 密码需要使用 md5
     * @param user
     * @return
     */
    public boolean userLogin(User user);

    /**
     * 用户注册功能
     * 密码需要使用md5进行加密
     * @param user
     * @return
     */
    public boolean userRegister(User user);
}
