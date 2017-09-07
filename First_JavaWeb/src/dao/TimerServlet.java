package dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.util.Date;

@WebServlet(urlPatterns = "/timerservlet")
//@WebServlet(loadOnStartup = 1,urlPatterns = "/timerservlet")
public class TimerServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
        Timer timer = new Timer(1000, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.out.println(new Date());
            }
        });
        timer.start();
    }
}
