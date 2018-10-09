package per.zqx.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import per.zqx.domain.Emp;
import per.zqx.service.IEmpService;

import java.util.List;

@Controller
public class EmpController {

    @Autowired
    private IEmpService service;

    @RequestMapping("/emp-list")
    public ModelAndView listEmp() {
        List<Emp> employees = service.listE();
        ModelAndView mv = new ModelAndView();
        mv.addObject("employees", employees);
        System.out.print("我进来了");
        mv.setViewName("list");
        return mv;
    }

    @RequestMapping("/123")
    public String list2() {
        return "list";
    }

}
