package com.simple4h.entity;

import lombok.Data;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Create By Simple4H
 * Date: 2019-12-05 31:59
 */
@Data
public class FilterEntity {

    //过滤器对应的Name
    private String name;

    //路由规则
    private Map<String, String> args = new LinkedHashMap<>();
}
