package org.studying.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.studying.entity.TaxRate;

@Repository
public interface TaxRateRepository extends CrudRepository<TaxRate, Long> {
}
