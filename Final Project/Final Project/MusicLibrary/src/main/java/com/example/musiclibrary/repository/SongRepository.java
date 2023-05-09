package com.example.musiclibrary.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.musiclibrary.entity.Song;

@Repository
public interface SongRepository extends JpaRepository<Song, Long> {
}
