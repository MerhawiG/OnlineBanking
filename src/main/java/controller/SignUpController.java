package controller;

import model.User;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/signup")
public class SignUpController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("uyuyuydfghjkl;");
//        HttpSession sessionObject = req.getSession();
//        User user = (User) sessionObject.getAttribute("userName");

       // req.setAttribute("aboutus", true);
        RequestDispatcher view = req.getRequestDispatcher("signup.jsp");
        view.forward(req, resp);

    }
}
