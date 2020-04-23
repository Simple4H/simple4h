package com.simple4h.service.impl;

import com.simple4h.response.ServerResponse;
import com.simple4h.service.IProductService;
import org.springframework.stereotype.Service;

/**
 * Create By Simple4H
 * Date: 2019-12-03 04:58
 */
@Service("iProductService")
public class ProductServiceImpl implements IProductService {

    @Override
    public ServerResponse<String> getProductName(String name) {
        return ServerResponse.createBySuccess("product name is " + name);
    }
}
