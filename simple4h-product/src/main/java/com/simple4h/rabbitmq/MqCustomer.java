package com.simple4h.rabbitmq;

import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * author Create By Simple4H
 * date 2020-05-21 14:30
 */
@Component
@Slf4j
public class MqCustomer {

    @RabbitListener(bindings = @QueueBinding(
            exchange = @Exchange("Simple4H-Exchange"),
            key = "Simple4H-RoutingKey",
            value = @Queue("Simple4H-Queue")))
    public void userCustomer(String message) {
        log.error("message:{}", message);
    }
}
