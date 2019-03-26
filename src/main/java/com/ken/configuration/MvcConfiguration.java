package com.ken.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * @author yhq
 * @date 2019/3/26
 */
@Configuration
@EnableWebMvc
@ComponentScan("com.ken")
public class MvcConfiguration {

    //@Bean
    //public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
    //    return new PropertySourcesPlaceholderConfigurer();
    //}

}
