package com.jp.controller;

import com.jp.bean.Jop;

import com.jp.service.JopSerivece;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class JopController {
    @Resource(name = "JopService")
    private JopSerivece jopSerivece;
    @RequestMapping("selectAlljop")
    public  String selectAll(HttpServletRequest request,HttpServletResponse response) throws Exception {
        List<Jop> jops = jopSerivece.selectAll();
        request.setAttribute("jops",jops);
        return "main";
    }
    @RequestMapping("insert")
    public String insert(HttpServletRequest request ,HttpServletResponse response) {
        return "insert";
    }
    @RequestMapping("add")
    public String add(Jop jop,HttpServletRequest request ,HttpServletResponse response) throws Exception {
        jopSerivece.insert(jop);
        return selectAll(request,response);
    }
    @RequestMapping("delete")
    public  String delete(Integer deleteid,HttpServletRequest request ,HttpServletResponse response) throws Exception{
        jopSerivece.deleteByPrimaryKey(deleteid);
       return  selectAll(request,response);
    }
    @RequestMapping("update")
    public String update(Jop jop,HttpServletRequest request,HttpServletResponse response) throws Exception {
        jopSerivece.update(jop);
        return selectAll(request,response);
    }
    @RequestMapping("toupdatepage")
    public String toupdatePage(Integer id,String name, HttpServletRequest request) {
        request.setAttribute("id",id);
        request.setAttribute("name",name);
        return "update" ;
    }
 }
