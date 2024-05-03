package esc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import esc.dao.ManagerDAO;
import esc.vo.Reservation;
import esc.vo.UserStatics;




@RestController
public class ESCRestController {
   @Autowired
   ManagerDAO dao;
   
   @RequestMapping(value = "/date_list", produces = "application/json")
   public @ResponseBody List<Reservation> getDateList(@RequestParam("reservation_date") String date) throws Exception {
       return dao.getDateList(date);
   }
   
   @RequestMapping(value = "/month_list", produces = "application/json")
   public @ResponseBody List<Reservation> getMonthList(@RequestParam("month") int month) throws Exception {
       return dao.getMonthList(month);
   }
   
   @RequestMapping(value = "/getTotalStudyRank", produces = "application/json")
   public @ResponseBody UserStatics getTotalStudyRank(@RequestParam("userNo") String userNo) throws Exception {
       return dao.getStudyStatsByUserNo(userNo);
   }
   
}