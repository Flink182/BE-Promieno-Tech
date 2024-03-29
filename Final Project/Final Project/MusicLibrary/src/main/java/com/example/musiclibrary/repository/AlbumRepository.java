package com.example.musiclibrary.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.musiclibrary.entity.Album;

@Repository
public interface AlbumRepository extends JpaRepository<Album, Long> {
}
