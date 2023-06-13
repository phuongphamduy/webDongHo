package com.poly;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

@Configuration
public class tilesConfig {

//	@Bean("viewResolver")
//	public ViewResolver getViewResolver() {
//		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
//		resolver.setViewClass(TilesView.class);
//		return resolver;
//	}
//	@Bean()
//	public TilesConfigurer tilesConfigurer() {
//		TilesConfigurer configurer = new TilesConfigurer();
//		configurer.setDefinitions("/webapp/views/Layout/tiles.xml");
//		return configurer;
//	}
}
