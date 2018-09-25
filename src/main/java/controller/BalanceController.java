package controller;

import dao.UserDao;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet({"/balance"})
public class BalanceController extends HttpServlet {


    @Override
    public void init() throws ServletException {
      //  userDao = new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession sessionObject = req.getSession();
//       User us = UserDao.findUser();
        User user = (User) sessionObject.getAttribute("userName");
//        System.out.println(user.);
        req.setAttribute("pageBalance" , true);
        req.setAttribute("user", user);

        if (sessionObject.getAttribute("userName") != null) {

            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        else{
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
