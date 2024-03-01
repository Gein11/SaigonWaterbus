package Nhom5_ASMGD1.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import Nhom5_ASMGD1.Model.Tau;

@Repository
public interface TauDAO extends JpaRepository<Tau, Long> {
    @Query(value = "SELECT * FROM Tau t WHERE t.status = 'true'", nativeQuery = true)
    List<Tau> findByTauStatus();
    @Query("SELECT t FROM Tau t WHERE  t.bienSoTau LIKE %:keyword%")
    List<Tau> searchByKeyword(String keyword);

}

