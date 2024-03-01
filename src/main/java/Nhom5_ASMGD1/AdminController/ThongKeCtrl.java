package Nhom5_ASMGD1.AdminController;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Nhom5_ASMGD1.DAO.HoaDonDAO;


@Controller

public class ThongKeCtrl {
	
	@Autowired
	HoaDonDAO HoaDonDao;
	
	@GetMapping("/tool/thongke")
	public String thonKeTuanTheoNgayChon(Model model, @RequestParam(required = false)String date) {
	    if (date != null) {


	        List<Object[]> list1 = HoaDonDao.findHoaDonByDateChose(date);
	        model.addAttribute("listThongKe", list1);
	    } else {
	        List<Object[]> list1 = HoaDonDao.findHoaDonByDate();
	        model.addAttribute("listThongKe", list1);
	    }
	    model.addAttribute("totalDate", HoaDonDao.findTotalPrice());
	    model.addAttribute("viewad", "/WEB-INF/views/admin/thongke.jsp");
	    return "admin/home";
	}

	
	
	
}
