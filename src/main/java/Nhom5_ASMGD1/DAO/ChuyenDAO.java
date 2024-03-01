package Nhom5_ASMGD1.DAO;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import Nhom5_ASMGD1.Model.Chuyen;

public interface ChuyenDAO extends JpaRepository<Chuyen, Long>{
	@Query(value = "select c.* from chuyen c inner JOIN tuyen t on c.id_tuyen = t.id where c.ngay_khoi_hanh = ?1 and t.ben_di like %?2% and t.ben_dung like %?3%", nativeQuery = true)
	List<Chuyen> findChuyen(LocalDate ngayKhoiHanh, String benDi, String benDung);
	@Query(value = "SELECT TOP 1 ngay_khoi_hanh FROM Chuyen ORDER BY ngay_khoi_hanh", nativeQuery = true)
	LocalDate findOldate();
	
	@Query(value = "select c from Chuyen c where c.ngayKhoiHanh = ?1")
	List<Chuyen> findChuyenByDate(LocalDate ngayKhoiHanh);

	@Query(value = "select c from Chuyen c where c.id = ?1")
	Chuyen findChuyenById(Long id);
}
