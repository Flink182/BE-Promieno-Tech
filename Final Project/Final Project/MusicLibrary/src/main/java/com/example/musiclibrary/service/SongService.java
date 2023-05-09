package com.example.musiclibrary.service;

import java.util.List;
import com.example.musiclibrary.entity.Song;

public interface SongService {

    List<Song> findAll();

    Song findById(Long id);

    Song save(Song song);

    Song update(Long id, Song song);

    void deleteById(Long id);
}
