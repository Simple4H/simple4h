package com.simple4h.controller;

import com.simple4h.response.ServerResponse;
import com.simple4h.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Create By Simple4H
 * Date: 2019-12-03 04:05
 */
@RestController
@RequestMapping("/product/")
public class ProductController {

    @Autowired
    private IProductService iProductService;

    @GetMapping("get_name")
    public ServerResponse<String> getProductName(String name) {
        return iProductService.getProductName(name);
    }
}
