package Nhom5_ASMGD1.ctrl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import Nhom5_ASMGD1.DAO.ChuyenDAO;
import Nhom5_ASMGD1.DAO.UserDao;
import Nhom5_ASMGD1.DAO.VeDAO;
import Nhom5_ASMGD1.Model.Chuyen;
import Nhom5_ASMGD1.Model.Role;
import jakarta.servlet.http.HttpSession;

@Controller
public class HoaDonThanhToanController {
	@Autowired
	ChuyenDAO chuyenDao;

	@Autowired
	VeDAO veDao;
	@Autowired
	HttpSession sessionHoaDon;
	@Autowired
	UserDao userDao;

	@RequestMapping("/dat-ve")
	public String getView(Model model, @RequestParam("idChuyen") String idChuyen,
			@RequestParam("selectedSeats") List<String> selectedSeats) {
		List<String> validSelectedSeats = new ArrayList<>();
		
		for (String ve : selectedSeats) {
			var status = veDao.findStatusVeByGhe(Long.parseLong(idChuyen),ve);
			if (status != null && !status) {
				validSelectedSeats.add(ve);
			}
		}
		double giaVe;
		if (idChuyen != null && !idChuyen.isEmpty()) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

			Long idC = Long.parseLong(idChuyen);
			Chuyen chuyen = chuyenDao.getById(idC);
			model.addAttribute("tenChuyen", chuyen.getTuyen().getTenTuyen());
			model.addAttribute("benDi", chuyen.getTuyen().getBenDi());
			model.addAttribute("benDen", chuyen.getTuyen().getBenDen());
			model.addAttribute("benDung", chuyen.getTuyen().getBenDung());
			model.addAttribute("ngayKH", chuyen.getNgayKhoiHanh());
			model.addAttribute("gioDi", chuyen.getGioDi());
			model.addAttribute("soLuongGhe", validSelectedSeats.size());
			
			sessionHoaDon.setAttribute("tenChuyen", chuyen.getTuyen().getTenTuyen());
			sessionHoaDon.setAttribute("benDi", chuyen.getTuyen().getBenDen());
			sessionHoaDon.setAttribute("benDung", chuyen.getTuyen().getBenDung());
			sessionHoaDon.setAttribute("ngayKH", chuyen.getNgayKhoiHanh());
			sessionHoaDon.setAttribute("gioDi", chuyen.getGioDi());
			sessionHoaDon.setAttribute("soLuongGhe", validSelectedSeats.size());

			sessionHoaDon.setAttribute("idChuyen", idC);

			String tenGhe = validSelectedSeats.stream().collect(Collectors.joining(","));
			model.addAttribute("tenGhe", tenGhe);

			sessionHoaDon.setAttribute("tenGhe", tenGhe);

			if (authentication != null && authentication.getAuthorities().equals(Role.USER)) {
				if (userDao.findByEmail(authentication.getName()) != null){
					model.addAttribute("emailThanhToan", authentication.getName());
					sessionHoaDon.setAttribute("user", userDao.findByEmail(authentication.getName()));
				}
			} else {

				model.addAttribute("emailThanhToan", "Vui lòng điền vào email nhận hoá đơn, để giữ thông tin vé");
				sessionHoaDon.setAttribute("user", null);

			}

			if (!selectedSeats.isEmpty()) {
				model.addAttribute("donGia", "15.000 VND/vé");

				model.addAttribute("tongTien", (15000 * validSelectedSeats.size()));
				sessionHoaDon.setAttribute("tongTien", (15000 * validSelectedSeats.size()));

			}

		}

		model.addAttribute("view", "/WEB-INF/views/user/hoadon.jsp");
		return "user/index";
	}

}
