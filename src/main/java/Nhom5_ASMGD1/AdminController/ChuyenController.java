package Nhom5_ASMGD1.AdminController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import Nhom5_ASMGD1.DAO.ChuyenDAO;
import Nhom5_ASMGD1.DAO.TuyenDAO;
import Nhom5_ASMGD1.DAO.VeDAO;
import Nhom5_ASMGD1.Model.Chuyen;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ChuyenController {
	@Autowired
	TuyenDAO tuyenDao;
	
	@Autowired
	ChuyenDAO chuyenDao;
	
	@Autowired
	VeDAO veDao;
	
	@RequestMapping("/add-trip")
	public String addTrip(Chuyen chuyen) {
		String annouce = "Create trip success!";
		chuyenDao.save(chuyen);
		return "redirect:/tool/trip?annouce="+annouce;
	}
	
	@PostMapping("/update-trip")
	public String updateTrip(Model model, @ModelAttribute Chuyen chuyen) {
		//TODO: process POST request
		System.out.println("chuyen id: " + chuyen.getId());
		if (chuyenDao.existsById(chuyen.getId())) {
			String annouce = "Update trip success!";
			chuyenDao.save(chuyen);
			return "redirect:/tool/trip?annouce="+annouce;
		} else {
			throw new RuntimeException("Không tồn tại chuyến có id: " + chuyen.getId());
		}
	}
	
	@PostMapping("/create-ticket")
	public String createTicket(Model model, @ModelAttribute Chuyen chuyen, @RequestParam("giaVe") String giaVe) {
		Long idChuyen = chuyen.getId();
		Double gia_ve = Double.parseDouble(giaVe);
		if (gia_ve < 0) {
	        // Xử lý khi giá vé là số âm (ví dụ: trả về trang lỗi)
	        // Ví dụ:
	        String annouce = "Price ticket must be integer!";
			return "redirect:/tool/trip?annouce="+annouce;

	    } else {
			veDao.taoVeTuDong(idChuyen, gia_ve);
			String annouce = "Create all tickets success!";
			return "redirect:/tool/trip?annouce="+annouce;

	    }
		
	}
	
}
