package com.simple4h.service;

import com.simple4h.response.ServerResponse;

/**
 * Create By Simple4H
 * Date: 2019-12-03 04:42
 */
public interface IProductService {

    ServerResponse<String> getProductName(String name);
}
