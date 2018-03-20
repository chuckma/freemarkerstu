package com.test.sbootFreemarker;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HelloController {

    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView mv=new ModelAndView("index");//模板文件的名称，不需要指定后缀
        mv.addObject("key","hello freemaker");
        return mv;
    }
}