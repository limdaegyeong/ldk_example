package com.example.demo.controller;

import java.io.IOException;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.httpclient.HttpClient;
import com.example.demo.url.UrlConnection1;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class RestControllerEx {
	private final UrlConnection1 urlComponent1 = new UrlConnection1();
	private final HttpClient httpclient = new HttpClient();	
		
		
	
	@GetMapping(path = "/url")
	public String getUrlInfos() throws IOException {
		UrlConnection1.main(null);
		log.info("###UrlConnection1.main() : "+UrlConnection1.main(null));
		return UrlConnection1.main(null);
	}
	
	@GetMapping(path = "/client")
	public String getClientInfos() throws Exception {
		
		log.info("###HttpClient.main(null) : "+HttpClient.main(null));
		return httpclient.main(null);
	}
	
	
}
