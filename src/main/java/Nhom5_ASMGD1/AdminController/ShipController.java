package Nhom5_ASMGD1.AdminController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import Nhom5_ASMGD1.DAO.TauDAO;
import Nhom5_ASMGD1.Model.Tau;
@Controller
public class ShipController {
	
	@Autowired
	private TauDAO daoTau;

		List<Tau> listTau;

	@PostMapping("/addShip")
	public String addTau(Model model,Tau tau ) {
		String tt="Done";
		try {
			daoTau.save(tau);
		} catch (Exception e) {
		 tt="Fail";
		}
		return "redirect:/tool/toolship?tt="+tt;
	}
	@PostMapping("/search")
	public String timTau(Model model, @RequestParam Optional<String> keyword) {
	    String tt = "Done";
	    try {

	    	listTau=daoTau.searchByKeyword(keyword.get());
	       model.addAttribute("listTau",listTau);
	    } catch (Exception e) {
	    	e.printStackTrace();
	        tt = "Fail";
	    }
	    
	    return "redirect:/tool/toolship?tt=" + tt+"&keyword="+keyword.get();
	}
	
	@PostMapping("/deleteship/{id}")	
	public String xoaTau(Model model,Tau tau ,@PathVariable Long id) {
		String tt="Done";
		try {
			Optional<Tau> tau1= daoTau.findById(id);
			tau1.get().setStatus(false);
			daoTau.save(tau1.get());
		} catch (Exception e) {
		 tt="Fail";
		}
		return "redirect:/tool/toolship?tt="+tt;

	}
	
	
	@PostMapping("/editship/{id}")	
	public String suaTau(Model model,@ModelAttribute Tau tau ,@PathVariable Long id) {
		String tt="Done";
		try {
			if(daoTau.existsById(id)) {
				System.out.println(tau.getSoLuongGhe()+"sl ge la");
				daoTau.save(tau);

			}else {		
				tt="Fail";
}
		} catch (Exception e) {
			 tt="Fail";

		}
		return "redirect:/tool/toolship?tt="+tt;

	}

	
}
