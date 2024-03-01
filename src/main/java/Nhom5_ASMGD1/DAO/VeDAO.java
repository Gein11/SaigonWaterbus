package Nhom5_ASMGD1.DAO;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;

import Nhom5_ASMGD1.Model.Ve;

public interface VeDAO extends JpaRepository<Ve, Long>{
	@Procedure("sp_InsertVeTheoSoLuongGhe")
	void taoVeTuDong(@Param("id_chuyen") Long id, @Param("gia_ve") Double giaVe);
	
	@Query("SELECT o FROM Ve o WHERE o.status = false")
	List<Ve> findAllByStatusFalse();

    @org.springframework.data.jpa.repository.Query(value = "SELECT * FROM Ve  WHERE ten_ghe LIKE %?1% OR id LIKE ?1", nativeQuery = true)
    List<Ve> findBytenGheOrid(String keyword);
    
    @Query ("Select o from Ve o where o.chuyen.id = ?1")
    List<Ve> findByChuyenId(Long idChuyen);
    
    @Query ("Select o from Ve o where o.chuyen.id = ?1 and o.tenGhe = ?2")
    Ve findByTenGheAndId(Long idChuyen, String tenGhe);
    
    @Query("SELECT v.status FROM Ve v WHERE v.chuyen.id = ?1 and v.tenGhe = ?2")
    Boolean findStatusVeByGhe(Long idChuyen, String tenGhe);
//
//	Ve  findByTenGhe(String tenGhe);
//	@Query(value = "SELECT * FROM chuyen WHERE id = :chuyenId AND ten_tenGhe = :tenGhe", nativeQuery = true)
//    Ve findChuyenByChuyenIdAndTenTenGhe(@Param("chuyenId") Long chuyenId, @Param("tenGhe") String tenGhe);
}
