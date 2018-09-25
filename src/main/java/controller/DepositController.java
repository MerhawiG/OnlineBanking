package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import dao.UserDao;


import model.User;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet({"/deposit"})
public class DepositController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession sessionObject = req.getSession();
//        User user = (User) sessionObject.getAttribute("userName");
//
        req.setAttribute("pageDeposit" , true);
       // req.setAttribute("user", user);
        if (sessionObject.getAttribute("userName") != null) {

            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        else{
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession sessionObject = req.getSession();
        ObjectMapper mapper = new ObjectMapper();
        User user = (User) sessionObject.getAttribute("userName");
        double newBalance =  Double.parseDouble(req.getParameter("amount"));
        if(newBalance>0) {
            user.getAccount().deposit(newBalance);
        }

        resp.setContentType("application/json;charset=UTF-8");

        ServletOutputStream out = resp.getOutputStream();

        List<User> users = UserDao.getAllUsers();

        //JsonConverter converter = new JsonConverter();
        String output = mapper.writeValueAsString(user);//converter.convertToJson(user);

        out.print(output);

    }
}
