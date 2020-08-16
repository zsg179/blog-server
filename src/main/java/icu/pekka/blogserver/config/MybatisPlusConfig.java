package icu.pekka.blogserver.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Auther :朱树广
 * @Date :2020/8/9
 * @Description :icu.pekka.blogserver.config
 * @Version :1.0
 */
@Configuration
public class MybatisPlusConfig {

    /**
     *   mybatis-plus分页插件
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor page = new PaginationInterceptor();
        return page;
    }
}
