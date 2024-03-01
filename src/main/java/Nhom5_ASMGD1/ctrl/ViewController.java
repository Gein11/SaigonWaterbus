package Nhom5_ASMGD1.ctrl;

import java.time.LocalDate;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import Nhom5_ASMGD1.DAO.ChuyenDAO;
import Nhom5_ASMGD1.DAO.HoaDonDAO;
import Nhom5_ASMGD1.DAO.UserDao;
import Nhom5_ASMGD1.DAO.VeDAO;
import Nhom5_ASMGD1.Model.Chuyen;
import Nhom5_ASMGD1.Model.HoaDon;
import Nhom5_ASMGD1.Model.Ve;

@Controller
public class ViewController {
	@Autowired
	VeDAO veDao;
	@Autowired
	UserDao userDao;
	@Autowired
	ChuyenDAO chuyenDao;
	
	@Autowired
	HoaDonDAO HoaDonDao;
	@GetMapping ("/saigonwaterbus")
	public String getIndex(Model model) {
		model.addAttribute("view", "/WEB-INF/views/user/trangchu.jsp");
		return "user/index";
	}
	
	@GetMapping("/saigonwaterbus/{path}")
    public String getView(@PathVariable("path") String pathName, Model model,
    		@ModelAttribute("ve") Ve ve, 
    		@RequestParam(value = "benDi", required = false) String benDi,
    		@RequestParam(value = "benDen", required = false) String benDen,
    		@RequestParam(value = "benDung", required = false) String benDung,
    		@RequestParam(value = "ngayKhoiHanh", required = false) String ngayKhoiHanh,
    		@RequestParam(value = "editidChuyen", required = false) String idChuyen
    		) {
		if ("ga-tau-thuy-bach-dang".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		} else if ("ga-tau-thuy-binh-an".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		}
		else if("profile".equals(pathName)){
			model.addAttribute("view", "/WEB-INF/views/user/profile.jsp");
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			if (authentication != null && authentication.isAuthenticated()) {
				model.addAttribute("user",userDao.findByEmail( authentication.getName()));	   
			}
		}
		else if ("lichsudatve".equals(pathName)) {
			System.out.println("ditmemazy");
		    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();	
		    List<HoaDon> listVeDaDat=HoaDonDao.findByUser(userDao.findByEmail(authentication.getName()));
		    Collections.sort(listVeDaDat, new Comparator<HoaDon>() {
		        public int compare(HoaDon hoaDon1, HoaDon hoaDon2) {
		            return hoaDon1.getNgayTao().compareTo(hoaDon2.getNgayTao());
		        }
		    });
			model.addAttribute("listVeDaDat",listVeDaDat);
			model.addAttribute("view", "/WEB-INF/views/user/lichsudatve.jsp");
		}
		else if ("ga-tau-thuy-thanh-da".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		} else if ("ga-tau-thuy-hiep-binh-chanh".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		}

		else if ("ga-tau-thuy-linh-dong".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/ga.jsp");
		}
		else if ("lich-khoi-hanh".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/lich.jsp");
		}
		else if ("tim-ve".equals(pathName)) {
			LocalDate ngayKH;
			List<Chuyen> listChuyen;
			if (ngayKhoiHanh != null && !ngayKhoiHanh.isEmpty()) {
			    ngayKH = LocalDate.parse(ngayKhoiHanh);
			    System.out.println("ngày kh: " + ngayKH);
			    listChuyen = chuyenDao.findChuyen(ngayKH,benDi,benDen);
			    System.out.println(listChuyen.size() + "size list");
			    model.addAttribute("ngayKH", ngayKH);
			} else {
				listChuyen = null;
				System.out.println("ngày kh: " + ngayKhoiHanh);
			}
			model.addAttribute("listChuyen", listChuyen);
			model.addAttribute("benDi", benDi);
			model.addAttribute("benDen", benDen);
			
			model.addAttribute("view", "/WEB-INF/views/user/datve.jsp");
		}
		else if ("kiem-tra-ve".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/kiemtrave.jsp");
		}
		else if ("lien-he".equals(pathName)) {
			model.addAttribute("view", "/WEB-INF/views/user/lienhe.jsp");
		}
		else {
			return "user/index";
		}
		return "user/index";
	}
}
	

