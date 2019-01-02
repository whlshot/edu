package com.ken.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * @author yhq
 * @date 2018/12/24
 */
@Configuration
@EnableWebMvc
@ComponentScan("com.ken")
public class EduConfiguration {

}
