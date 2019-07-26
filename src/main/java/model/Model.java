package model;

import entity.User;

import java.util.ArrayList;
import java.util.List;

public class Model {

    private static Model instance = new Model();
    private List<User> list;

    private Model() {
        list = new ArrayList<>();
    }

    public static Model getInstance() {
        return instance;
    }

    public void add(User user) {
        list.add(user);
    }

    public List<User> getList() {
        return list;
    }
}
