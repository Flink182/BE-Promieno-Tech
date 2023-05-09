package com.example.musiclibrary.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.musiclibrary.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
