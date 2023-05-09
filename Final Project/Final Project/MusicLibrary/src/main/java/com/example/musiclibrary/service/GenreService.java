package com.example.musiclibrary.service;

import com.example.musiclibrary.entity.Genre;
import java.util.List;

public interface GenreService {

    List<Genre> findAll();

    Genre findById(Long id);

    Genre save(Genre genre);

    Genre update(Long id, Genre genre);

    void deleteById(Long id);
}
