package Nhom5_ASMGD1.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import Nhom5_ASMGD1.DAO.ChuyenDAO;
import Nhom5_ASMGD1.DAO.VeDAO;
import Nhom5_ASMGD1.Model.Chuyen;
import Nhom5_ASMGD1.Model.Ve;

@Service
@EnableScheduling
public class ChuyenServiceAutoUpdateTime {
	@Autowired
	ChuyenDAO chuyenDao;
	@Autowired
	VeDAO veDao;

	@Scheduled(cron = "*/15 * * * * *")
	public void autoupdateDate() {
		LocalDate dateNow = LocalDate.now();
		System.out.println("Thời gian hiện tại: " + dateNow);
		LocalDate oldDate = chuyenDao.findOldate();

		if (oldDate != null && ChronoUnit.DAYS.between(oldDate, dateNow) == 1) {
			List<Chuyen> chuyenList = chuyenDao.findChuyenByDate(oldDate);
			for (Chuyen chuyen : chuyenList) {
				LocalDate newStartDate = chuyen.getNgayKhoiHanh().plusDays(3);
				chuyen.setNgayKhoiHanh(newStartDate);
				List<Ve> listVe = veDao.findByChuyenId(chuyen.getId());
				for (Ve ve : listVe) {
					ve.setStatus(false);
					ve.setHoaDon(null);
					veDao.save(ve);
				}
			}
			chuyenDao.saveAll(chuyenList);
		}
	}

	@Scheduled(fixedRate = 15000) // Chạy mỗi phút

	public void updateChuyenDi() {
		System.out.println("ngày hôm nay" + LocalDate.now());

		List<Chuyen> listChuyen = chuyenDao.findChuyenByDate(LocalDate.now());
		LocalDate dateNow = LocalDate.now();
		LocalTime gioNow = LocalTime.now();

		for (Chuyen chuyen : listChuyen) {
			LocalTime gioDi = LocalTime.parse(chuyen.getGioDi(), DateTimeFormatter.ofPattern("HH:mm"));
			LocalDateTime gioDiToday = LocalDateTime.of(dateNow, gioDi);

			if (chuyen.getNgayKhoiHanh().equals(dateNow)) {
				// Kiểm tra nếu giờ khởi hành đã trôi qua
				if (gioDiToday.isBefore(LocalDateTime.now())) {
					chuyen.setStatus(true);
					System.out.println("đã update status");
					chuyenDao.save(chuyen);
				}
			}
			// Kiểm tra nếu đến hết ngày thì cập nhật ngày khởi hành

			// kiểm tra update vé sau kh 10p
			if (chuyen.getNgayKhoiHanh().equals(dateNow)) {

				if (gioDiToday.plusMinutes(10).isBefore(LocalDateTime.now())) {
					List<Ve> listVe = veDao.findByChuyenId(chuyen.getId());
					for (Ve ve : listVe) {
						ve.setStatus(true);
						veDao.save(ve);
					}
					System.out.println("đã update vé");
				}
			}
		}
	}
}