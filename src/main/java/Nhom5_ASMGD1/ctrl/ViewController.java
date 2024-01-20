package Nhom5_ASMGD1.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;




@Controller
public class ViewController {
	
	@GetMapping ("/saigonwaterbus")
	public String getIndex(Model model) {
		model.addAttribute("view", "/WEB-INF/views/user/trangchu.jsp");
		return "/user/index";
	}
	
	@GetMapping("/saigonwaterbus/{path}")
    public String getView(@PathVariable("path") String pathName, Model model) {
		if ("ga-tau-thuy-bach-dang".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		} else if ("ga-tau-thuy-binh-an".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		} else if ("ga-tau-thuy-thanh-da".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		} else if ("ga-tau-thuy-hiep-binh-chanh".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		}
		else if ("ga-tau-thuy-linh-dong".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		}
		else if ("lich-khoi-hanh".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		}
		else if ("tim-ve".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		}
		else if ("kiem-tra-ve".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/kiemtrave.jsp");
		}
		else if ("lien-he".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/lienhe.jsp");
		}
		else {
			return "/user/index";
		}
		return "/user/index";
//        String requestURI = request.getRequestURI();
//        System.out.println(requestURI);
//		model.addAttribute("view", "/WEB-INF/views/user/trangchu.jsp");
//		if (requestURI.contains("/ga-tau-thuy-bach-dang")) {
//            model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
//        }else if (requestURI.contains("/ga-tau-thuy-binh-an")) {
//            model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
//        } else if (requestURI.contains("/ga-tau-thuy-thanh-da")) {
//            model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
//        }else if (requestURI.contains("/ga-tau-thuy-hiep-binh-chanh")) {
//            model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
//        }else if (requestURI.contains("/ga-tau-thuy-linh-dong")) {
//            model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
//        } else if (requestURI.contains("/lich-khoi-hanh")) {
//            model.addAttribute("view", "/WEB-INF/views/user/lich.jsp");
//        } else if (requestURI.contains("/tim-ve")) {
//            model.addAttribute("view", "/WEB-INF/views/user/datve.jsp");
//        } else if (requestURI.contains("/kiem-tra-ve")) {
//            model.addAttribute("view", "/WEB-INF/views/user/kiemtrave.jsp");
//        } else if (requestURI.contains("/lien-he")) {
//            model.addAttribute("view", "/WEB-INF/views/user/lienhe.jsp");
//        } else {
//            model.addAttribute("view", "/WEB-INF/views/user/trangchu.jsp");
//        }
//        return "/user/index";
	}
}
	

