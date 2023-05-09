package com.example.musiclibrary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.musiclibrary.entity.User;
import com.example.musiclibrary.repository.UserRepository;

@Service
public class UserServiceImplementation implements UserService {

    @Autowired
    private UserRepository userRepository;
	
	@Override
	public List<User> findAll() {
	    return userRepository.findAll();
	}

	@Override
	public User findById(Long id) {
	    return userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found with id: " + id));
	}

	@Override
	public User save(User user) {
	    return userRepository.save(user);
	}

	@Override
	public User update(Long id, User updatedUser) {
	    User existingUser = findById(id);
	    existingUser.setFirstName(updatedUser.getFirstName());
	    existingUser.setLastName(updatedUser.getLastName());
	    existingUser.setEmail(updatedUser.getEmail());
	    existingUser.setPassword(updatedUser.getPassword());
	    return userRepository.save(existingUser);
	}

	@Override
	public void deleteById(Long id) {
	    userRepository.deleteById(id);
	}
}
