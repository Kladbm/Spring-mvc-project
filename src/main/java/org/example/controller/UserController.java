package org.example.controller;

import jakarta.validation.Valid;
import org.example.entity.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/sign_in")
    public String signInForm(Model model) {

        User user = new User();
        model.addAttribute("user", user);

        return "signInForm";
    }

    @RequestMapping("/sign_up")
    public String signUpForm(Model model) {

        User user = new User();
        model.addAttribute("user", user);

        return "signUpForm";
    }

    @RequestMapping("/save_user")
    public String saveUser(@Valid @ModelAttribute("user") User user
            , BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "signUpForm";
        } else {

            userService.saveUser(user);

            return "redirect:/allEmployees";
        }
    }

    @RequestMapping("/verification_user")
    public String verificationUser(@ModelAttribute("user") User user) {
        //*
        return null;
    }
}
