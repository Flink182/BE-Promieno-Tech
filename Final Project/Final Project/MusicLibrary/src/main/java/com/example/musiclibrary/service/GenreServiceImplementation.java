package com.example.musiclibrary.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.musiclibrary.entity.Genre;
import com.example.musiclibrary.repository.GenreRepository;


@Service
public class GenreServiceImplementation implements GenreService {


    @Autowired
    private GenreRepository genreRepository;

    @Override
    public List<Genre> findAll() {
        return genreRepository.findAll();
    }

    @Override
    public Genre findById(Long id) {
        return genreRepository.findById(id).orElseThrow(() -> new RuntimeException("Genre not found with id: " + id));
    }

    @Override
    public Genre save(Genre genre) {
        return genreRepository.save(genre);
    }

    @Override
    public Genre update(Long id, Genre updatedGenre) {
        Genre existingGenre = findById(id);
        existingGenre.setName(updatedGenre.getName());
        return genreRepository.save(existingGenre);
    }

    @Override
    public void deleteById(Long id) {
        genreRepository.deleteById(id);
    }   
}    