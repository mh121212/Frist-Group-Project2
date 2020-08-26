package com.ytc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ytc.mapper")
public class Springboot11Application {

    public static void main(String[] args) {
        SpringApplication.run(Springboot11Application.class, args);
    }

}