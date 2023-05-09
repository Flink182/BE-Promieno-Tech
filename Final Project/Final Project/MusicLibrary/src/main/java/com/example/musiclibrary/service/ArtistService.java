package com.example.musiclibrary.service;

import com.example.musiclibrary.entity.Artist;
import java.util.List;

public interface ArtistService {

    List<Artist> findAll();

    Artist findById(Long id);

    Artist save(Artist artist);

    Artist update(Long id, Artist artist);

    void deleteById(Long id);
}