package org.example.controller;

import org.example.entity.Details;
import org.example.entity.Employee;
import org.example.entity.User;
import org.example.service.EmployeeService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private EmployeeService employeeService;

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
    public String saveUser(@ModelAttribute("user") User user) {

        userService.saveUser(user);

        return "redirect:/allEmployees";
    }

    @RequestMapping("/verification_user")
    public String verificationUser(@ModelAttribute("user") User user) {
        //*
        return null;
    }

    @RequestMapping("/allEmployees")
    public String showAllEmployees(Model model) {

        List<Employee> allEmployees = employeeService.getAllEmployees();
        model.addAttribute("allEmployees", allEmployees);

        return "allEmployees";
    }

    @RequestMapping("/addEmployee")
    public String addNewEmployee(Model model) {

        Employee employee = new Employee();
        model.addAttribute("employee", employee);

        Details details = new Details();
        model.addAttribute("details", details);

        employee.setDetails(details);

        return "addEmployee";
    }

    @RequestMapping("/detailsEmployee")
    public String updateEmployee(@RequestParam("employeeId") int id, Model model) {

        Employee employee = employeeService.getEmployee(id);
        model.addAttribute("employee", employee);

        return "detailsEmployee";
    }

    @RequestMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {

        employeeService.saveEmployee(employee);

        return "redirect:/allEmployees";
    }

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("employeeId") int id) {

        employeeService.deleteEmployee(id);

        return "redirect:/allEmployees";
    }
}
