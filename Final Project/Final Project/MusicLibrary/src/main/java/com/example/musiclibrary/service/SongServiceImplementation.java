package com.example.musiclibrary.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.musiclibrary.entity.Song;
import com.example.musiclibrary.repository.SongRepository;

@Service
public class SongServiceImplementation implements SongService {

    @Autowired
    private SongRepository songRepository;

    @Override
    public List<Song> findAll() {
        return songRepository.findAll();
    }

    @Override
    public Song findById(Long id) {
        return songRepository.findById(id).orElseThrow(() -> new RuntimeException("Song not found with id: " + id));
    }

    @Override
    public Song save(Song song) {
        return songRepository.save(song);
    }

    @Override
    public Song update(Long id, Song updatedSong) {
        Song existingSong = findById(id);
        existingSong.setTitle(updatedSong.getTitle());
        existingSong.setArtist(updatedSong.getArtist());
        existingSong.setAlbum(updatedSong.getAlbum());
        return songRepository.save(existingSong);
    }

    @Override
    public void deleteById(Long id) {
        songRepository.deleteById(id);
    }
}
