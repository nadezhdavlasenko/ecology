package org.studying.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.studying.entity.PollutingFacility;

@Repository
public interface PollutingFacilityRepository extends CrudRepository<PollutingFacility, Long>{
}