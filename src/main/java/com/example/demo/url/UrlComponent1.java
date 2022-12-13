package com.example.demo.url;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Component
@RequiredArgsConstructor
@Slf4j
public class UrlComponent1 {
	
	private final URLConnection urlConnection1;
	
	//페이지 출력하기
	public void printPage() throws IOException {
		Map<String, List<String>> headerFields = urlConnection1.getHeaderFields();
		InputStream inputStream = urlConnection1.getInputStream();
		InputStreamReader reader = new InputStreamReader(inputStream);
		
		char[] chars = new char[4096];
		reader.read(chars);
		
		while((reader.read(chars) != -1)) {
			String s = new String(chars);
			log.info("s = {}", s);
		}
	}
}