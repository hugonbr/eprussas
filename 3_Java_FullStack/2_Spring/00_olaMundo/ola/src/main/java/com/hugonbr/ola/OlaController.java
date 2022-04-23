package com.hugonbr.ola;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OlaController {
    
    @RequestMapping("/ola")
    public String Ola() {
        return "Olá Mundo, soma(2, 2) = " + soma(2,10);
    }

    public int soma(int a, int b){
        return a+b;
    }
}
