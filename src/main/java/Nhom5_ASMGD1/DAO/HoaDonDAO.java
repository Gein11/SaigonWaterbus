package Nhom5_ASMGD1.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import Nhom5_ASMGD1.Model.HoaDon;
import Nhom5_ASMGD1.Model.User;

public interface HoaDonDAO extends JpaRepository<HoaDon, Long> {
	@Query("SELECT o FROM HoaDon o WHERE o.status = true")
	List<HoaDon> findAllByStatusTrue();

	@org.springframework.data.jpa.repository.Query(value = "SELECT * FROM hoa_don WHERE ten_ghe LIKE %?1% OR id_account LIKE ?1", nativeQuery = true)
	List<HoaDon> findBytenGheOridAccount(String keyword);

	@Query(value = "SELECT * FROM hoa_don WHERE id = ?1", nativeQuery = true)
	Optional<HoaDon> findById(Long id);

	@Query(value = "SELECT ngay_tao, SUM(thanh_tien) AS tong_tien \r\n" + "FROM hoa_don \r\n"
			+ "WHERE DATEPART(ISO_WEEK, ngay_tao) = DATEPART(ISO_WEEK, GETDATE())\r\n"
			+ "      AND DATEPART(YEAR, ngay_tao) = DATEPART(YEAR, GETDATE())\r\n"
			+ "GROUP BY ngay_tao;", nativeQuery = true)
	List<Object[]> findHoaDonByDate();

	@Query(value = "SELECT CAST(all_dates.ngay_tao AS DATE) AS ngay_tao, COALESCE(SUM(hoa_don.thanh_tien), 0) AS tong_tien\r\n"
			+ "FROM (\r\n"
			+ "    SELECT DATEADD(DAY, number, DATEADD(WEEK, DATEDIFF(WEEK, 0, :currentDate), 0)) AS ngay_tao\r\n"
			+ "    FROM master.dbo.spt_values\r\n" + "    WHERE type = 'P' AND number BETWEEN 0 AND 6\r\n"
			+ ") AS all_dates\r\n"
			+ "LEFT JOIN hoa_don ON CAST(hoa_don.ngay_tao AS DATE) = CAST(all_dates.ngay_tao AS DATE)\r\n"
			+ "GROUP BY CAST(all_dates.ngay_tao AS DATE)" + "", nativeQuery = true)
	List<Object[]> findHoaDonByDateChose(@Param("currentDate") String currentDate);

	@Query("SELECT SUM(hd.thanhTien) FROM HoaDon hd WHERE CAST(hd.ngayTao AS date) = CURRENT_DATE")
	Integer findTotalPrice();

	List<HoaDon> findByUser(User user);
}
