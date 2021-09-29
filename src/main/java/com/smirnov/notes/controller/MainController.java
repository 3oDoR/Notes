package com.smirnov.notes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String redirect() {
        return "task_list";
    }

    @GetMapping("/journal")
    public String journal() {
        return "journal";
    }

    @GetMapping("/personal_home")
    public String personal_home() {
        return "personal_home";
    }

    @GetMapping("/quick_note")
    public String quick_note() {
        return "quick_note";
    }

    @GetMapping("/reading_list")
    public String reading_list() {
        return "reading_list";
    }








}