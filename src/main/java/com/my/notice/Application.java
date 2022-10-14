package com.my.notice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.my.notice.dao.map")
public class Application {
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}