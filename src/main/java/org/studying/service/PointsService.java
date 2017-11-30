package org.studying.service;

import org.studying.entity.Points;

import java.util.List;

public interface PointsService {
    List<Points> getAllPlaces();
    Points getById(Long id);

    Points save(Points place);
    Points save(String name, Double latitude, Double longitude);
    Points save(Long id, String name, Double latitude, Double longitude);
    void delete(Points place);
}
