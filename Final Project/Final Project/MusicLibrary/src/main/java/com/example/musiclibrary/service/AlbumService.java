package com.example.musiclibrary.service;

import com.example.musiclibrary.entity.Album;
import java.util.List;

public interface AlbumService {

    List<Album> findAll();

    Album findById(Long id);

    Album save(Album artist);

    Album update(Long id, Album artist);

    void deleteById(Long id);
}
