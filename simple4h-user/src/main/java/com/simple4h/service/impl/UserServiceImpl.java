package com.simple4h.service.impl;

import com.simple4h.feign.IProductFeign;
import com.simple4h.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Create By Simple4H
 * Date: 2019-12-03 17:35
 */
@Service("iUserService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private IProductFeign iProductFeign;


    @Override
    public String getUserInfo(String username) {

        String productName = iProductFeign.getProductName("simple4h");
        return "username is : " + username + " " + productName;
    }
}
