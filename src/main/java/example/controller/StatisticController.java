package example.controller;


import example.dao.StatisticDao;
import example.entity.Statistic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/statistic")
public class StatisticController {
//    @Autowired
    StatisticDao statisticDao = new StatisticDao();
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView modelAndView = new ModelAndView("statistic_page");
        List<Statistic> list = statisticDao.getStatistic();
        modelAndView.addObject("listStatistic", list);
        return modelAndView;
    }
}
