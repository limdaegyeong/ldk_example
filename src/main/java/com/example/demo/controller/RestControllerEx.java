package com.example.demo.controller;

import java.io.IOException;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.url.UrlComponent1;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class RestControllerEx {
	private final UrlComponent1 urlComponent1;
		
		
		
	
	@GetMapping(path = "/url")
	public String getUrlInfos() throws IOException {
		urlComponent1.printPage();
		return "ok";
	}
}
