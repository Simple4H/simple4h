package com.simple4h.controller;

import com.simple4h.feign.IProductFeign;
import com.simple4h.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Create By Simple4H
 * Date: 2019-12-03 10:11
 */
@RestController
@RequestMapping("/user/")
public class UserController {

    @Autowired
    private IUserService iUserService;

    @RequestMapping("get_info")
    public String getInfo(String username) {
        return iUserService.getUserInfo(username);
    }
}
