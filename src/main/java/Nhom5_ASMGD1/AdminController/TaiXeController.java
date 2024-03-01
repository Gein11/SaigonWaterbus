package Nhom5_ASMGD1.AdminController;

import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import Nhom5_ASMGD1.DAO.TaiXeDAO;
import Nhom5_ASMGD1.Model.TaiXe;




@Controller
public class TaiXeController {
	@Autowired
	TaiXeDAO taiXeDao;

	
	@PostMapping("/add-driver")
	public String addDriver(TaiXe taiXe) throws IOException {
		//TODO: process POST request
		String annouce = "Create driver success!";
		taiXeDao.save(taiXe); 
		return "redirect:/tool/driver?annouce="+annouce;
	}
	
	@RequestMapping("/tool/driver/{id}")
	public String requestMethodName(Model model, @PathVariable("id") Long id) {
		TaiXe taiXe = taiXeDao.findById(id).get();
		model.addAttribute("taiXe", taiXe);
		return "forward:/tool/driver/id=" + id;
	}
	
	@PostMapping("/update-driver")
	public String updateDriver(Model model, @ModelAttribute TaiXe taiXe) {
		//TODO: process POST request
		System.out.println("tai xe id: " + taiXe.getId());
		if (taiXeDao.existsById(taiXe.getId())) {
			String annouce = "Update driver success!";
			taiXeDao.save(taiXe); 
			return "redirect:/tool/driver?annouce="+annouce;
		} else {
			throw new RuntimeException("Không tồn tại tài xế có id: " + taiXe.getId());
		}
	}
	
	@PostMapping("/delete-driver")
	public String deleteDriver(Model model, @ModelAttribute TaiXe taiXe) {
		//TODO: process POST request
		System.out.println("tai xe id delete: " + taiXe.getId());
		if (taiXeDao.existsById(taiXe.getId())) {
			String annouce = "Delete driver success!";
			taiXe.setStatus(false);
			taiXeDao.save(taiXe); 
			return "redirect:/tool/driver?annouce="+annouce;
		} else {
			throw new RuntimeException("Không tồn tại tài xế có id: " + taiXe.getId());
		}
	}
	
}
