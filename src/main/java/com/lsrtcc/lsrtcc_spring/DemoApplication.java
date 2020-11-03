package com.lsrtcc.lsrtcc_spring;

import javax.servlet.Filter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.filter.CharacterEncodingFilter;

@SpringBootApplication
@EnableSpringDataWebSupport
@EnableCaching
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@Bean
	public Filter getCharacterEncodingFilter() {

		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();

		encodingFilter.setEncoding("UTF-8");
		encodingFilter.setForceEncoding(true);

		return encodingFilter;

	}

	@Bean
	public PasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}

}
