package com.example.musiclibrary.service;

import com.example.musiclibrary.repository.AlbumRepository;
import jakarta.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.musiclibrary.entity.Album;

@Service
public class AlbumServiceImplementation implements AlbumService {

    @Autowired
    private AlbumRepository albumRepository;

    @Override
    public List<Album> findAll() {
        return albumRepository.findAll();
    }

    @Override
    public Album findById(Long id) {
        return albumRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Ablum not found with id: " + id));
    }

    @Override
    public Album save(Album album) {
        return albumRepository.save(album);
    }

    @Override
    public Album update(Long id, Album album) {
        Optional<Album> existingAlbum = albumRepository.findById(id);

        if (existingAlbum.isPresent()) {
            album.setId(id);
            return albumRepository.save(album);
        } else {
            throw new EntityNotFoundException("Album not found with id: " + id);
        }
    }

    @Override
    public void deleteById(Long id) {
        if (albumRepository.existsById(id)) {
            albumRepository.deleteById(id);
        } else {
            throw new EntityNotFoundException("Album not found with id: " + id);
        }
    }
}