package org.studying.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.studying.entity.BoundaryTolerance;

@Repository
public interface BoundaryToleranceRepository extends CrudRepository<BoundaryTolerance, Long> {
}
