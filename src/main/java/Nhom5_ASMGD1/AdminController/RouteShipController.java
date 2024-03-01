package Nhom5_ASMGD1.AdminController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Nhom5_ASMGD1.DAO.TuyenDAO;
import Nhom5_ASMGD1.Model.Tau;
import Nhom5_ASMGD1.Model.Tuyen;

@Controller
public class RouteShipController {
	@Autowired
	TuyenDAO daoTuyen;

	@PostMapping("/addRoute")
	public String addTau(Model model, @ModelAttribute Tuyen tuyen) {
		String tt = "Done";
		System.out.println(tuyen.getTau().getId().toString());
		System.out.println(tuyen.getBenDung());

		try {
			daoTuyen.save(tuyen);
		} catch (Exception e) {
			e.printStackTrace();

			tt = "Fail";
		}
		return "redirect:/tool/routeship?tt=" + tt;
	}

	@PostMapping("/deleteroute/{id}")
	public String xoaTuyen(Model model, Tuyen tuyen, @PathVariable String id) {
		String tt = "Done";
		try {
			Optional<Tuyen> tuyenDelete = daoTuyen.findById(id);
			tuyenDelete.get().setStatus(false);
			daoTuyen.save(tuyenDelete.get());
		} catch (Exception e) {
			tt = "Fail";
		}
		return "redirect:/tool/routeship?tt=" + tt;

	}
	@PostMapping("/searchroute")
	public String timTau(Model model, @RequestParam Optional<String> keyword) {
	    String tt = "Done";
	    try {
	     List<Tuyen>   listTuyen = daoTuyen.searchByTenTuyen(keyword.get());
	        model.addAttribute("listTuyen", listTuyen);
	    } catch (Exception e) {
	        e.printStackTrace();
	        tt = "Fail";
	    }
	    String key1= keyword.get();
	    return "redirect:/tool/toolship?tt=" + tt + "&keyword=" + (key1 != null ? key1 : "");
	}

	
	
	@PostMapping("/editroute/{id}")
	public String suaTuyen(Model model, @ModelAttribute Tuyen tuyen, @PathVariable String id) {
		String tt = "Done";
		try {
			if (daoTuyen.existsById(id) ){
				daoTuyen.save(tuyen);

			} else {
				tt = "Fail";
			}
		} catch (Exception e) {
			tt = "Fail";

		}
		return "redirect:/tool/routeship?tt=" + tt;

	}

}
