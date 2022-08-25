package com.java.kubernetes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@SpringBootApplication
@RestController
public class KubernetesApplication {

	@GetMapping(value = "/")
    public String helloWorld() {
        String response = "<H1> Hello World V2   </H1>" + new Date();
        return response;
    }

	public static void main(String[] args) {
		SpringApplication.run(KubernetesApplication.class, args);
	}

}
