package dao;

import model.Account;
import model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UserDao {

    private static List<User> users;
    static {
        users = new ArrayList<>();



        User user = new User();
        user.setUsername("mera");
        user.setPassword("123");
        user.setAccount(new Account(user.getId(),10000));
        users.add(user);

        User user2 = new User();
        user2.setUsername("elsa");
        user2.setPassword("123");
        user2.setAccount(new Account(user2.getId(),20000));
        users.add(user2);


       User user1 = new User();
        user1.setUsername("yahia");
        user1.setPassword("123");
        user1.setAccount(new Account(user1.getId(),200));
        users.add(user1);


;
        User user4 = new User();
        user4.setUsername("henok");
        user4.setPassword("123");
        user4.setAccount(new Account(user4.getId(),1000));
        users.add(user4);




    }
    public static void createUser(User user){
        users.add(user);
    }

    public static Optional<User> findUser(String username){
        return users.stream()
                .filter(user -> user.getUsername().equalsIgnoreCase(username))
                .findAny();
    }

    public static Optional<User> findUserByPwdAndUsername(String username, String password){
        return users.stream()
                .filter(user -> user.getUsername().equalsIgnoreCase(username) && user.getPassword().equals(password))
                .findAny();

    }

    public static List<User> getAllUsers(){

        return users;
    }

    public static void addUser(User user){

        users.add(user);
    }
}
