package Nhom5_ASMGD1.Model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table (name = "TaiXe")
public class TaiXe {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String hoTen;
	String soDT;
	String diaChi;
	Boolean status;
	@OneToMany (mappedBy = "taiXe")
	List<Chuyen> listChuyen;
}
