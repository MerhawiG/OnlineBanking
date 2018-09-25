package controller;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dao.UserDao;
import model.Account;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/newUser"})
public class NewUserController extends HttpServlet {
    //ObjectMapper mapper = new ObjectMapper();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        //double balance =50;
         double balance = Double.parseDouble(req.getParameter("name"));
        User user = new User();
        user.setAccount(new Account(user.getId(),balance));
        user.setUsername(name);
        user.setPassword(password);
        user.setEmail(email);
       // String id = user.getId();

       // UserDao.addUser(user);
        System.out.println("this is inside newuser");
        boolean b = false;
        req.setAttribute("pageTypeIndex", true);
        List<User> users = UserDao.getAllUsers();

        for (User u: users){
            if(u.getUsername().equals(name)){
                b= true;
                break;
            }
        }
        UserDao.addUser(user);
        if(!b){
            System.out.println("this is inside newuser home");

            resp.sendRedirect("/home");

        }else{
            System.out.println("this is inside newuser signup");

            RequestDispatcher view = req.getRequestDispatcher("signup.jsp");
            view.forward(req, resp);
        }

    }
}
