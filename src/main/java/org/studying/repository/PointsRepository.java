package org.studying.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.studying.entity.Points;

@Repository
public interface PointsRepository extends CrudRepository<Points, Long> {
}
