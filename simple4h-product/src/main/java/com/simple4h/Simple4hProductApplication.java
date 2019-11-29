package com.simple4h;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class Simple4hProductApplication {

	public static void main(String[] args) {
		SpringApplication.run(Simple4hProductApplication.class, args);
	}

}
