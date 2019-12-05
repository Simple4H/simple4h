package com.simple4h.entity;

import lombok.Data;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Create By Simple4H
 * Date: 2019-12-05 31:33
 */
@Data
public class PredicateEntity {

    //断言对应的Name
    private String name;

    //断言规则
    private Map<String, String> args = new LinkedHashMap<>();
}
