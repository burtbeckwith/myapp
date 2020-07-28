package com.mycompany.myapp;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

@Controller("/")
public class HelloController {

    @Get(uri="/", produces="text/plain")
    public String index() {
        return "person woman man camera tv";
    }
}
