package com.example.demo.config;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class UrlConnectionConfig {
	@Bean
	public URLConnection UrlConnection1() throws IOException {
		//1. URL 객체 생성
		URL url = new URL("https://api.corona-19.kr/korea/beta/?serviceKey=pOMHLAYibztDGc1TFfyurv7BJPlNUK49I");
		
		//2. URL에서 URL Connection 객체 얻기
		URLConnection urlCon = url.openConnection();
	
		//3. 연결 정보 set
		urlCon.setConnectTimeout(5000);
		urlCon.setReadTimeout(10000);
		
		return urlCon;
	}
}
