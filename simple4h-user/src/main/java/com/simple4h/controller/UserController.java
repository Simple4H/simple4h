package com.simple4h.controller;

import com.simple4h.response.ServerResponse;
import com.simple4h.service.IUserService;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @GetMapping("get_info")
    public ServerResponse<String> getInfo(String username) {
        return iUserService.getUserInfo(username);
    }

    @GetMapping("send_user")
    public ServerResponse<String> sendUser2() {
        String exchange = "Simple4H-Exchange";
        String routingKey = "Simple4H-RoutingKey";
        rabbitTemplate.convertAndSend(exchange, routingKey, "Hello, Simple4H");
        return ServerResponse.createBySuccess();
    }



}
