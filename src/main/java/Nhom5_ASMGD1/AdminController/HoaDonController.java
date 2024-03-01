package Nhom5_ASMGD1.AdminController;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Nhom5_ASMGD1.DAO.ChuyenDAO;
import Nhom5_ASMGD1.DAO.HoaDonDAO;
import Nhom5_ASMGD1.DAO.UserDao;
import Nhom5_ASMGD1.DAO.VeDAO;
import Nhom5_ASMGD1.Model.Chuyen;
import Nhom5_ASMGD1.Model.HoaDon;
import Nhom5_ASMGD1.Model.Ve;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@Controller
public class HoaDonController {
	@Autowired
	HoaDonDAO hoaDonDao;
	@Autowired
	HttpSession sessionHoaDon;
	@Autowired
	ChuyenDAO chuyenDao;
	@Autowired
	UserDao userDao;
	
	@PostMapping("/add-HoaDon")
	public String addDriver(HoaDon hoaDon, HttpServletRequest request, HttpServletResponse response) throws IOException {
		//TODO: process POST request
		String annouce = "Create HoaDon success!";
		hoaDonDao.save(hoaDon); 
		return "redirect:/tool/HoaDon?annouce="+annouce;
	}
	
	@PostMapping("/update-HoaDon")
	public String updateDriver(Model model, @ModelAttribute HoaDon hoaDon) {
		//TODO: process POST request
		System.out.println("hoa don id: " + hoaDon.getId());
		if (hoaDonDao.existsById(hoaDon.getId())) {
			String annouce = "Update HoaDon success!";
			hoaDonDao.save(hoaDon); 
			return "redirect:/tool/HoaDon?annouce="+annouce;
		} else {
			throw new RuntimeException("Không tồn tại hóa đơn có id: " + hoaDon.getId());
		}
	}
	
	@PostMapping("/delete-HoaDon")
	public String deleteDriver(Model model, @ModelAttribute HoaDon hoaDon) {
		//TODO: process POST request
		System.out.println("hoa don id delete: " + hoaDon.getId());
		if (hoaDonDao.existsById(hoaDon.getId())) {
			String annouce = "Delete HoaDon success!";
			hoaDon.setStatus(false);
			hoaDonDao.save(hoaDon); 
			return "redirect:/tool/HoaDon?annouce="+annouce;
		} else {
			throw new RuntimeException("Không tồn tại hóa đơn có id: " + hoaDon.getId());
		}
	}
	
	@PostMapping ("/create-offline-ticket")
	public String taoVeOffline (
			@RequestParam("soLuong") String soLuong,
			@RequestParam("donGia") String donGia,
			@RequestParam("editidChuyen") String id) {
		String annouce="";
		if (id!= null && soLuong != null && donGia!=null) {
			Long idChuyen = Long.parseLong(id);
			LocalDate ngay_tao = LocalDate.now();
			int so_luong = Integer.parseInt(soLuong);
			double don_gia = Double.parseDouble(donGia);
			double thanhTien = don_gia*so_luong;
			HoaDon hd = new HoaDon(null,null, so_luong, null, thanhTien, ngay_tao, null, null);
			hoaDonDao.save(hd);
			annouce = "Create HoaDon success!";
			Chuyen chuyen = chuyenDao.getById(idChuyen);
			chuyen.setGheTrong(chuyen.getGheTrong() - so_luong);
			chuyenDao.save(chuyen);
		}
		return "redirect:/tool/trip?annouce= "+annouce;
	}
	
}
