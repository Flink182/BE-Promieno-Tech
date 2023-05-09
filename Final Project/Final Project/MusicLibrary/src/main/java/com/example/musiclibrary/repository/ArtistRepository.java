package com.example.musiclibrary.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.musiclibrary.entity.Artist;

@Repository
public interface ArtistRepository extends JpaRepository<Artist, Long> {
}
