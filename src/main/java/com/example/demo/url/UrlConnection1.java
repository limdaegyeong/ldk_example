package com.example.demo.url;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
public class UrlConnection1 {
		
	public static String main(String[] args) throws IOException{
		URL url = new URL("https://api.corona-19.kr/korea/beta/?serviceKey=pOMHLAYibztDGc1TFfyurv7BJPlNUK49I");
	
		URLConnection uc = url.openConnection();
	
		uc.setDoOutput(true);
	
		OutputStreamWriter ow = new OutputStreamWriter(uc.getOutputStream());
	
		ow.close();
	
		BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));
		String str = "";
		String s = "";
	
		while((str=in.readLine())!=null) {
			s += str;
		}
		log.info("##data s : "+s);
		in.close();
		return s;
	}
	
}


