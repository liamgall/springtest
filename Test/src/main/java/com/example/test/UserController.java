package com.example.test;

import java.util.Map;
 
import javax.validation.Valid;
 
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String viewLogin(Map<String, Object> model) {
        User user = new User();
        model.put("userForm", user);
        return "LoginForm";
    }
 
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String doLogin(@Valid @ModelAttribute("userForm") User userForm,
            BindingResult result, Map<String, Object> model) {
 
        if (result.hasErrors()) {
            return "LoginForm";
        }
 
        return "LoginSuccess";
    }
}