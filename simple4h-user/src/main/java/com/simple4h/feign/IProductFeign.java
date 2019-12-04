package com.simple4h.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Create By Simple4H
 * Date: 2019-12-03 08:30
 */
@FeignClient(name = "simple4h-product")
public interface IProductFeign {

    @GetMapping("/product/get_name")
    String getProductName(@RequestParam("name") String name);
}
