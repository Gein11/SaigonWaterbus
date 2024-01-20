package Nhom5_ASMGD1.AdminController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class controller {
	@GetMapping("/index")
	public String index(Model model) {
		model.addAttribute("viewad", "/WEB-INF/views/admin/banner.jsp");
		return "/admin/home";
	}
	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("viewad", "/WEB-INF/views/admin/banner.jsp");
		return "/admin/login";
	}

	@GetMapping("/tool/{toolName}")
	public String yourHandlerMethod(@PathVariable String toolName, Model model) {
		if ("tools".equals(toolName)) {
			model.addAttribute("viewad", "/WEB-INF/views/admin/tools.jsp");
		} else if ("add".equals(toolName)) {
			model.addAttribute("viewad", "/WEB-INF/views/admin/addticket.jsp");
		} else if ("update".equals(toolName)) {
			model.addAttribute("viewad", "/WEB-INF/views/admin/update.jsp");
		} else if ("index1".equals(toolName)) {
			model.addAttribute("viewad", "/WEB-INF/views/admin/home.jsp");
		} else if ("delete".equals(toolName)) {
			model.addAttribute("viewad", "/WEB-INF/views/admin/delete.jsp");
		}
		//tuyến tàu
		else if ("addroute".equals(toolName)) {
			model.addAttribute("viewad", "/WEB-INF/views/admin/ShipRoutes/AddRoutes.jsp");
		
	} else if ("delete".equals(toolName)) {
		model.addAttribute("viewad", "/WEB-INF/views/admin/delete.jsp");
	}
		else {
			return "/admin/home";
		}
		return "/admin/home";
	}
	
//	@GetMapping("/routes/{toolName}")
//	public String routesShip(@PathVariable String toolName, Model model) {
//		if ("tools".equals(toolName)) {
//			model.addAttribute("viewad", "/WEB-INF/views/admin/ShipRoutes/AddRoutes.jsp");
//		} else if ("add".equals(toolName)) {
//			model.addAttribute("viewad", "/WEB-INF/views/admin/addticket.jsp");
//		}
//		else {
//			return "/admin/home";
//		}
//		return "/admin/home";
//	}
}