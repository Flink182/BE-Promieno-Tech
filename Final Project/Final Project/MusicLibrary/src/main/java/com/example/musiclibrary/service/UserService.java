package com.example.musiclibrary.service;

import java.util.List;
import com.example.musiclibrary.entity.User;

public interface UserService {

    List<User> findAll();

    User findById(Long id);

    User save(User user);

    User update(Long id, User user);

    void deleteById(Long id);
}
