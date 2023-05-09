package com.example.musiclibrary.service;

import com.example.musiclibrary.repository.ArtistRepository;
import jakarta.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.musiclibrary.entity.Artist;

@Service
public class ArtistServiceImplementation implements ArtistService {

    @Autowired
    private ArtistRepository artistRepository;

    @Override
    public List<Artist> findAll() {
        return artistRepository.findAll();
    }

    @Override
    public Artist findById(Long id) {
        return artistRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Artist not found with id: " + id));
    }

    @Override
    public Artist save(Artist artist) {
        return artistRepository.save(artist);
    }

    @Override
    public Artist update(Long id, Artist artist) {
        Optional<Artist> existingArtist = artistRepository.findById(id);

        if (existingArtist.isPresent()) {
            artist.setId(id);
            return artistRepository.save(artist);
        } else {
            throw new EntityNotFoundException("Artist not found with id: " + id);
        }
    }

    @Override
    public void deleteById(Long id) {
        if (artistRepository.existsById(id)) {
            artistRepository.deleteById(id);
        } else {
            throw new EntityNotFoundException("Artist not found with id: " + id);
        }
    }
}