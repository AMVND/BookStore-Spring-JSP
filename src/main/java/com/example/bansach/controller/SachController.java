package com.example.bansach.controller;

import com.example.bansach.entity.Sach;
import com.example.bansach.service.LoginService;
import com.example.bansach.service.SachService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/sach")
@SessionAttributes("name")
public class SachController {

    @Autowired
    SachService sachService;
    @Autowired
    LoginService loginService;

    @GetMapping("/login")
    public String showLoginPage(ModelMap modelMap) {
        return "login";
    }

    @PostMapping("/login")
    public String showListPage(ModelMap modelMap, @RequestParam String name, @RequestParam String password) {
        boolean isvalidUser = loginService.validateUser(name, password);

        if (!isvalidUser) {
            modelMap.put("errorMessage", "Loi dang nhap");
            return "login";
        }
        modelMap.put("name", name);
        modelMap.put("password", password);
        return "redirect:/sach/list";
    }

    @GetMapping("/list")
    public String ListSachs(Model model) {
        List<Sach> theSachs = sachService.getSachs();
        model.addAttribute("sach", theSachs);
        return "list-sach";
    }

    @GetMapping("/add")
    public String addSach(Model model) {
        Sach theSach = new Sach();
        model.addAttribute("sach", theSach);
        return "sach-form";
    }

    @PostMapping("/saveSach")
    public String saveSach(@ModelAttribute("sach") Sach theSach) {
        sachService.saveSach(theSach);
        return "redirect:/sach/list";
    }

    @GetMapping("/update")
    public String updateSach(@RequestParam("masach") int theId, Model model) {
        Sach theSach = sachService.getSach(theId);
        model.addAttribute("sach", theSach);
        return "sach-form";
    }

    @GetMapping("/delete")
    public String deleteSach(@RequestParam("masach") int theId, Model model) {
        sachService.deleteSach(theId);
        return "redirect:/sach/list";
    }
}
