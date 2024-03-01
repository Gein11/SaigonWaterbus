package Nhom5_ASMGD1.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import Nhom5_ASMGD1.Model.Tuyen;
@Repository
public interface TuyenDAO extends JpaRepository<Tuyen, String>{
    @Query("SELECT t FROM Tuyen t WHERE  t.tenTuyen LIKE %:keyword%")
    List<Tuyen> searchByTenTuyen(String keyword);
}
