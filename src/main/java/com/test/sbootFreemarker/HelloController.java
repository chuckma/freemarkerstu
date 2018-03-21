package com.test.sbootFreemarker;

import com.test.sbootFreemarker.domain.User;
import com.test.sbootFreemarker.util.SortMethod;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@RestController
public class HelloController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("index");//模板文件的名称，不需要指定后缀
        mv.addObject("intVar", 1012212);
        mv.addObject("longVar", 10000L);
        mv.addObject("strinVar", "字符串");
        mv.addObject("doubleVar", 3.45d);
        mv.addObject("booleanVar", true);
        mv.addObject("dateVar", new Date());
        mv.addObject("nullVar", null);


        User user = new User();
        user.setUserName("张三2131231");
        mv.addObject("user", user);

        List<String> list = new ArrayList<String>();
        list.add("Java");
        list.add("python");
        list.add("nodejs");
        mv.addObject("list", list);

        Map<String, String> map = new HashMap<String, String>();
        map.put("idea","idea");
        map.put("eclipse", "eclipse");
        mv.addObject("map", map);
        mv.addObject("sort_int", new SortMethod());
        return mv;
    }
//
//
//    public static List getList() {
//        List<String> list = new ArrayList<String>();
//        for (int i = 0; i < 10; i++) {
//            list.add(String.valueOf(i));
//        }
//        return list;
//    }

}