package com.simple4h.service;

import com.simple4h.response.ServerResponse;

/**
 * Create By Simple4H
 * Date: 2019-12-03 17:18
 */
public interface IUserService {

    ServerResponse<String> getUserInfo(String username);
}
