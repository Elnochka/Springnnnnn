package example.controller;


import example.dao.StringsDao;
import example.entity.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/strings")
public class StringsController {
//    @Autowired
    StringsDao stringsDao = new StringsDao();
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView modelAndView = new ModelAndView("strings_page");
        List<Strings> list = stringsDao.getStrings();
        modelAndView.addObject("listStrings", list);
        return modelAndView;
    }
}
