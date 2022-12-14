package com.example.demo.httpclient;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class HttpClient {
	
    public static String main(String[] args) throws Exception {
        // Get 전송방식으로 요청할것 이므로 HttpGet 클래스를 사용합니다.
        // Post 전송방식을 사용시 HttpPost 클래스를 사용..
        HttpGet httpGet = new HttpGet("https://api.corona-19.kr/korea/beta/?serviceKey=pOMHLAYibztDGc1TFfyurv7BJPlNUK49I");
        // 웹 서버에 페이지를 요청해 응답값을 받습니다.
        DefaultHttpClient httpClient = new DefaultHttpClient();
        HttpResponse response = httpClient.execute(httpGet);
        HttpEntity entity = response.getEntity();
        BufferedReader br = null;      
        String line = null;

        String s = "";
        
        try {
            // 응답 페이지 읽기
            br = new BufferedReader(new InputStreamReader(entity.getContent()));
            while((line = br.readLine()) != null) {
            	s += line;

            }          
        } finally {
            if(br != null) try { br.close(); } catch(Exception e) {}
        }
        httpClient.getConnectionManager().shutdown();
        
        System.out.println("##s : "+s);
        return s;
    }

}





