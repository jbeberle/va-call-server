package va.gov.claimserver.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import va.gov.claimserver.model.VetCallEntity;

@Repository
public interface VetCallRepository extends CrudRepository<VetCallEntity, Long> {
}
