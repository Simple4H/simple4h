package com.simple4h.service.impl;

import com.simple4h.service.IProductService;
import org.springframework.stereotype.Service;

/**
 * Create By Simple4H
 * Date: 2019-12-03 04:58
 */
@Service("iProductService")
public class ProductServiceImpl implements IProductService {

    @Override
    public String getProductName(String name) {
        return "product name is " + name;
    }
}
