package com.iss.okair;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.HttpMessageConverters;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter4;

@Configuration
@SpringBootApplication
@MapperScan("com.iss.okair.db.mapper")
public class OkAirApplication {

	public static void main(String[] args) {
		SpringApplication.run(OkAirApplication.class, args);
	}
	
	// 集成FastJson相关功能
	@Bean
	public HttpMessageConverters fastJsonHttpMessageConverters() {
		FastJsonHttpMessageConverter4 fastJsonHttpMessageConvert = new FastJsonHttpMessageConverter4();
		List<MediaType> mediaTypes = new ArrayList<MediaType>();
		mediaTypes.add(MediaType.APPLICATION_JSON_UTF8);
		fastJsonHttpMessageConvert.setSupportedMediaTypes(mediaTypes);
		FastJsonConfig config = new FastJsonConfig();
		config.setDateFormat("YYYY-MM-dd HH:mm:ss");
		config.setSerializerFeatures(SerializerFeature.PrettyFormat);
		
		fastJsonHttpMessageConvert.setFastJsonConfig(config);
		
		return new HttpMessageConverters(fastJsonHttpMessageConvert);
	}
	
	private CorsConfiguration buildConfig() {
		CorsConfiguration corsConfiguration = new CorsConfiguration();
		corsConfiguration.addAllowedHeader("*");
		corsConfiguration.addAllowedMethod("*");
		corsConfiguration.addAllowedOrigin("*");
		return corsConfiguration;
	}
	
	@Bean
	public CorsFilter corsFilter() {
		UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", buildConfig());
		return new CorsFilter(source);
	}
}
