package controller;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/aboutus")
public class AboutUs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession sessionObject = req.getSession();
        User user = (User) sessionObject.getAttribute("userName");

        req.setAttribute("aboutus", true);
        req.setAttribute("user", user);

        req.getRequestDispatcher("index.jsp").forward(req, resp);

    }
}
